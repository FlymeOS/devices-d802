.class public Lcom/lge/camera/command/SwapCamera;
.super Lcom/lge/camera/command/Command;
.source "SwapCamera.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected checkSwap()Z
    .locals 3

    .prologue
    .line 176
    const-string v0, "CameraApp"

    const-string v1, "SwapCamera"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->preExecuteSwapCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    .line 181
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwapCamera EXECUTE -start !!!, current_app_mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentCameraMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected doSwapAction()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setCameraMode(I)V

    .line 193
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 199
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->applyCameraChange()V

    .line 200
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->initQuickFunctionEnabled()V

    .line 202
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->getNumberOfCameras()I

    move-result v0

    .line 203
    .local v0, "numberOfCameras":I
    if-gtz v0, :cond_2

    .line 204
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfCameras errors : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x2

    .line 207
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 209
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v1

    if-nez v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->switchCameraId(I)V

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->set3DSwitchImage()V

    .line 223
    :goto_2
    return-void

    .line 197
    .end local v0    # "numberOfCameras":I
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setCameraMode(I)V

    goto :goto_0

    .line 213
    .restart local v0    # "numberOfCameras":I
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->switchCameraId(I)V

    goto :goto_1

    .line 216
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->switchCameraId(I)V

    goto :goto_1

    .line 220
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->switchCameraId(I)V

    goto :goto_2
.end method

.method public execute()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->checkSwap()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "TIME CHECK : Swap camera [START] - execute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->perfLockAcquire()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->initSettingMenu()V

    .line 48
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 49
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setIsSwapCameraProcessing(Z)V

    .line 50
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 51
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 52
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 53
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setModeMenuVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->setCamcorderSettingForSwap()V

    .line 56
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->setCameraSettingForSwap()V

    .line 58
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->initFaceDetectInfo()V

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6, v4}, Lcom/lge/camera/ControllerFunction;->setSmartCameraMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->doSwapAction()V

    .line 68
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_d

    .line 69
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_b

    .line 70
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 71
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerVisible(Z)V

    .line 72
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMode(Z)V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 81
    :goto_2
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setBackgroundColorBlack()V

    .line 82
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->setBacklightToSystemSetting(Landroid/app/Activity;)V

    .line 108
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 109
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 110
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v6}, Lcom/lge/camera/ControllerFunction;->updateSceneIndicator(ZLjava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v6}, Lcom/lge/camera/ControllerFunction;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 113
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateFocusIndicator()V

    .line 127
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 128
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->refreshZoomController()V

    .line 129
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->refreshBrightnessController()V

    .line 130
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->refreshBeautyshotController()V

    .line 131
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->refreshManualFocusController()V

    .line 133
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCamera;->setFocusForSwap()V

    .line 135
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 136
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 140
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 144
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 145
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateStorageIndicator()V

    .line 146
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setIsSwapCameraProcessing(Z)V

    .line 147
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->resetSwitcherLever()V

    .line 149
    const/16 v0, 0x190

    .line 150
    .local v0, "delay":I
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    :cond_8
    const/16 v0, 0x320

    .line 157
    :cond_9
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/SwapCamera$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/SwapCamera$1;-><init>(Lcom/lge/camera/command/SwapCamera;)V

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 171
    const-string v1, "CameraApp"

    const-string v2, "TIME CHECK : Swap camera [END] - execute()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "CameraApp"

    const-string v2, "SwapCamera EXECUTE -end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    .end local v0    # "delay":I
    :cond_a
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMode(Z)V

    .line 78
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerVisible(Z)V

    goto/16 :goto_2

    .line 85
    :cond_b
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMode(Z)V

    .line 87
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerVisible(Z)V

    .line 88
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 91
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setRefocusShotHasPictures(Z)V

    .line 92
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setRefocusShotPreviewGuideVisibility(Z)V

    .line 95
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_light"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 96
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setBackgroundColorWhite()V

    .line 97
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->setBacklightToMax(Landroid/app/Activity;)V

    .line 99
    :cond_c
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedGestureShot()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "shotmode_normal"

    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "gestureshot"

    const/16 v3, 0x7d

    invoke-interface {v1, v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    goto/16 :goto_3

    .line 115
    :cond_d
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMode(Z)V

    .line 116
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 117
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    .line 118
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v6}, Lcom/lge/camera/ControllerFunction;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 120
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_light"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 121
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setBackgroundColorWhite()V

    goto/16 :goto_4

    .line 123
    :cond_e
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setBackgroundColorBlack()V

    goto/16 :goto_4

    .line 44
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method protected preExecuteSwapCamera()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/SwapCamera$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/SwapCamera$2;-><init>(Lcom/lge/camera/command/SwapCamera;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "CameraApp"

    const-string v2, "swapCamera return, not VIDEO_STATE_IDLE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_0
    return v0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    const-string v1, "CameraApp"

    const-string v2, "swapCamera return, capturing now"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    const-string v1, "CameraApp"

    const-string v2, "swapCamera return, not PreviewOnGoing"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/SwapCamera$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/SwapCamera$3;-><init>(Lcom/lge/camera/command/SwapCamera;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setCamcorderSettingForSwap()V
    .locals 6

    .prologue
    .line 244
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 246
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getLiveEffect()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 249
    .local v1, "effectIndex":I
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLiveEffectFaceIndex(Landroid/content/Context;I)V

    .line 286
    .end local v1    # "effectIndex":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v4, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviousResolution()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->storePreviousResolution(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setPrevResolutionWithStoredValue()V

    .line 289
    :cond_1
    return-void

    .line 253
    .restart local v1    # "effectIndex":I
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontLiveEffectFaceIndex(Landroid/content/Context;I)V

    goto :goto_0

    .line 256
    .end local v1    # "effectIndex":I
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v0

    .line 259
    .local v0, "dualRecordPipIndex":I
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_4

    .line 260
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveDualCamcorderPIPIndex(Landroid/content/Context;I)V

    goto :goto_0

    .line 263
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontDualCamcorderPIPIndex(Landroid/content/Context;I)V

    goto :goto_0

    .line 266
    .end local v0    # "dualRecordPipIndex":I
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 267
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v2

    .line 269
    .local v2, "smartZoomPipIndex":I
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_6

    .line 270
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveSmartZoomPIPIndex(Landroid/content/Context;I)V

    .line 277
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->disableObjectTrackingForSmartZoom()V

    goto :goto_0

    .line 273
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontSmartZoomPIPIndex(Landroid/content/Context;I)V

    goto :goto_1

    .line 281
    .end local v2    # "smartZoomPipIndex":I
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "recordmode_wdr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    const-string v5, "recordmode_normal"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected setCameraSettingForSwap()V
    .locals 3

    .prologue
    .line 292
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v0

    .line 296
    .local v0, "dualCameraPipIndex":I
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveDualCameraPIPIndex(Landroid/content/Context;I)V

    .line 306
    .end local v0    # "dualCameraPipIndex":I
    :cond_0
    :goto_0
    return-void

    .line 299
    .restart local v0    # "dualCameraPipIndex":I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 300
    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontDualCameraPIPIndex(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected setFocusForSwap()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 227
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 241
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 231
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 232
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    goto :goto_0
.end method

.method public updateFocusIndicator()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isIndicatorControllerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/SwapCamera$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/SwapCamera$4;-><init>(Lcom/lge/camera/command/SwapCamera;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    :cond_0
    return-void
.end method
