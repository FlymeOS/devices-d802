.class Lcom/android/nfc/LNfcService$LEnableDisableTask;
.super Lcom/android/nfc/NfcService$EnableDisableTask;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LEnableDisableTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    return-void
.end method


# virtual methods
.method bootInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 716
    const-string v1, "LNfcService"

    const-string v2, "bootInternal"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v1, "LNfcService"

    const-string v2, "checking on firmware download"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "airplane_override"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 720
    .local v0, "airplaneOverride":Z
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->setBootComplete()V

    .line 723
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "first_boot"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    const-string v1, "LNfcService"

    const-string v2, "First Boot"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "first_boot"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 726
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 730
    :cond_0
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    const-string v1, "LNfcService"

    const-string v2, "Factory Mode. Skip BootInternal"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_1
    :goto_0
    return-void

    .line 736
    :cond_2
    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v1, v3}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 737
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    .line 738
    :cond_3
    const-string v1, "LNfcService"

    const-string v2, "NFC is on. Doing normal stuff"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal()Z

    goto :goto_0

    .line 742
    :cond_4
    const-string v1, "LNfcService"

    const-string v2, "NFC is on. But Airplane mode enable"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 744
    invoke-virtual {p0, v3, v3}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 745
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 756
    :goto_1
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    const-string v1, "LNfcService"

    const-string v2, "[KR_SKT] NFC is off. mDeviceHost init /deinit"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->initialize()Z

    .line 759
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    goto :goto_0

    .line 748
    :cond_5
    const-string v1, "LNfcService"

    const-string v2, "NFC is off. Checking firmware version"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 750
    invoke-virtual {p0, v3, v3}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 751
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 752
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    goto :goto_1
.end method

