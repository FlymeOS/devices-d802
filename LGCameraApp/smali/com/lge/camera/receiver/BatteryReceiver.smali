.class public Lcom/lge/camera/receiver/BatteryReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "BatteryReceiver.java"


# static fields
.field public static final BATTERY_CHARGING_CURRENT_INCOMPATIBLE_CHARGING:I = 0x2

.field public static final BATTERY_CHARGING_CURRENT_NORMAL_CHARGING:I = 0x1

.field public static final BATTERY_CHARGING_CURRENT_USB_DRIVER_UNINSTALLED:I = 0x4

.field public static final BATTERY_EXTRA_CHARGING_CURRENT:Ljava/lang/String; = "charging_current"

.field public static final UNCHARGE_LEVEL:I = 0x2


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    .line 36
    return-void
.end method

.method private actionBatteryChanged(Landroid/content/Intent;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v2, "level"

    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 56
    .local v9, "charged":I
    const-string v2, "scale"

    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 57
    .local v10, "levelMax":I
    const-string v2, "temperature"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 59
    .local v8, "battThermal":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setBatteryTemper(I)V

    .line 64
    const/4 v2, -0x1

    if-eq v9, v2, :cond_3

    const/4 v2, 0x5

    if-gt v9, v2, :cond_3

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v2

    if-nez v2, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v14, 0x7f0a0030

    invoke-interface {v11, v14}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 104
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2, v9}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setBatteryVisibility(I)V

    .line 106
    const/4 v2, -0x1

    if-eq v9, v2, :cond_7

    const/4 v2, -0x1

    if-eq v10, v2, :cond_7

    .line 108
    const/16 v3, 0x15

    .line 109
    .local v3, "tempTotalBatteryLevel":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lge/camera/receiver/BatteryReceiver;->calculateBatteryLevel(I)I

    move-result v4

    .line 110
    .local v4, "level":I
    const/4 v5, 0x0

    .line 111
    .local v5, "pluged":I
    const/4 v6, 0x0

    .line 112
    .local v6, "status":I
    const-string v2, "status"

    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 113
    const-string v2, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 115
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v11, 0x6

    if-ne v2, v11, :cond_6

    .line 116
    const-string v2, "charging_current"

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "currentChargeStatus":I
    move-object/from16 v2, p0

    .line 118
    invoke-direct/range {v2 .. v7}, Lcom/lge/camera/receiver/BatteryReceiver;->setIsCharging(IIIII)I

    move-result v4

    .line 124
    .end local v7    # "currentChargeStatus":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActualBatteryLevel()I

    move-result v2

    if-eq v2, v9, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2, v9}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setActualBatteryLevel(I)V

    .line 128
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getBatteryLevel()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2, v4}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setBatteryLevel(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v11}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getBatteryLevel()I

    move-result v11

    invoke-interface {v2, v11}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setBatteryIndicator(I)V

    .line 135
    .end local v3    # "tempTotalBatteryLevel":I
    .end local v4    # "level":I
    .end local v5    # "pluged":I
    .end local v6    # "status":I
    :cond_2
    :goto_2
    return-void

    .line 71
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v2

    const/4 v11, 0x2

    if-ne v2, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v2

    const/4 v11, 0x3

    if-ne v2, v11, :cond_0

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isDualRecordingActive()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-wide v12, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_ENTERING_DUAL_RECORDING:D

    .line 75
    .local v12, "threshold":D
    :goto_3
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v14

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isDualRecordingActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    int-to-double v14, v8

    cmpl-double v2, v14, v12

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getCurrentRecordingTime()J

    move-result-wide v14

    sget-wide v16, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_GUARANTEE_RECORDING_TIME:J

    cmp-long v2, v14, v16

    if-ltz v2, :cond_0

    .line 81
    const-string v2, "CameraApp"

    const-string v11, "Camera is finishing due to high temperature during recording. It\'s not the error."

    invoke-static {v2, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v14, 0x7f0a026e

    invoke-interface {v11, v14}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    invoke-static {v2, v11, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 73
    .end local v12    # "threshold":D
    :cond_4
    sget-wide v12, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_STANDARD:D

    goto :goto_3

    .line 91
    .restart local v12    # "threshold":D
    :cond_5
    int-to-double v14, v8

    cmpl-double v2, v14, v12

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    const-string v2, "CameraApp"

    const-string v11, "Camera is finishing due to high temperature during recording. It\'s not the error."

    invoke-static {v2, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v14, 0x7f0a026e

    invoke-interface {v11, v14}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    invoke-static {v2, v11, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 121
    .end local v12    # "threshold":D
    .restart local v3    # "tempTotalBatteryLevel":I
    .restart local v4    # "level":I
    .restart local v5    # "pluged":I
    .restart local v6    # "status":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/lge/camera/receiver/BatteryReceiver;->setIsCharging(IIII)I

    move-result v4

    goto/16 :goto_1

    .line 133
    .end local v3    # "tempTotalBatteryLevel":I
    .end local v4    # "level":I
    .end local v5    # "pluged":I
    .end local v6    # "status":I
    :cond_7
    const-string v2, "CameraApp"

    const-string v11, "Fail to receive battery level!"

    invoke-static {v2, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private actionPowerConnected()V
    .locals 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "RecordingSize":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===>RecordingSize_1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->startHeatingwarning()V

    .line 241
    .end local v0    # "RecordingSize":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private actionPowerDisconnected()V
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 224
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "RecordingSize":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===>RecordingSize_2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->stopHeatingwarning()V

    .line 230
    .end local v0    # "RecordingSize":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private calculateBatteryLevel(I)I
    .locals 7
    .param p1, "charged"    # I

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x15

    const/4 v4, 0x5

    const/16 v3, 0x11

    const/16 v2, 0x10

    .line 244
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 246
    .local v0, "currentCarrierCode":I
    if-gez p1, :cond_3

    .line 247
    const/4 p1, 0x0

    .line 251
    :cond_0
    :goto_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 252
    if-lt p1, v5, :cond_1

    if-le p1, v6, :cond_2

    :cond_1
    if-lt p1, v2, :cond_4

    if-gt p1, v3, :cond_4

    .line 253
    :cond_2
    add-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x5

    .line 268
    :goto_1
    return v1

    .line 248
    :cond_3
    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 249
    const/16 p1, 0x64

    goto :goto_0

    .line 254
    :cond_4
    const/16 v1, 0x8

    if-lt p1, v1, :cond_5

    const/16 v1, 0xa

    if-le p1, v1, :cond_6

    :cond_5
    const/4 v1, 0x3

    if-lt p1, v1, :cond_7

    if-gt p1, v4, :cond_7

    .line 255
    :cond_6
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 257
    :cond_7
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 258
    :cond_8
    if-ne v0, v4, :cond_d

    .line 259
    if-lt p1, v5, :cond_9

    if-le p1, v6, :cond_b

    :cond_9
    if-lt p1, v2, :cond_a

    if-le p1, v3, :cond_b

    :cond_a
    const/16 v1, 0xb

    if-lt p1, v1, :cond_c

    const/16 v1, 0xc

    if-gt p1, v1, :cond_c

    .line 261
    :cond_b
    add-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 263
    :cond_c
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 265
    :cond_d
    if-lt p1, v2, :cond_e

    if-gt p1, v3, :cond_e

    .line 266
    add-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 268
    :cond_e
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x5

    goto :goto_1
.end method

.method private checkLowBattery(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v3, 0x7f0a0030

    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 180
    const-string v1, "level"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 182
    .local v0, "level":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    if-nez v1, :cond_1

    .line 185
    const-string v1, "CameraApp"

    const-string v2, "battery level is too low!! go to finish!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2, v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    .line 193
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x31

    iget-object v3, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090019

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 197
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 206
    :cond_1
    return-void

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2, v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private heatWarningByPowerConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    .line 212
    const-string v0, "CameraApp"

    const-string v1, "===>ACTION_POWER_CONNECTED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/lge/camera/receiver/BatteryReceiver;->actionPowerConnected()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    .line 216
    const-string v0, "CameraApp"

    const-string v1, "===>ACTION_POWER_DISCONNECTED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/lge/camera/receiver/BatteryReceiver;->actionPowerDisconnected()V

    goto :goto_0
.end method

.method private setIsCharging(IIII)I
    .locals 3
    .param p1, "tempTotalBatteryLevel"    # I
    .param p2, "level"    # I
    .param p3, "pluged"    # I
    .param p4, "status"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 139
    if-ne p4, v2, :cond_1

    .line 140
    add-int/2addr p2, p1

    .line 141
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    .line 153
    :cond_0
    :goto_0
    return p2

    .line 144
    :cond_1
    const/4 v0, 0x5

    if-ne p4, v0, :cond_0

    .line 145
    if-eq p3, v1, :cond_2

    if-ne p3, v2, :cond_0

    .line 147
    :cond_2
    add-int/2addr p2, p1

    .line 148
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    goto :goto_0
.end method

.method private setIsCharging(IIIII)I
    .locals 3
    .param p1, "tempTotalBatteryLevel"    # I
    .param p2, "level"    # I
    .param p3, "pluged"    # I
    .param p4, "status"    # I
    .param p5, "currentChargeStatus"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 159
    if-eq p5, v1, :cond_0

    const/4 v0, 0x4

    if-ne p5, v0, :cond_2

    if-ne p3, v1, :cond_2

    .line 161
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    add-int/2addr p2, v0

    .line 176
    :cond_1
    :goto_0
    return p2

    .line 162
    :cond_2
    if-ne p4, v1, :cond_3

    .line 163
    add-int/2addr p2, p1

    .line 164
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    goto :goto_0

    .line 167
    :cond_3
    const/4 v0, 0x5

    if-ne p4, v0, :cond_1

    .line 168
    if-eq p3, v2, :cond_4

    if-ne p3, v1, :cond_1

    .line 170
    :cond_4
    add-int/2addr p2, p1

    .line 171
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-virtual {p0, p2}, Lcom/lge/camera/receiver/BatteryReceiver;->checkOnReceive(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-direct {p0, p2}, Lcom/lge/camera/receiver/BatteryReceiver;->checkLowBattery(Landroid/content/Intent;)V

    .line 47
    invoke-direct {p0, p2}, Lcom/lge/camera/receiver/BatteryReceiver;->actionBatteryChanged(Landroid/content/Intent;)V

    .line 51
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BatteryReceiver;->heatWarningByPowerConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-direct {p0, p2}, Lcom/lge/camera/receiver/BatteryReceiver;->checkLowBattery(Landroid/content/Intent;)V

    goto :goto_1
.end method
