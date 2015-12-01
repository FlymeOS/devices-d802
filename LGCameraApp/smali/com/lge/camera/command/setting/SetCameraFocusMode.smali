.class public Lcom/lge/camera/command/setting/SetCameraFocusMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraFocusMode.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/setting/SetCameraFocusMode;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->showFocusForSetFocusMode()V

    return-void
.end method

.method private setFocusAuto(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z

    .prologue
    const/4 v4, 0x0

    .line 158
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;

    invoke-direct {v2, p0, p2}, Lcom/lge/camera/command/setting/SetCameraFocusMode$3;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;Z)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "manual-focus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 191
    if-nez p2, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 193
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->getDefaultFocusModeParameterForMultiWindowAF(Lcom/lge/hardware/LGCamera$LGParameters;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "focusMode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 201
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### setFocusMode-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v0    # "focusMode":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "###setFocusMode-auto"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFocusFaceTracking(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "shotMode"    # Ljava/lang/String;
    .param p3, "allSetting"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 77
    const-string v2, "not found"

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_coloreffect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "none"

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_coloreffect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    const-string v4, "none"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0195

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 83
    :cond_0
    const-string v2, "shotmode_normal"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "not found"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a018b

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 87
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "DefaultNormalShot"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_normal"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3, v5, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 91
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 93
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->registerFaceTrackingCallback()V

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "manual-focus"

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 101
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v2

    if-nez v2, :cond_6

    .line 103
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "mw_continuous-picture"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "mw_continuous-picture"

    .line 106
    .local v1, "focusMode":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 107
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### setFocusMode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v1    # "focusMode":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;

    invoke-direct {v3, p0, p3}, Lcom/lge/camera/command/setting/SetCameraFocusMode$2;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;Z)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emotional_led_back_camera_face_detecting_noti"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "faceLedEnabled":I
    if-nez p3, :cond_4

    if-ne v0, v5, :cond_4

    .line 140
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "face_tracking"

    const/16 v4, 0x79

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    .line 144
    .end local v0    # "faceLedEnabled":I
    :cond_4
    return-void

    .line 103
    :cond_5
    const-string v1, "continuous-picture"

    goto :goto_0

    .line 109
    :cond_6
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 110
    const-string v2, "CameraApp"

    const-string v3, "### setFocusMode-auto"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setFocusManual(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;

    invoke-direct {v1, p0, p2}, Lcom/lge/camera/command/setting/SetCameraFocusMode$4;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    if-nez p2, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 259
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "manual-focus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 263
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "manualfocus_step"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getManualFocusValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 266
    const-string v0, "CameraApp"

    const-string v1, "### setFocusMode-manual"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private setFocusMenuEnableForShotMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "shotMode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 147
    const-string v0, "shotmode_normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "not found"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_focus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_focus"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private showFocusForSetFocusMode()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_1

    .line 282
    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isIndicatorControllerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraFocusMode$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode$5;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 39
    const-string v4, "CameraApp"

    const-string v5, "SetCameraFocusMode"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p2

    .line 40
    check-cast v1, Landroid/os/Bundle;

    .line 41
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "allSetting"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    .local v0, "allSetting":Z
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 73
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->updateIndicator()V

    .line 48
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "focusSetting":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "shotMode":Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Focus setting value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v4, "auto"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "multiwindowaf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusAuto(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 60
    :cond_2
    :goto_1
    const-string v4, "ClearShot"

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCurrentModuleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isCurrnetModuleRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 65
    :goto_2
    invoke-direct {p0, v3}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusMenuEnableForShotMode(Ljava/lang/String;)V

    .line 67
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode$1;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 54
    :cond_3
    const-string v4, "manual"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusManual(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_1

    .line 56
    :cond_4
    const-string v4, "face_tracking"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    invoke-direct {p0, p1, v3, v0}, Lcom/lge/camera/command/setting/SetCameraFocusMode;->setFocusFaceTracking(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V

    goto :goto_1

    .line 63
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1, v7}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraFocusMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraFocusMode$6;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraFocusMode$6;-><init>(Lcom/lge/camera/command/setting/SetCameraFocusMode;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method
