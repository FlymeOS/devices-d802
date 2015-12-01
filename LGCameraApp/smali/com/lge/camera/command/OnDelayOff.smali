.class public Lcom/lge/camera/command/OnDelayOff;
.super Lcom/lge/camera/command/Command;
.source "OnDelayOff.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    return-void
.end method

.method private afterDisplayPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.Rotate"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 124
    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_refocus"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeAllImageList()V

    .line 138
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 139
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->keepScreenOnAwhile()V

    .line 140
    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 136
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    goto :goto_0
.end method

.method private excuteDisplayPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/command/OnDelayOff;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "shotMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shotmode_normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "not found"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shotmode_hdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shotmode_main_beauty"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shotmode_full_continuous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 67
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showPreview()V

    .line 68
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 69
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 70
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 71
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 72
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable()V

    .line 73
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->showDefaultQuickButton(Z)V

    .line 75
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 76
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setLimitationToLiveeffect(Z)V

    .line 83
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 84
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    .line 86
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPIPFrameDrawerOpened()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 87
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 92
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 93
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    .line 94
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 96
    .local v0, "mCarrierCode":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    .line 98
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showRequestedSizeLimit()V

    goto/16 :goto_0

    .line 79
    .end local v0    # "mCarrierCode":I
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setLimitationToLiveeffect(Z)V

    goto :goto_1

    .line 89
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_2
.end method

.method private excuteDisplayPreviewPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 106
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 107
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->showSubButtonInit(Z)V

    .line 109
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 115
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 118
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/lge/camera/command/OnDelayOff;->execute(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 35
    const-string v0, "CameraApp"

    const-string v1, "OnDelayOff-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/lge/camera/command/OnDelayOff;->excuteDisplayPreviewPanel()V

    .line 38
    invoke-direct {p0}, Lcom/lge/camera/command/OnDelayOff;->excuteDisplayPreview()V

    .line 39
    invoke-direct {p0}, Lcom/lge/camera/command/OnDelayOff;->afterDisplayPreview()V

    .line 40
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isCameraKeyLongPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "CameraApp"

    const-string v1, "setAudioFocus  abandon in OnDelayOff"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/lge/camera/command/OnDelayOff;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 47
    :cond_0
    return-void
.end method