.method varargs checkCurrentState([Ljava/lang/Integer;)Z
    .locals 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 661
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 672
    :pswitch_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 683
    :pswitch_1
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 694
    :pswitch_2
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    .line 705
    :pswitch_3
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 664
    :pswitch_4
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSysState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :pswitch_5
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCardState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :pswitch_6
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDiscoveryState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 697
    :pswitch_7
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mP2pState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 672
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 683
    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_6
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 694
    :pswitch_data_3
    .packed-switch 0x20
        :pswitch_7
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method checkSecureElementConfiguration()V
    .locals 0

    .prologue
    .line 707
    return-void
.end method

.method disableInternal()Z
    .locals 5

    .prologue
    const/16 v4, 0x29

    const/4 v3, 0x0

    .line 878
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 879
    const/4 v0, 0x1

    .line 900
    :goto_0
    return v0

    .line 882
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    .line 885
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/nfc/LNfcService;->mState:I

    .line 886
    invoke-super {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    move-result v0

    .line 888
    .local v0, "result":Z
    const-string v1, "LNfcService"

    const-string v2, "disableInternal"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setCardOn(Z)Z

    .line 891
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setDiscoveryOn(Z)Z

    .line 892
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setP2pOn(Z)Z

    .line 894
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 895
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 896
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 898
    invoke-virtual {p0, v4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 597
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 601
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 609
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->checkCurrentState([Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    :goto_0
    return-object v4

    .line 604
    :pswitch_1
    const-string v0, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from bad state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 622
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 656
    :goto_1
    :pswitch_2
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 624
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal()Z

    goto :goto_1

    .line 627
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    goto :goto_1

    .line 630
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->bootInternal()V

    goto :goto_1

    .line 633
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->downloadFirmware()V

    .line 635
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->bootInternal()V

    goto :goto_1

    .line 639
    :pswitch_7
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enablePowerSavingMode(Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 642
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableSavedSetting()V

    goto :goto_1

    .line 645
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    .line 646
    const/16 v0, 0x35

    invoke-static {v0}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    goto :goto_1

    .line 649
    :pswitch_a
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_3
    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    :goto_4
    invoke-virtual {p0, v2, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcPowerStatus(ZZ)V

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    .line 601
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 622
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method downloadFirmware()V
    .locals 2

    .prologue
    .line 937
    const-string v0, "LNfcService"

    const-string v1, "Dummy Firmware download!!! This Message MUST NOT be printed!!!"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v0, "LNfcService"

    const-string v1, "loading TASK_BOOT"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method enableCardEmulationManager()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->onNfcEnabled()V

    .line 714
    :cond_0
    return-void
.end method

.method enableInternal()Z
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(Z)Z

    move-result v0

    return v0
.end method

.method enableInternal(Z)Z
    .locals 4
    .param p1, "isApplyRoutingForce"    # Z

    .prologue
    .line 774
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v0

    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(ZZZZ)Z

    move-result v0

    return v0
.end method

.method enableInternal(ZZZZ)Z
    .locals 9
    .param p1, "isApplyRoutingForce"    # Z
    .param p2, "cardOn"    # Z
    .param p3, "discoveryOn"    # Z
    .param p4, "p2pOn"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 781
    const/4 v0, 0x0

    .line 782
    .local v0, "cardModeChange":Z
    const/4 v2, 0x0

    .line 783
    .local v2, "rwModeChange":Z
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 784
    const-string v6, "LNfcService"

    const-string v7, "enableInternal"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v0, 0x1

    .line 786
    const/4 v2, 0x1

    .line 787
    if-eqz p3, :cond_0

    .line 788
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 790
    :cond_0
    const/16 v6, 0x2a

    invoke-virtual {p0, v6}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    .line 792
    new-instance v3, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const-string v7, "enableInternal"

    const v8, 0x15f90

    invoke-direct {v3, v6, v7, v8}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 793
    .local v3, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 795
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 798
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->setPowerConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 802
    :try_start_1
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->initialize()Z

    move-result v6

    if-nez v6, :cond_1

    .line 803
    const-string v5, "LNfcService"

    const-string v6, "Error enabling NFC"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 805
    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :try_start_2
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 821
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 870
    .end local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :goto_0
    return v4

    .line 814
    .restart local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 818
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->setPowerConfig()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 821
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 824
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v6}, Lcom/android/nfc/LNfcService;->initSoundPool()V

    .line 826
    const/16 v6, 0x2b

    invoke-static {v6}, Lcom/android/nfc/LNfcVariable;->setSysState(I)V

    .line 830
    .end local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_2
    invoke-static {p2}, Lcom/android/nfc/LNfcVariable;->setCardOn(Z)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_9

    :cond_3
    move v0, v5

    .line 831
    :goto_1
    invoke-static {p3}, Lcom/android/nfc/LNfcVariable;->setDiscoveryOn(Z)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v2, :cond_a

    :cond_4
    move v2, v5

    .line 832
    :goto_2
    invoke-static {p4}, Lcom/android/nfc/LNfcVariable;->setP2pOn(Z)Z

    .line 834
    if-eqz v0, :cond_5

    .line 835
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->checkSecureElementConfiguration()V

    .line 838
    :cond_5
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 839
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v6

    .line 840
    :try_start_4
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 842
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pOn()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 844
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 852
    :goto_3
    if-nez v0, :cond_6

    if-eqz v2, :cond_7

    .line 853
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v4, p1}, Lcom/android/nfc/LNfcService;->applyRouting(Z)V

    .line 856
    :cond_7
    if-eqz v0, :cond_8

    .line 857
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableCardEmulationManager()V

    .line 860
    :cond_8
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardOn()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    :goto_4
    invoke-static {v4}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 861
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x17

    :goto_5
    invoke-static {v4}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 862
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pOn()Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x21

    :goto_6
    invoke-static {v4}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 864
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    :goto_7
    invoke-virtual {p0, v4, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 865
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 866
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 868
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v4}, Lcom/android/nfc/LNfcService;->checkDisable()V

    move v4, v5

    .line 870
    goto/16 :goto_0

    .line 808
    .restart local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "LNfcService"

    const-string v6, "Error enabling NFC"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 811
    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 814
    :try_start_6
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 821
    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    goto/16 :goto_0

    .line 814
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_7
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 821
    :catchall_1
    move-exception v4

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v4

    .end local v3    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_9
    move v0, v4

    .line 830
    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 831
    goto/16 :goto_2

    .line 844
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v4

    .line 846
    :cond_b
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v6, v4, v4}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    goto/16 :goto_3

    .line 860
    :cond_c
    const/16 v4, 0xb

    goto :goto_4

    .line 861
    :cond_d
    const/16 v4, 0x15

    goto :goto_5

    .line 862
    :cond_e
    const/16 v4, 0x1f

    goto :goto_6

    :cond_f
    move v4, v5

    .line 864
    goto :goto_7
.end method

.method enablePowerSavingMode(Z)V
    .locals 6
    .param p1, "isRestoreMode"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 916
    sget-object v3, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v3, v0}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 918
    :cond_0
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v4, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->rwp2p:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 921
    .local v0, "cardOn":Z
    :goto_0
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NFC system is initialized. Doing normal stuff - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(ZZZZ)Z

    .line 927
    .end local v0    # "cardOn":Z
    :goto_1
    if-eqz p1, :cond_1

    .line 930
    const/16 v2, 0x33

    invoke-static {v2}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    move-result v1

    .line 931
    .local v1, "result":Z
    const-string v2, "LNfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chage WirelessCharging Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .end local v1    # "result":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 918
    goto :goto_0

    .line 924
    :cond_3
    const-string v2, "LNfcService"

    const-string v3, "NFC system is NOT initialized."

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method enableSavedSetting()V
    .locals 4

    .prologue
    .line 905
    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal()Z

    .line 910
    :cond_1
    const/16 v1, 0x33

    invoke-static {v1}, Lcom/android/nfc/LNfcCommon;->changeNFCWirelessChargingstatus(I)Z

    move-result v0

    .line 911
    .local v0, "result":Z
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chage WirelessCharging Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method onCardEmulationModeCallback(ZI)V
    .locals 1
    .param p1, "callbackEnable"    # Z
    .param p2, "status"    # I

    .prologue
    .line 1069
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0, p2}, Lcom/android/nfc/LGsmaAPIService;->onCardEmulationModeCallback(I)V

    .line 1072
    :cond_0
    return-void
.end method

.method onNfcControllerCallback(ZZ)V
    .locals 1
    .param p1, "callbackEnable"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0, p2}, Lcom/android/nfc/LGsmaAPIService;->onNfcControllerCallback(Z)V

    .line 1066
    :cond_0
    return-void
.end method

.method sendNfcAddonStateChangeIntent()V
    .locals 4

    .prologue
    .line 1039
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNfcAddonStateChangeIntent : (Sys : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Card : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", P2P : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v0, "intentAddon":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1043
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_SYSTEM_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_CARD_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_DISCOVERY_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1046
    const-string v1, "com.lge.nfcaddon.extra.ADAPTER_P2P_STATE"

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1049
    return-void
.end method

.method updateCardModeState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 973
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 974
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 976
    monitor-exit v1

    .line 988
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 980
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 982
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 984
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 987
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateDiscoveryModeState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 992
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 994
    monitor-exit v1

    .line 1006
    :goto_0
    return-void

    .line 996
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 998
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 1000
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1002
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 1004
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 1005
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNfcAdapterState(IZ)V
    .locals 4
    .param p1, "newState"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1026
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v1, v1, Lcom/android/nfc/LNfcService;->mState:I

    if-ne p1, v1, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 1029
    :cond_0
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNfcAdapterState : (Sys : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Card : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", P2P : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iput p1, v1, Lcom/android/nfc/LNfcService;->mState:I

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1034
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method updateNfcIndicator()V
    .locals 2

    .prologue
    .line 1053
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1055
    sget-object v0, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->removeNfcIndicatorIcon(Landroid/content/Context;)V

    .line 1060
    :goto_0
    return-void

    .line 1057
    :cond_0
    sget-object v0, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->updateNfcIndicatorIcon(Landroid/content/Context;)V

    goto :goto_0
.end method

.method updateNfcPowerStatus(ZZ)V
    .locals 2
    .param p1, "isRequireEnable"    # Z
    .param p2, "callbackEnable"    # Z

    .prologue
    .line 946
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 947
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(Z)Z

    move-result v0

    .line 948
    .local v0, "ret":Z
    invoke-virtual {p0, p2, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->onNfcControllerCallback(ZZ)V

    .line 952
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    goto :goto_0
.end method

.method updateP2pModeState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1010
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 1012
    monitor-exit v1

    .line 1023
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 1018
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 1019
    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 1021
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 1022
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateSystemState(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 957
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 959
    monitor-exit v1

    .line 970
    :goto_0
    return-void

    .line 961
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setSysState(I)V

    .line 963
    const/16 v0, 0x29

    if-ne p1, v0, :cond_1

    .line 964
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 966
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->sendNfcAddonStateChangeIntent()V

    .line 968
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 969
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
