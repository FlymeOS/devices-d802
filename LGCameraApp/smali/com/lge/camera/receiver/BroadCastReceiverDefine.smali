.class public Lcom/lge/camera/receiver/BroadCastReceiverDefine;
.super Ljava/lang/Object;
.source "BroadCastReceiverDefine.java"


# instance fields
.field public mBLEReceiver:Lcom/lge/camera/receiver/BLEReceiver;

.field public mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

.field public mCallPopUpReceiver:Lcom/lge/camera/receiver/CallPopUpReceiver;

.field public mCameraDayDreamReceiver:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

.field public mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

.field public mCleanViewNaviBarReceiver:Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

.field public mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

.field public mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

.field public mHeadsetReceiver:Lcom/lge/camera/receiver/HeadsetReceiver;

.field public mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

.field public mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

.field public mRotationModeReceiver:Lcom/lge/camera/receiver/RotationModeReceiver;

.field public mScreenOffReceiver:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

.field public mSmartCoverReceiver:Lcom/lge/camera/receiver/SmartCoverReceiver;

.field public mTemperatureReceiver:Lcom/lge/camera/receiver/TemperatureReceiver;

.field public mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .line 46
    iput-object p1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .line 47
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;Z)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;
    .param p2, "secureCamera"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .line 51
    iput-object p1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .line 52
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->init()V

    .line 53
    if-nez p2, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraScreenOffReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mScreenOffReceiver:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getScreenOffReceiver()Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraScreenOffIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 57
    :cond_1
    return-void
.end method

.method private checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 365
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 366
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    :cond_0
    return-void
.end method

.method private checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/lge/camera/receiver/MessageReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/MessageReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    .line 61
    new-instance v0, Lcom/lge/camera/receiver/BatteryReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/BatteryReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    .line 62
    new-instance v0, Lcom/lge/camera/receiver/VoiceMailReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/VoiceMailReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    .line 63
    new-instance v0, Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    .line 64
    new-instance v0, Lcom/lge/camera/receiver/HdmiReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/HdmiReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    .line 65
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 66
    new-instance v0, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    .line 71
    :goto_0
    new-instance v0, Lcom/lge/camera/receiver/BLEReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/BLEReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBLEReceiver:Lcom/lge/camera/receiver/BLEReceiver;

    .line 72
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    new-instance v0, Lcom/lge/camera/receiver/TemperatureReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/TemperatureReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mTemperatureReceiver:Lcom/lge/camera/receiver/TemperatureReceiver;

    .line 77
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Lcom/lge/camera/receiver/HeadsetReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/HeadsetReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHeadsetReceiver:Lcom/lge/camera/receiver/HeadsetReceiver;

    .line 81
    :cond_2
    new-instance v0, Lcom/lge/camera/receiver/CallPopUpReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CallPopUpReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCallPopUpReceiver:Lcom/lge/camera/receiver/CallPopUpReceiver;

    .line 83
    new-instance v0, Lcom/lge/camera/receiver/SmartCoverReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/SmartCoverReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mSmartCoverReceiver:Lcom/lge/camera/receiver/SmartCoverReceiver;

    .line 85
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    new-instance v0, Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCleanViewNaviBarReceiver:Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    .line 89
    :cond_3
    new-instance v0, Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraDayDreamReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraDayDreamReceiver:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    .line 91
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedRotationWithoutAccelerometer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    new-instance v0, Lcom/lge/camera/receiver/RotationModeReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/RotationModeReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mRotationModeReceiver:Lcom/lge/camera/receiver/RotationModeReceiver;

    .line 95
    :cond_4
    return-void

    .line 69
    :cond_5
    new-instance v0, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    goto :goto_0
.end method


# virtual methods
.method public getBLEReceiver()Lcom/lge/camera/receiver/BLEReceiver;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBLEReceiver:Lcom/lge/camera/receiver/BLEReceiver;

    return-object v0
.end method

.method public getBLEReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.action.BLE_ONEKEY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBatteryReceiver()Lcom/lge/camera/receiver/BatteryReceiver;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    return-object v0
.end method

.method public getBatteryReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-object v0
.end method

.method public getCallPopUpReceiver()Lcom/lge/camera/receiver/CallPopUpReceiver;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCallPopUpReceiver:Lcom/lge/camera/receiver/CallPopUpReceiver;

    return-object v0
.end method

.method public getCallPopUpReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.action.CALLALERTING_SHOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.action.CALLALERTING_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "com.lge.action.CALLALERTING_ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method public getCameraBroadCastReceiver()Lcom/lge/camera/receiver/CameraBroadCastReceiver;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    return-object v0
.end method

.method public getCameraBroadCastReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 121
    return-object v0
.end method

.method public getCameraDayDreamReceiver()Lcom/lge/camera/receiver/CameraDayDreamReceiver;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraDayDreamReceiver:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    return-object v0
.end method

.method public getCameraDayDreamReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getCameraScreenOffIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getCameraSettingReceiverBySDM()Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    return-object v0
.end method

.method public getCameraSettingReceiverBySDMIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.innopath.activecare.CAMERA_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCleanViewNaviBarReceiver()Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCleanViewNaviBarReceiver:Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    return-object v0
.end method

.method public getCleanViewNaviBarReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.camera.action.CLEAN_VIEW_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getHdmiReceiver()Lcom/lge/camera/receiver/HdmiReceiver;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    return-object v0
.end method

