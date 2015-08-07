.class final Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandlerEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;
    }
.end annotation


# instance fields
.field mAutorunTriggerReceiver:Landroid/content/BroadcastReceiver;

.field mGuestModeTriggerReceiver:Landroid/content/BroadcastReceiver;

.field mSetupWizardTriggerReceiver:Landroid/content/BroadcastReceiver;

.field mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManagerEx;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManagerEx;Landroid/os/Looper;)V
    .locals 6
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    .line 272
    new-instance v4, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$1;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$1;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mSetupWizardTriggerReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v4, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$2;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAutorunTriggerReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v4, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$3;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mGuestModeTriggerReceiver:Landroid/content/BroadcastReceiver;

    .line 942
    new-instance v4, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;Lcom/android/server/usb/UsbDeviceManagerEx$1;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    .line 237
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    .local v3, "filter_setupWizard":Landroid/content/IntentFilter;
    const-string v4, "com.lge.setup_wizard.AUTORUNON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mSetupWizardTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.lge.android.intent.AUTORUN_ENABLE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAutorunTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v2, "filter_guestMode":Landroid/content/IntentFilter;
    const-string v4, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v4, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mGuestModeTriggerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 257
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v1, "filter_MDM":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/lge/cappuccino/IMdm;->addFilterUsbDevicecManagerReceiver(Landroid/content/IntentFilter;)V

    .line 260
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mMDMIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    .end local v1    # "filter_MDM":Landroid/content/IntentFilter;
    :cond_0
    iget-object v4, p1, Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v4}, Landroid/os/UEventObserver;->stopObserving()V

    .line 264
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserverEx:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$500(Lcom/android/server/usb/UsbDeviceManagerEx;)Landroid/os/UEventObserver;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 265
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserverEx:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$500(Lcom/android/server/usb/UsbDeviceManagerEx;)Landroid/os/UEventObserver;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 266
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserverEx:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$500(Lcom/android/server/usb/UsbDeviceManagerEx;)Landroid/os/UEventObserver;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 267
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mUEventObserverEx:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$500(Lcom/android/server/usb/UsbDeviceManagerEx;)Landroid/os/UEventObserver;

    move-result-object v4

    const-string v5, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private bootcomplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 789
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iput-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mBootCompleted:Z

    .line 790
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->nativeGetAudioMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAutorunEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$600(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 798
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V

    .line 804
    :cond_3
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 805
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 806
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 807
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    .line 808
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    .line 820
    :goto_0
    return-void

    .line 815
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    .line 816
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAdbNotification()V

    .line 817
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    .line 818
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    goto :goto_0
.end method

.method private getCommonUsbNotificationInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1013
    const/4 v0, 0x0

    .line 1014
    .local v0, "id":I
    const/4 v2, 0x0

    .line 1015
    .local v2, "id_title":I
    const/4 v1, 0x0

    .line 1017
    .local v1, "id_message":I
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "mtp"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1018
    const v0, 0x1040522

    .line 1019
    const v1, 0x1040522

    .line 1084
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v0, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 1085
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v2, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 1086
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v1, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 1087
    return-void

    .line 1020
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ptp"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1021
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v3

    if-nez v3, :cond_2

    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v5, :cond_2

    .line 1022
    sget v0, Lcom/lge/internal/R$string;->usb_pc_ptp_notification_title:I

    .line 1023
    sget v2, Lcom/lge/internal/R$string;->usb_pc_ptp_notification_id_title:I

    .line 1024
    sget v1, Lcom/lge/internal/R$string;->usb_pc_notification_message:I

    goto :goto_0

    .line 1026
    :cond_2
    const v0, 0x1040523

    .line 1027
    const v1, 0x1040523

    goto :goto_0

    .line 1029
    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "mass_storage"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1030
    const v0, 0x1040525

    .line 1031
    const v1, 0x1040525

    goto :goto_0

    .line 1032
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "accessory"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1033
    const v0, 0x1040526

    .line 1034
    const v1, 0x1040526

    goto :goto_0

    .line 1037
    :cond_5
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "cdrom_storage"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1038
    const v0, 0x1040525

    .line 1039
    const v1, 0x1040525

    goto :goto_0

    .line 1040
    :cond_6
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "pc_suite"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1041
    sget v0, Lcom/lge/internal/R$string;->sp_lg_software_title_NORMAL:I

    .line 1042
    sget v1, Lcom/lge/internal/R$string;->sp_lg_software_NORMAL:I

    goto :goto_0

    .line 1043
    :cond_7
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v4, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1044
    sget v0, Lcom/lge/internal/R$string;->sp_usb_tethering_title_NORMAL:I

    .line 1045
    sget v1, Lcom/lge/internal/R$string;->sp_usb_tethering_NORMAL:I

    goto/16 :goto_0

    .line 1046
    :cond_8
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "charge_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1047
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v3

    if-nez v3, :cond_9

    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v5, :cond_9

    .line 1048
    sget v0, Lcom/lge/internal/R$string;->usb_pc_charge_notification_title:I

    .line 1049
    sget v2, Lcom/lge/internal/R$string;->usb_pc_charge_notification_id_title:I

    .line 1050
    sget v1, Lcom/lge/internal/R$string;->usb_pc_notification_message:I

    goto/16 :goto_0

    .line 1052
    :cond_9
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 1053
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto/16 :goto_0

    .line 1055
    :cond_a
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "mtp_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1056
    sget v0, Lcom/lge/internal/R$string;->usb_mtp_notification_title:I

    .line 1057
    sget v1, Lcom/lge/internal/R$string;->sp_usbtype_mtp_title_NORMAL:I

    goto/16 :goto_0

    .line 1058
    :cond_b
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ptp_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1059
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v3

    if-nez v3, :cond_c

    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v5, :cond_c

    .line 1060
    sget v0, Lcom/lge/internal/R$string;->usb_pc_ptp_notification_title:I

    .line 1061
    sget v2, Lcom/lge/internal/R$string;->usb_pc_ptp_notification_id_title:I

    .line 1062
    sget v1, Lcom/lge/internal/R$string;->usb_pc_notification_message:I

    goto/16 :goto_0

    .line 1064
    :cond_c
    sget v0, Lcom/lge/internal/R$string;->usb_ptp_notification_title:I

    .line 1065
    sget v1, Lcom/lge/internal/R$string;->usb_ptp_title:I

    goto/16 :goto_0

    .line 1068
    :cond_d
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "auto_conf"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1069
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v3

    if-nez v3, :cond_e

    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v5, :cond_e

    .line 1070
    sget v0, Lcom/lge/internal/R$string;->usb_pc_mtp_notification_title:I

    .line 1071
    sget v2, Lcom/lge/internal/R$string;->usb_pc_mtp_notification_id_title:I

    .line 1072
    sget v1, Lcom/lge/internal/R$string;->usb_pc_notification_message:I

    goto/16 :goto_0

    .line 1074
    :cond_e
    sget v0, Lcom/lge/internal/R$string;->usb_mtp_notification_title:I

    .line 1075
    sget v1, Lcom/lge/internal/R$string;->sp_usbtype_mtp_title_NORMAL:I

    goto/16 :goto_0
.end method

.method private getOperatorUsbNotificationInfo()V
    .locals 5

    .prologue
    .line 946
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v0, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 947
    .local v0, "id":I
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v2, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 948
    .local v2, "id_title":I
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v1, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 950
    .local v1, "id_message":I
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ptp"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 951
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 952
    :cond_0
    const v0, 0x1040523

    .line 953
    const v1, 0x1040523

    .line 1007
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v0, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 1008
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v2, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 1009
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iput v1, v3, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 1010
    return-void

    .line 955
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "pc_suite"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 956
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 957
    sget v0, Lcom/lge/internal/R$string;->sp_internet_connection_NORMAL:I

    .line 958
    sget v1, Lcom/lge/internal/R$string;->sp_connection_modem_NORMAL:I

    .line 960
    :cond_3
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "ATT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 961
    sget v0, Lcom/lge/internal/R$string;->sp_pc_software_title_NORMAL:I

    .line 962
    sget v1, Lcom/lge/internal/R$string;->sp_pc_software_NORMAL:I

    goto :goto_0

    .line 964
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v4, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 965
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 966
    sget v0, Lcom/lge/internal/R$string;->sp_internet_connection_NORMAL:I

    .line 967
    sget v1, Lcom/lge/internal/R$string;->sp_connection_ethernet_NORMAL:I

    goto :goto_0

    .line 969
    :cond_5
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "charge_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 970
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 971
    :cond_6
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 972
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto :goto_0

    .line 974
    :cond_7
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ptp_only"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 975
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 976
    :cond_8
    sget v0, Lcom/lge/internal/R$string;->usb_ptp_notification_title:I

    .line 977
    sget v1, Lcom/lge/internal/R$string;->usb_ptp_title:I

    goto/16 :goto_0

    .line 980
    :cond_9
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "auto_conf"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 981
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 982
    :cond_a
    sget v0, Lcom/lge/internal/R$string;->usb_mtp_notification_title:I

    .line 983
    sget v1, Lcom/lge/internal/R$string;->sp_usbtype_mtp_title_NORMAL:I

    goto/16 :goto_0

    .line 986
    :cond_b
    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v4, "BM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 987
    :cond_c
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "usb_enable_diag"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 988
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 989
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto/16 :goto_0

    .line 990
    :cond_d
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "usb_enable_mtp"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 991
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 992
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto/16 :goto_0

    .line 993
    :cond_e
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "ecm,diag"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 994
    sget v0, Lcom/lge/internal/R$string;->sp_usb_tethering_title_NORMAL:I

    .line 995
    sget v1, Lcom/lge/internal/R$string;->sp_usb_tethering_NORMAL:I

    goto/16 :goto_0

    .line 996
    :cond_f
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "usb_enable"

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 997
    sget v0, Lcom/lge/internal/R$string;->sp_charge_only_title_NORMAL:I

    .line 998
    sget v1, Lcom/lge/internal/R$string;->sp_usb_charger_title_NORMAL:I

    goto/16 :goto_0
.end method

.method private getUsbNotificationInfo()V
    .locals 2

    .prologue
    .line 1090
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->getCommonUsbNotificationInfo()V

    .line 1091
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->getOperatorUsbNotificationInfo()V

    .line 1097
    :cond_1
    return-void
.end method

.method private playUsbNotificationSound(Landroid/app/Notification;)V
    .locals 8
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 1100
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, "factory_property":Ljava/lang/String;
    const-string v5, "sys.allautotest.run"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "aat_property":Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_0

    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1104
    :cond_0
    const/4 v5, 0x2

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 1105
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v5, v5, Lcom/android/server/usb/UsbDeviceManagerEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "usb_connected_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1106
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1107
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 1109
    .local v3, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1110
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1111
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1112
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1113
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1123
    :goto_0
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1124
    const/4 v3, 0x0

    .line 1131
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .end local v4    # "soundPath":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1119
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    .restart local v4    # "soundPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1121
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 1115
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1118
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1123
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1124
    const/4 v3, 0x0

    .line 1125
    goto :goto_1

    .line 1119
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1121
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1117
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    .line 1118
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1123
    :goto_3
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1124
    const/4 v3, 0x0

    throw v5

    .line 1119
    :catch_3
    move-exception v1

    .line 1121
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1128
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .end local v4    # "soundPath":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 1129
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1
.end method

.method private processUpdateState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 733
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    .line 734
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAdbNotification()V

    .line 735
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "accessory"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateCurrentAccessory()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateCurrentNcm()V

    .line 749
    :cond_1
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-nez v0, :cond_6

    .line 750
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$800(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 753
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mNcmSwitch:Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$302(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 754
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 782
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mBootCompleted:Z

    if-eqz v0, :cond_3

    .line 783
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    .line 784
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    .line 786
    :cond_3
    return-void

    .line 759
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    :cond_5
    const-string v0, "persist.sys.usb.config"

    const-string v1, "adb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    .line 764
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    goto :goto_0

    .line 768
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$800(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-nez v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mNcmSwitch:Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$302(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 771
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAutorunEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$600(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabledFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",false)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private sendAccessibilityForUSB()V
    .locals 5

    .prologue
    .line 923
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 924
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 927
    .local v1, "ev":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040512

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 930
    .end local v1    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 382
    move-object v0, p1

    .line 384
    .local v0, "functions":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbDebuggingManagerAdbEnabled() functions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    if-nez v0, :cond_1

    .line 418
    :goto_0
    return-void

    .line 389
    :cond_1
    sget-object v1, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 390
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v1, v5, :cond_4

    .line 391
    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "charge_only,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_0

    .line 397
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",adb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pc_suite,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 398
    :cond_5
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_0

    .line 400
    :cond_6
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_0

    .line 404
    :cond_7
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v1

    if-nez v1, :cond_a

    sget v1, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v1, v5, :cond_a

    sget-object v1, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 405
    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "charge_only,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 406
    :cond_8
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0

    .line 408
    :cond_9
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0

    .line 411
    :cond_a
    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 412
    :cond_b
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0

    .line 414
    :cond_c
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v2, v2, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0
.end method

.method private updateCurrentNcm()V
    .locals 3

    .prologue
    .line 657
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-nez v1, :cond_1

    .line 658
    sget-boolean v1, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 659
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "exited USB ncm mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.hardware.usb.ncm.NCM_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    const-string v1, "ncm_connected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 667
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 824
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 826
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    .line 827
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_2

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    .line 829
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v4

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 833
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-eqz v4, :cond_3

    .line 834
    const-string v4, "MDM"

    const-string v5, "MSG_UPDATE_STATE Message : MDM Block"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    .line 836
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v4, v4, Lcom/android/server/usb/UsbDeviceManagerEx;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    goto :goto_0

    :cond_1
    move v4, v6

    .line 826
    goto :goto_1

    :cond_2
    move v5, v6

    .line 827
    goto :goto_2

    .line 844
    :cond_3
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 845
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 846
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 848
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-eqz v4, :cond_5

    .line 849
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "MSG_UPDATE_STATE Message : MDM Block"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v4, v4, Lcom/android/server/usb/UsbDeviceManagerEx;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbState()V

    .line 852
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    goto :goto_0

    .line 861
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->processUpdateState()V

    goto :goto_0

    .line 864
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_6

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setAdbEnabled(Z)V

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_3

    .line 867
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 868
    .local v0, "functions":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_7

    move v1, v5

    .line 869
    .local v1, "makeDefault":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v1    # "makeDefault":Z
    :cond_7
    move v1, v6

    .line 868
    goto :goto_4

    .line 873
    .end local v0    # "functions":Ljava/lang/String;
    :pswitch_3
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 874
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 875
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 876
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    goto/16 :goto_0

    .line 882
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateUsbNotification()V

    .line 883
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAdbNotification()V

    .line 885
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAudioSourceFunction()V

    goto/16 :goto_0

    .line 888
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->bootcomplete()V

    goto/16 :goto_0

    .line 891
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 893
    .local v3, "userManager":Landroid/os/UserManager;
    const-string v4, "no_usb_file_transfer"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 894
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "Switched to user with DISALLOW_USB_FILE_TRANSFER restriction; disabling USB."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v4, "none"

    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    .line 897
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentUser:I

    goto/16 :goto_0

    .line 901
    :cond_a
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "mtp"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "ptp"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "mtp_only"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "ptp_only"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "pc_suite"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "auto_conf"

    invoke-static {v4, v7}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    move v2, v5

    .line 908
    .local v2, "mtpActive":Z
    :goto_5
    if-eqz v2, :cond_c

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentUser:I

    const/16 v7, -0x2710

    if-eq v4, v7, :cond_c

    .line 909
    const-string v4, "sys.user_switch_cha.disabled"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 910
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "Current user switched; Change connection mode to charge_only"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const-string v6, "charge_only,adb"

    invoke-virtual {v4, v6, v5}, Lcom/android/server/usb/UsbDeviceManagerEx;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 914
    :cond_c
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentUser:I

    goto/16 :goto_0

    .end local v2    # "mtpActive":Z
    :cond_d
    move v2, v6

    .line 901
    goto :goto_5

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected setAdbEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 423
    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdbEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    const-string v0, "MDM"

    const-string v1, "[MDM] block set ADB & change ADB_ENABLED to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const-string v1, "boot,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    :cond_3
    const-string v0, "persist.sys.usb.config"

    const-string v1, "adb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    .line 440
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentFunctions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    if-eq p1, v0, :cond_9

    .line 447
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iput-boolean p1, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    .line 451
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAutorunEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$600(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 458
    :goto_1
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 459
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 460
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 461
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 455
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_1

    .line 472
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->updateAdbNotification()V

    .line 474
    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 483
    sget-boolean v9, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 484
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setEnabledFunctions "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " makeDefault: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mAtsStarted:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1100(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 488
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v9, v9, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const-string v10, "ATS Mode Enabled for Developing"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 489
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 653
    .end local v7    # "toast":Landroid/widget/Toast;
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 497
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/lge/cappuccino/IMdm;->removeDisallowFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 502
    :cond_3
    const/4 v6, 0x0

    .line 503
    .local v6, "sprintMdmSet":Z
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSPROperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1000()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 504
    const/4 v9, 0x6

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "charge_only"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "usb_enable_diag"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "ecm"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "ecm,diag"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "rndis"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const-string v10, "rndis,diag"

    aput-object v10, v8, v9

    .line 510
    .local v8, "usbMode":[Ljava/lang/String;
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 513
    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/platform/lg_diag_cmd/diag_enable"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "diag_enable":Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 515
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_4

    .line 516
    aget-object v1, v8, v4

    .line 517
    .local v1, "disable_mode":Ljava/lang/String;
    add-int/lit8 v9, v4, 0x1

    aget-object v3, v8, v9

    .line 519
    .local v3, "enable_mode":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_8

    .line 520
    move-object p1, v3

    .line 533
    .end local v0    # "diag_enable":Ljava/lang/String;
    .end local v1    # "disable_mode":Ljava/lang/String;
    .end local v3    # "enable_mode":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4
    :goto_2
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 534
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mpreUsbPortRestriced:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1200(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v9

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v10

    if-eq v9, v10, :cond_a

    .line 535
    const/4 v6, 0x1

    .line 536
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v10

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mpreUsbPortRestriced:Z
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1202(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 550
    .end local v8    # "usbMode":[Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v9}, Lcom/android/server/usb/UsbDeviceManagerEx;->needsOemUsbOverride()Z

    move-result v9

    if-nez v9, :cond_f

    .line 552
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v9, v9, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    if-eqz v9, :cond_b

    .line 553
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 558
    :goto_4
    const-string v9, "service.plushome.currenthome"

    const-string v10, "none"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "kids"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 559
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 563
    :cond_6
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v10, "cdrom_storage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v10, "cdrom_storage,adb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v6, :cond_1

    .line 572
    :cond_7
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$802(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 573
    const-string v9, "none"

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 574
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "Failed to disable USB"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 515
    .restart local v0    # "diag_enable":Ljava/lang/String;
    .restart local v1    # "disable_mode":Ljava/lang/String;
    .restart local v3    # "enable_mode":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v8    # "usbMode":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    .line 525
    .end local v0    # "diag_enable":Ljava/lang/String;
    .end local v1    # "disable_mode":Ljava/lang/String;
    .end local v3    # "enable_mode":Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "getInstance Error "

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 538
    :cond_a
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mpreUsbDriveRestricted:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1300(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v9

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v10

    if-eq v9, v10, :cond_5

    .line 539
    const/4 v6, 0x1

    .line 540
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v10

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mpreUsbDriveRestricted:Z
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$1302(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    goto/16 :goto_3

    .line 555
    .end local v8    # "usbMode":[Ljava/lang/String;
    :cond_b
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 581
    :cond_c
    const-string v9, "persist.sys.usb.config"

    invoke-static {v9, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->waitForState(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 583
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    .line 584
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    goto/16 :goto_0

    .line 586
    :cond_d
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to switch persistent USB config to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 592
    const-string v9, "MDM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDM block adb function"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->removeDisallowFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "mdmFunctions":Ljava/lang/String;
    const-string v9, "persist.sys.usb.config"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    .end local v5    # "mdmFunctions":Ljava/lang/String;
    :cond_e
    const-string v9, "persist.sys.usb.config"

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 605
    :cond_f
    if-nez p1, :cond_10

    .line 606
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mDefaultFunctions:Ljava/lang/String;

    .line 610
    :cond_10
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    invoke-virtual {v9, p1}, Lcom/android/server/usb/UsbDeviceManagerEx;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 612
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v9, v9, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    if-eqz v9, :cond_12

    .line 613
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 618
    :goto_5
    const-string v9, "service.plushome.currenthome"

    const-string v10, "none"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "kids"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 619
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 623
    :cond_11
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 624
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$802(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 625
    const-string v9, "none"

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 626
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "Failed to disable USB"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 615
    :cond_12
    const-string v9, "adb"

    invoke-static {p1, v9}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 631
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 632
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    goto/16 :goto_0

    .line 634
    :cond_14
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to switch USB config to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->checkDisabledUSBType(I)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 640
    const-string v9, "MDM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDM block adb function"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-interface {v9, v10}, Lcom/lge/cappuccino/IMdm;->removeDisallowFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 643
    .restart local v5    # "mdmFunctions":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 649
    .end local v5    # "mdmFunctions":Ljava/lang/String;
    :cond_15
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected updateAdbNotification()V
    .locals 12

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    const v6, 0x104052c

    .line 1241
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mAdbEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-eqz v0, :cond_9

    .line 1242
    const-string v0, "0"

    const-string v1, "persist.adb.notify"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 1244
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "auto_conf"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ptp_only"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v1, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "adb"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1247
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1249
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x104052c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1255
    :cond_4
    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mVZWOperator:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "pc_suite"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v1, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "adb"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1258
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1260
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x104052c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1265
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "charge_only"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1268
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1270
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x104052c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1276
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-nez v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1278
    .local v10, "r":Landroid/content/res/Resources;
    const v0, 0x104052c

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1279
    .local v11, "title":Ljava/lang/CharSequence;
    const v0, 0x104052d

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1282
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1283
    .local v8, "notification":Landroid/app/Notification;
    const v0, 0x108066b

    iput v0, v8, Landroid/app/Notification;->icon:I

    .line 1284
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Landroid/app/Notification;->when:J

    .line 1285
    const/4 v0, 0x2

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 1286
    iput-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1287
    const/4 v0, 0x0

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 1288
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1289
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/app/Notification;->vibrate:[J

    .line 1290
    const/4 v0, -0x1

    iput v0, v8, Landroid/app/Notification;->priority:I

    .line 1292
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1296
    .local v2, "intent":Landroid/content/Intent;
    const v0, 0x10808000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1298
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1300
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0, v11, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1301
    const/4 v0, 0x1

    iput v0, v8, Landroid/app/Notification;->visibility:I

    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1303
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v3, 0x104052c

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1306
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    if-eqz v0, :cond_0

    .line 1307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mAdbNotificationShown:Z

    .line 1308
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v3, 0x104052c

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method protected updateAudioSourceFunction()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 701
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v10, "audio_source"

    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    if-eqz v9, :cond_2

    move v3, v7

    .line 705
    .local v3, "enabled":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v9, v9, Lcom/android/server/usb/UsbDeviceManagerEx;->mAudioSourceEnabled:Z

    if-eq v3, v9, :cond_1

    .line 707
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 710
    const-string v9, "state"

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const/4 v5, 0x0

    .line 712
    .local v5, "scanner":Ljava/util/Scanner;
    if-eqz v3, :cond_0

    .line 714
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    .end local v5    # "scanner":Ljava/util/Scanner;
    .local v6, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 716
    .local v0, "card":I
    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 717
    .local v1, "device":I
    const-string v7, "card"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    const-string v7, "device"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 722
    if-eqz v6, :cond_5

    .line 723
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    move-object v5, v6

    .line 727
    .end local v0    # "card":I
    .end local v1    # "device":I
    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 728
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iput-boolean v3, v7, Lcom/android/server/usb/UsbDeviceManagerEx;->mAudioSourceEnabled:Z

    .line 730
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "scanner":Ljava/util/Scanner;
    :cond_1
    return-void

    .end local v3    # "enabled":Z
    :cond_2
    move v3, v8

    .line 701
    goto :goto_0

    .restart local v3    # "enabled":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    move v7, v8

    .line 710
    goto :goto_1

    .line 719
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    .line 720
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_2
    sget-object v7, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "could not open audio source PCM file"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    if-eqz v5, :cond_0

    .line 723
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_2

    .line 722
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_4

    .line 723
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_4
    throw v7

    .line 722
    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_4

    .line 719
    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_3

    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v0    # "card":I
    .restart local v1    # "device":I
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :cond_5
    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_2
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 337
    const-string v3, "DISCONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "connected":I
    const/4 v0, 0x0

    .line 351
    .local v0, "configured":I
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->removeMessages(I)V

    .line 352
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 353
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 354
    iput v0, v2, Landroid/os/Message;->arg2:I

    .line 356
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$800(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v4, 0x3e8

    :goto_1
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    .end local v2    # "msg":Landroid/os/Message;
    :goto_2
    return-void

    .line 340
    :cond_0
    const-string v3, "CONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    const/4 v1, 0x1

    .line 342
    .restart local v1    # "connected":I
    const/4 v0, 0x0

    .restart local v0    # "configured":I
    goto :goto_0

    .line 343
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_1
    const-string v3, "CONFIGURED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # setter for: Lcom/android/server/usb/UsbDeviceManagerEx;->mSoftSwitch:Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$802(Lcom/android/server/usb/UsbDeviceManagerEx;Z)Z

    .line 345
    const/4 v1, 0x1

    .line 346
    .restart local v1    # "connected":I
    const/4 v0, 0x1

    .restart local v0    # "configured":I
    goto :goto_0

    .line 348
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_2
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 356
    .restart local v0    # "configured":I
    .restart local v1    # "connected":I
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method protected updateUsbNotification()V
    .locals 14

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mUseUsbNotification:Z

    if-nez v0, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    const/4 v6, 0x0

    .line 1140
    .local v6, "id":I
    const/4 v8, 0x0

    .line 1141
    .local v8, "id_title":I
    const/4 v7, 0x0

    .line 1142
    .local v7, "id_message":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->reset()V

    .line 1143
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1145
    .local v12, "r":Landroid/content/res/Resources;
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    if-eqz v0, :cond_2

    .line 1147
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->getUsbNotificationInfo()V

    .line 1149
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v6, v0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 1150
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v8, v0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 1151
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotiInfo:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;

    iget v7, v0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 1153
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->sendAccessibilityForUSB()V

    .line 1157
    :cond_2
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    if-eq v6, v0, :cond_0

    .line 1159
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    if-eqz v0, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    .line 1164
    :cond_3
    if-eqz v6, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ptp"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "charge_only"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ptp_only"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "auto_conf"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1178
    :cond_4
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1179
    :cond_5
    const v0, 0x1040516

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1186
    .local v13, "title":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1189
    .local v9, "message":Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 1190
    .local v10, "notification":Landroid/app/Notification;
    const v0, 0x108068a

    iput v0, v10, Landroid/app/Notification;->icon:I

    .line 1191
    const-wide/16 v0, 0x0

    iput-wide v0, v10, Landroid/app/Notification;->when:J

    .line 1192
    const/4 v0, 0x2

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 1195
    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1199
    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->playUsbNotificationSound(Landroid/app/Notification;)V

    .line 1202
    const/4 v0, 0x0

    iput-object v0, v10, Landroid/app/Notification;->vibrate:[J

    .line 1205
    const/4 v0, -0x1

    iput v0, v10, Landroid/app/Notification;->priority:I

    .line 1208
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    # getter for: Lcom/android/server/usb/UsbDeviceManagerEx;->no_multiple_conf:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManagerEx;->access$900(Lcom/android/server/usb/UsbDeviceManagerEx;)Z

    move-result v0

    if-nez v0, :cond_d

    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    sget-object v1, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v1, "ecm,diag"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1211
    :cond_6
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "MPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->COUNTRY:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1213
    :cond_8
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.UsbSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1224
    .local v2, "intent":Landroid/content/Intent;
    :goto_2
    const v0, 0x10808000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1226
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1228
    .local v11, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v13, v9, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1229
    const/4 v0, 0x1

    iput v0, v10, Landroid/app/Notification;->visibility:I

    .line 1230
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManagerEx;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v6, v10, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1232
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mUsbNotificationId:I

    goto/16 :goto_0

    .line 1181
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v9    # "message":Ljava/lang/CharSequence;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v13    # "title":Ljava/lang/CharSequence;
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/CharSequence;
    :goto_3
    goto/16 :goto_1

    .end local v13    # "title":Ljava/lang/CharSequence;
    :cond_a
    const v0, 0x1040516

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_3

    .line 1184
    :cond_b
    const v0, 0x1040516

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .restart local v13    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1214
    .restart local v9    # "message":Ljava/lang/CharSequence;
    .restart local v10    # "notification":Landroid/app/Notification;
    :cond_c
    sget-object v0, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.Settings$TetherNetworkSettingsActivity"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 1220
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_d
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.UsbSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method protected updateUsbState()V
    .locals 6

    .prologue
    .line 673
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 675
    const-string v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    const-string v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 678
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 679
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "functions":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 681
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    if-eqz v3, :cond_1

    const-string v3, "service.plushome.currenthome"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kids"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "charge_only"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 687
    const-string v3, "charge_only"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 697
    .end local v0    # "functions":[Ljava/lang/String;
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 693
    :cond_1
    sget-boolean v3, Lcom/android/server/usb/UsbDeviceManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 694
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " configured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->mConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManagerEx;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method protected waitForState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 366
    const-string v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->this$0:Lcom/android/server/usb/UsbDeviceManagerEx;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManagerEx;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v1, :cond_0

    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;->setUsbDebuggingManagerAdbEnabled(Ljava/lang/String;)V

    .line 370
    :cond_0
    const/4 v1, 0x1

    .line 376
    :goto_1
    return v1

    .line 373
    :cond_1
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_2
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v1, 0x0

    goto :goto_1
.end method