.method public getHdmiReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.DUALDISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    return-object v0
.end method

.method public getHeadReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getHeadsetReceiver()Lcom/lge/camera/receiver/HeadsetReceiver;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHeadsetReceiver:Lcom/lge/camera/receiver/HeadsetReceiver;

    return-object v0
.end method

.method public getLGMMSMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.message.MMS_RECEIVED_ACTION_FOR_LGE_APPL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLGSMSMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.message.SMS_RECEIVED_ACTION_FOR_LGE_APPL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    return-object v0
.end method

.method public getMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.message.MSG_RECEIVED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getQuickCamCaseReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.camera.action.CAMERA_FINISH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getQuickClipIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.systemui.qmemo"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRecentMessageType()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageType()I

    move-result v0

    return v0
.end method

.method public getRotationModeReceiver()Lcom/lge/camera/receiver/RotationModeReceiver;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mRotationModeReceiver:Lcom/lge/camera/receiver/RotationModeReceiver;

    return-object v0
.end method

.method public getRotationModeReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.android.intent.action.SWITCH_ROTATION_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getSKTMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.intent.action.UNREAD_SKT_MESSAGES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "lge.intent.action.ACTION_UNREAD_SMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    return-object v0
.end method

.method public getScreenOffReceiver()Lcom/lge/camera/receiver/CameraScreenOffReceiver;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mScreenOffReceiver:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    return-object v0
.end method

.method public getSmartCoverReceiver()Lcom/lge/camera/receiver/SmartCoverReceiver;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mSmartCoverReceiver:Lcom/lge/camera/receiver/SmartCoverReceiver;

    return-object v0
.end method

.method public getSmartCoverReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.camera.action.CAMERA_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    return-object v0
.end method

.method public getTemperatureReceiver()Lcom/lge/camera/receiver/TemperatureReceiver;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mTemperatureReceiver:Lcom/lge/camera/receiver/TemperatureReceiver;

    return-object v0
.end method

.method public getTemperatureReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 178
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    return-object v0
.end method

.method public getUnreadMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.intent.action.UNREAD_MESSAGES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getVoiceMailReceiver()Lcom/lge/camera/receiver/VoiceMailReceiver;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    return-object v0
.end method

.method public getVoiceMailReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.vvm.NEW_VVM_NOTIFICATION_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraBroadCastReceiver()Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraBroadCastReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 309
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBatteryReceiver()Lcom/lge/camera/receiver/BatteryReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBatteryReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 310
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraSettingReceiverBySDM()Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraSettingReceiverBySDMIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 312
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 313
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getSKTMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 314
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getLGSMSMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 315
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getLGMMSMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 316
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUnreadMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 317
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getVoiceMailReceiver()Lcom/lge/camera/receiver/VoiceMailReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getVoiceMailReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 318
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHdmiReceiver()Lcom/lge/camera/receiver/HdmiReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHdmiReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 319
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getTemperatureReceiver()Lcom/lge/camera/receiver/TemperatureReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getTemperatureReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBLEReceiver()Lcom/lge/camera/receiver/BLEReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBLEReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 325
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHeadsetReceiver()Lcom/lge/camera/receiver/HeadsetReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHeadReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCallPopUpReceiver()Lcom/lge/camera/receiver/CallPopUpReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCallPopUpReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 329
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getSmartCoverReceiver()Lcom/lge/camera/receiver/SmartCoverReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getSmartCoverReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 331
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCleanViewNaviBarReceiver()Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCleanViewNaviBarReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraDayDreamReceiver()Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraDayDreamReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 336
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getRotationModeReceiver()Lcom/lge/camera/receiver/RotationModeReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getRotationModeReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 337
    return-void
.end method

.method public unbindReceiver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    .line 381
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    .line 382
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    .line 383
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    .line 384
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    .line 385
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    .line 386
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBLEReceiver:Lcom/lge/camera/receiver/BLEReceiver;

    .line 387
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCallPopUpReceiver:Lcom/lge/camera/receiver/CallPopUpReceiver;

    .line 388
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mScreenOffReceiver:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    .line 389
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mSmartCoverReceiver:Lcom/lge/camera/receiver/SmartCoverReceiver;

    .line 390
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCleanViewNaviBarReceiver:Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    .line 391
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraDayDreamReceiver:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    .line 392
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mRotationModeReceiver:Lcom/lge/camera/receiver/RotationModeReceiver;

    .line 393
    return-void
.end method

.method public unregisterReceivers()V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraBroadCastReceiver()Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 344
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBatteryReceiver()Lcom/lge/camera/receiver/BatteryReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 345
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getVoiceMailReceiver()Lcom/lge/camera/receiver/VoiceMailReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraSettingReceiverBySDM()Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHdmiReceiver()Lcom/lge/camera/receiver/HdmiReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getTemperatureReceiver()Lcom/lge/camera/receiver/TemperatureReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBLEReceiver()Lcom/lge/camera/receiver/BLEReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHeadsetReceiver()Lcom/lge/camera/receiver/HeadsetReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 356
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCallPopUpReceiver()Lcom/lge/camera/receiver/CallPopUpReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getScreenOffReceiver()Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getSmartCoverReceiver()Lcom/lge/camera/receiver/SmartCoverReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCleanViewNaviBarReceiver()Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraDayDreamReceiver()Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 361
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getRotationModeReceiver()Lcom/lge/camera/receiver/RotationModeReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 362
    return-void
.end method
