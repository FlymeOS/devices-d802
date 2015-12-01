.class public Lcom/lge/camera/command/setting/SetCameraShotMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraShotMode.java"


# instance fields
.field private isFromGridView:Z

.field private isNormalShot:Z

.field private isSettingSelected:Z

.field private pictureSizeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 45
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isFromGridView:Z

    .line 46
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    .line 41
    return-void
.end method

.method private checkFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1370
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    .local v0, "focusSetting":Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "multiwindowaf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1378
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1379
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_3

    .line 1380
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1382
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMmsLimit()V

    .line 1384
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1385
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 1388
    :cond_4
    const-string v3, "manual-focus"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1390
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isIndicatorControllerInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1391
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/command/setting/SetCameraShotMode$4;

    invoke-direct {v4, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$4;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1401
    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_5
    const-string v3, "not found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1402
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1404
    .local v2, "shotMode":Ljava/lang/String;
    const-string v3, "shotmode_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1407
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto/16 :goto_0
.end method

.method private checkPreviousModeBeforePlanePanorama(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 428
    const-string v1, "shotmode_hdr"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v0, "useHDR":Landroid/os/Bundle;
    const-string v1, "useHDR"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v1, v2, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 462
    .end local v0    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v1, "shotmode_timemachine"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 435
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 436
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 437
    :cond_2
    const-string v1, "shotmode_full_continuous"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 438
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "burst-shot"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_0

    .line 442
    :cond_4
    const-string v1, "shotmode_dual_camera"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 443
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 444
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 445
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 446
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_5
    const-string v1, "shotmode_free_panorama"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 448
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 449
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 450
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto :goto_0

    .line 451
    :cond_6
    const-string v1, "shotmode_main_beauty"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 452
    if-nez p2, :cond_0

    .line 453
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 454
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_0

    .line 457
    :cond_7
    const-string v1, "shotmode_refocus"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 458
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 460
    :cond_8
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_0
.end method

.method private checkPreviousShotModeForRefocus(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1091
    const-string v1, "shotmode_hdr"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1092
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1093
    .local v0, "useHDR":Landroid/os/Bundle;
    const-string v1, "useHDR"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1094
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v1, v2, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1122
    .end local v0    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v1, "shotmode_dual_camera"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "shotmode_main_beauty"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1124
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 1126
    :cond_1
    return-void

    .line 1095
    :cond_2
    const-string v1, "shotmode_plane_panorama"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1096
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 1097
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 1098
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_0

    .line 1099
    :cond_3
    const-string v1, "shotmode_free_panorama"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1100
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 1101
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 1102
    :cond_4
    const-string v1, "shotmode_full_continuous"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1103
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "burst-shot"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    :cond_5
    const-string v1, "shotmode_timemachine"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1107
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 1108
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 1109
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 1110
    :cond_6
    const-string v1, "shotmode_dual_camera"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1111
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 1112
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 1113
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 1114
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1115
    :cond_7
    const-string v1, "shotmode_main_beauty"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    if-nez p2, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 1118
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0
.end method

.method private executeClearShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 918
    const-string v3, "shotmode_hdr"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 920
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 921
    .local v2, "useHDR":Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 922
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 923
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 960
    .end local v2    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 961
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 962
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 966
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 967
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 968
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 969
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 970
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 971
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 973
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetClearShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 974
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 976
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 977
    .local v0, "pictureSizeIndex":I
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 978
    .local v1, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    .line 979
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 981
    :cond_1
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 983
    if-eqz p2, :cond_2

    .line 984
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "shotmode_clear_shot"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 986
    :cond_2
    return-void

    .line 924
    .end local v0    # "pictureSizeIndex":I
    .end local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_3
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 925
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 926
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 927
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 928
    :cond_4
    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 929
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 930
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 931
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 932
    :cond_5
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 933
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 934
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 935
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 936
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    goto/16 :goto_0

    .line 937
    :cond_6
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 938
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 939
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "burst-shot"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 942
    :cond_8
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 943
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 944
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 945
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 946
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 947
    :cond_9
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 948
    if-nez p2, :cond_0

    .line 949
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 950
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 953
    :cond_a
    const-string v3, "shotmode_refocus"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 954
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 956
    :cond_b
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 957
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    goto/16 :goto_0

    .line 964
    :cond_c
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method private executeContinuousShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 299
    const-string v2, "shotmode_hdr"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v1, "useHDR":Landroid/os/Bundle;
    const-string v2, "useHDR"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v2, v3, p1, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 336
    .end local v1    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 339
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 340
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 341
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 342
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_time_machine"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 343
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    const-string v4, "night"

    invoke-interface {v2, v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetOlaContinuousShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 347
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 348
    .local v0, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 351
    :cond_1
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 353
    if-eqz p2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_continuous"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 356
    :cond_2
    return-void

    .line 305
    .end local v0    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_3
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 307
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 308
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 309
    :cond_4
    const-string v2, "shotmode_plane_panorama"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 310
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 311
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 312
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 313
    :cond_5
    const-string v2, "shotmode_free_panorama"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 314
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 315
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 317
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    goto/16 :goto_0

    .line 318
    :cond_6
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 319
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 320
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 321
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 322
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_7
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 324
    if-nez p2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 326
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 329
    :cond_8
    const-string v2, "shotmode_refocus"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 330
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 332
    :cond_9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 333
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    goto/16 :goto_0
.end method

.method private executeDualCameraShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 991
    const/4 v0, 0x1

    .line 992
    .local v0, "pipMaskIndex":I
    if-eqz p2, :cond_7

    iget-boolean v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    if-nez v3, :cond_7

    .line 993
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_6

    .line 994
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->getDualCameraPIPIndex(Landroid/content/Context;)I

    move-result v0

    .line 996
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore - DualCamera Primary getIndex =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1005
    const/4 v0, 0x1

    .line 1010
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentPIPMask(I)V

    .line 1012
    const-string v3, "shotmode_hdr"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1014
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1015
    .local v2, "useHDR":Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1016
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1017
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 1053
    .end local v2    # "useHDR":Landroid/os/Bundle;
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 1054
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1055
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1056
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1057
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1058
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_tag_location"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1060
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1062
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 1064
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1065
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V

    .line 1067
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetDualCameraShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1068
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 1071
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1073
    .local v1, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_4

    .line 1074
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 1077
    :cond_4
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 1079
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6, v7}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1080
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 1081
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1083
    iget-boolean v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    .line 1084
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    .line 1086
    :cond_5
    return-void

    .line 997
    .end local v1    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 998
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->getFrontDualCameraPIPIndex(Landroid/content/Context;)I

    move-result v0

    .line 1001
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore - FrontDualCamera Primary getIndex =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1007
    :cond_7
    if-nez p2, :cond_1

    .line 1008
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    goto/16 :goto_1

    .line 1018
    :cond_8
    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1019
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 1020
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 1021
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 1022
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_2

    .line 1024
    :cond_9
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1025
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 1026
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 1027
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_2

    .line 1028
    :cond_a
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1029
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1030
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "burst-shot"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_b
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_2

    .line 1033
    :cond_c
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1034
    if-nez p2, :cond_2

    .line 1035
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 1036
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_2

    .line 1038
    :cond_d
    const-string v3, "shotmode_front_beauty"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1039
    if-nez p2, :cond_2

    .line 1040
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 1041
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_2

    .line 1043
    :cond_e
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1044
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 1045
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_2

    .line 1047
    :cond_f
    const-string v3, "shotmode_refocus"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1048
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_2

    .line 1050
    :cond_10
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_2
.end method

.method private executeFreePanoramaShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 513
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showFreePanoramaBlackBg()V

    .line 515
    const-string v2, "shotmode_hdr"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 518
    .local v1, "useHDR":Landroid/os/Bundle;
    const-string v2, "useHDR"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 519
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v2, v3, p1, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 520
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 551
    .end local v1    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 553
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 554
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 555
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 556
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 557
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 558
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_zoom"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 559
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 560
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 561
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_time_machine"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 562
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    const-string v4, "night"

    invoke-interface {v2, v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 565
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V

    .line 567
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetFreePanoramaShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 570
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 572
    .local v0, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 576
    :cond_1
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 578
    if-eqz p2, :cond_a

    .line 579
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 584
    :goto_1
    return-void

    .line 521
    .end local v0    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 523
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 524
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 525
    :cond_3
    const-string v2, "shotmode_plane_panorama"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 527
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 528
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 529
    :cond_4
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 530
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 531
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "burst-shot"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 534
    :cond_6
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 535
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 536
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 537
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 538
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :cond_7
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 540
    if-nez p2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 542
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 545
    :cond_8
    const-string v2, "shotmode_refocus"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 546
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 548
    :cond_9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_0

    .line 581
    .restart local v0    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_a
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private executeFrontBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 880
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 881
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 883
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 884
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    .line 897
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 900
    .local v0, "pictureSizeIndex":I
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 901
    .local v1, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    .line 902
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 905
    :cond_1
    if-eqz p2, :cond_2

    .line 906
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_front_beauty"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 909
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_3

    .line 912
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 914
    :cond_3
    return-void

    .line 887
    .end local v0    # "pictureSizeIndex":I
    .end local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v2

    if-nez v2, :cond_5

    .line 888
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 890
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 891
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 892
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 893
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 894
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetOlaNormalShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private executeFullFrameContinuousShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 670
    const-string v3, "shotmode_hdr"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 672
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 673
    .local v2, "useHDR":Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    .end local v2    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 702
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 705
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 706
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    const-string v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 707
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 708
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 709
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 710
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 711
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 712
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 714
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 715
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "burst-shot"

    const-string v5, "on"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetFullFrameContinuousShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 722
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 723
    .local v0, "pictureSizeIndex":I
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 724
    .local v1, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 725
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 727
    :cond_2
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 729
    if-eqz p2, :cond_3

    .line 730
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 732
    :cond_3
    return-void

    .line 675
    .end local v0    # "pictureSizeIndex":I
    .end local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_4
    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 676
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 677
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 678
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 679
    :cond_5
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 680
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 681
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 682
    :cond_6
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 683
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 684
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 685
    :cond_7
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 686
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 687
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 688
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 689
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 691
    :cond_8
    const-string v3, "shotmode_refocus"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 692
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 693
    :cond_9
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    if-nez p2, :cond_0

    .line 695
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 696
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 717
    :cond_a
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setFullFrameContinuousShot(Landroid/hardware/Camera$Parameters;I)V

    goto/16 :goto_1
.end method

.method private executeHdrShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 588
    const-string v2, "shotmode_panorama"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shotmode_continuous"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 591
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 592
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 594
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 595
    .local v0, "pictureSizeIndex":I
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 596
    .local v1, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    .line 597
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 599
    :cond_1
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 647
    .end local v0    # "pictureSizeIndex":I
    .end local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_time_machine"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 648
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 649
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 654
    :goto_1
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 656
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 663
    :cond_3
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "hdr-mode"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetOlaHDRShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 666
    return-void

    .line 600
    :cond_4
    const-string v2, "shotmode_plane_panorama"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 601
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 602
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 603
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 604
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 606
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 607
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 608
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_0

    .line 609
    :cond_5
    const-string v2, "shotmode_free_panorama"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 610
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 611
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 612
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 613
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 615
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 616
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 617
    :cond_6
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 618
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 619
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 620
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 621
    :cond_7
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 622
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 623
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 624
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 625
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "burst-shot"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    :cond_8
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 629
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 630
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 631
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 632
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 633
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :cond_9
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 635
    if-nez p2, :cond_2

    .line 636
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 637
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 640
    :cond_a
    const-string v2, "shotmode_refocus"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 641
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 642
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 643
    :cond_b
    const-string v2, "shotmode_clear_shot"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 644
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 651
    :cond_c
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method private executeMainBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 804
    const-string v3, "shotmode_hdr"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 806
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 807
    .local v2, "useHDR":Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 808
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 835
    .end local v2    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 836
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 837
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 838
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 839
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    .line 843
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 844
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 845
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 849
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 850
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 851
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 852
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 853
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 855
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetOlaMainBeautyShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 856
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 858
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 859
    .local v0, "pictureSizeIndex":I
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 860
    .local v1, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 861
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 863
    :cond_2
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 865
    if-eqz p2, :cond_3

    .line 866
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "shotmode_main_beauty"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 869
    :cond_3
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mGet.getSubMenuMode() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_4

    .line 873
    const-string v3, "CameraApp"

    const-string v4, "shot beautyshot controll true!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 876
    :cond_4
    return-void

    .line 809
    .end local v0    # "pictureSizeIndex":I
    .end local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_5
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 810
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 811
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 812
    :cond_6
    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 813
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 814
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_0

    .line 815
    :cond_7
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 816
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 817
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 818
    :cond_8
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 819
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "burst-shot"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 822
    :cond_9
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 823
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v3

    if-nez v3, :cond_a

    .line 824
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 826
    :cond_a
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 827
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 828
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 829
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    :cond_b
    const-string v3, "shotmode_refocus"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 832
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 847
    :cond_c
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method private executeNormalOrNotFoundShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 10
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 179
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    if-nez v4, :cond_11

    .line 180
    const-string v4, "shotmode_hdr"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 181
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v3, "useHDR":Landroid/os/Bundle;
    const-string v4, "useHDR"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v4, v5, p1, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1, v7}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 227
    .end local v3    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetOlaNormalShot"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 229
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_voiceshutter"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 234
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_timer"

    invoke-interface {v4, v5, v8}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 235
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shutter_sound"

    invoke-interface {v4, v5, v8}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 236
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_time_machine"

    invoke-interface {v4, v5, v8}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 237
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 238
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_auto_review"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 244
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_scene_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 245
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_1

    const-string v4, "night"

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_1

    .line 246
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_scene_mode"

    const-string v6, "night"

    invoke-interface {v4, v5, v6, v8}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v8}, Lcom/lge/camera/ControllerFunction;->smartShutterEnable(Z)V

    .line 253
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_picturesize"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "pictureSizeIndex":I
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_picturesize"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 256
    .local v1, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    if-ne v0, v9, :cond_2

    .line 257
    const/4 v0, 0x0

    .line 258
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v0}, Lcom/lge/camera/ControllerFunction;->setSetting(II)Z

    .line 262
    :cond_2
    if-eqz v1, :cond_3

    .line 263
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 265
    :cond_3
    iput-boolean v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 266
    if-nez p2, :cond_4

    .line 267
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .end local v0    # "pictureSizeIndex":I
    .end local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    .end local v2    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_4
    :goto_3
    return-void

    .line 186
    :cond_5
    const-string v4, "shotmode_timemachine"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 187
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 188
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1, v7}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 189
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 190
    :cond_6
    const-string v4, "shotmode_plane_panorama"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 192
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 193
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1, v7}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 194
    :cond_7
    const-string v4, "shotmode_free_panorama"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 195
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 196
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 197
    if-nez p2, :cond_8

    .line 198
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 200
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1, v7}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 201
    :cond_9
    const-string v4, "shotmode_full_continuous"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 202
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 203
    const-string v4, "CameraApp"

    const-string v5, "burst shot off"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "burst-shot"

    const-string v6, "off"

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1, v7}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 207
    :cond_b
    const-string v4, "shotmode_dual_camera"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 208
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v8}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 209
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 211
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 212
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_c
    const-string v4, "shotmode_main_beauty"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 214
    if-nez p2, :cond_0

    .line 215
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 216
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 220
    :cond_d
    const-string v4, "shotmode_refocus"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 221
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 223
    :cond_e
    if-nez p2, :cond_0

    .line 224
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_0

    .line 231
    :cond_f
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_voiceshutter"

    invoke-interface {v4, v5, v8}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 240
    :cond_10
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_auto_review"

    invoke-interface {v4, v5, v8}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 271
    :cond_11
    const-string v4, "shotmode_front_beauty"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 272
    if-nez p2, :cond_4

    .line 273
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 274
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_3

    .line 277
    :cond_12
    const-string v4, "shotmode_dual_camera"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 278
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v8}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 279
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 280
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 281
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 282
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetOlaNormalShot"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private executePanoramaShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    const-string v2, "shotmode_hdr"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v1, "useHDR":Landroid/os/Bundle;
    const-string v2, "useHDR"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v2, v3, p1, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 401
    .end local v1    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 403
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 404
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 405
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 406
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 407
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_time_machine"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 408
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    const-string v4, "night"

    invoke-interface {v2, v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 410
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetOlaPanoramaShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 412
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 413
    .local v0, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 416
    :cond_1
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 418
    if-eqz p2, :cond_b

    .line 419
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_panorama"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 424
    :goto_1
    return-void

    .line 366
    .end local v0    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 368
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 369
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 370
    :cond_3
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 371
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    const-string v2, "CameraApp"

    const-string v3, "burst shot off"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "burst-shot"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 376
    :cond_5
    const-string v2, "shotmode_plane_panorama"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 377
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 378
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 379
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 380
    :cond_6
    const-string v2, "shotmode_free_panorama"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 381
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 382
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 383
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_0

    .line 384
    :cond_7
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 385
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 386
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 387
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 388
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_8
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 390
    if-nez p2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 392
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 395
    :cond_9
    const-string v2, "shotmode_refocus"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 396
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 398
    :cond_a
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V

    goto/16 :goto_0

    .line 421
    .restart local v0    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_b
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private executePlanePanoramaShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 466
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkPreviousModeBeforePlanePanorama(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    .line 469
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 470
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_voiceshutter"

    const-string v6, "off"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 472
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_voiceshutter"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 473
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_timer"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 474
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shutter_sound"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 475
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_auto_review"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 476
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_flash"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 477
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_zoom"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 478
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 479
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_picturesize"

    invoke-interface {v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 481
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 482
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V

    .line 484
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetPlanePanoramaShot"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 487
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 489
    if-eqz p2, :cond_2

    .line 490
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isSwapCameraProcessing()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "shotmode_plane_panorama"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 492
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 493
    .local v0, "paramSize":Landroid/hardware/Camera$Size;
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/lge/camera/util/Util;->size2String(II)Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "size":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousPictureSize(Ljava/lang/String;)V

    .line 497
    .end local v0    # "paramSize":Landroid/hardware/Camera$Size;
    .end local v3    # "size":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "shotmode_plane_panorama"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 499
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 500
    .local v2, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_1

    .line 501
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "planePanoramaSize":Ljava/lang/String;
    iput-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 503
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_picturesize"

    iget-object v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 509
    .end local v1    # "planePanoramaSize":Ljava/lang/String;
    .end local v2    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    :goto_0
    return-void

    .line 506
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private executeRefocusMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkPreviousShotModeForRefocus(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    .line 1135
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1136
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V

    .line 1138
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 1140
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 1141
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetRefocusShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1142
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1143
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1144
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1145
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1146
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1147
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1151
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    const-string v4, "night"

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1153
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 1154
    .local v0, "pictureSizeIndex":I
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1155
    .local v1, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 1156
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 1158
    :cond_0
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 1160
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setRefocusShotPreviewGuideVisibility(Z)V

    .line 1161
    if-eqz p2, :cond_1

    .line 1162
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_refocus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "af-bracket"

    const-string v4, "af-bracket-on"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_1
    return-void

    .line 1149
    .end local v0    # "pictureSizeIndex":I
    .end local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private executeTimemachineShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "allSetting"    # Z
    .param p3, "fromResetSetting"    # Z
    .param p4, "strPreviousShotMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 736
    const-string v3, "shotmode_hdr"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 738
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 739
    .local v2, "useHDR":Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 740
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 767
    .end local v2    # "useHDR":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 769
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v7}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 772
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 773
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    .line 774
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetOlaTimeMachineShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 775
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 776
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 777
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 778
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 779
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 780
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 784
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 785
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 786
    .local v0, "pictureSizeIndex":I
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 787
    .local v1, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 788
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 791
    :cond_2
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 792
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V

    .line 794
    if-eqz p2, :cond_a

    .line 795
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "shotmode_timemachine"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 800
    :goto_2
    return-void

    .line 741
    .end local v0    # "pictureSizeIndex":I
    .end local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_3
    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 742
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPlanePanoramaEngine()V

    .line 743
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 744
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v7}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 745
    :cond_4
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 746
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 747
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 748
    :cond_5
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 749
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "burst-shot"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    :cond_6
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 753
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 754
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 755
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 756
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 758
    :cond_7
    const-string v3, "shotmode_refocus"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 759
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/command/setting/SetCameraShotMode;->resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 760
    :cond_8
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 761
    if-nez p2, :cond_0

    .line 762
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 763
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 782
    :cond_9
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 797
    .restart local v0    # "pictureSizeIndex":I
    .restart local v1    # "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_a
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private isTimeMachineShotModeOn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "shotMode"    # Ljava/lang/String;

    .prologue
    .line 1276
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_time_machine"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1279
    const-string p1, "shotmode_normal"

    .line 1281
    :cond_0
    const-string v0, "shotmode_timemachine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1282
    const-string p1, "shotmode_timemachine"

    .line 1294
    :cond_1
    :goto_0
    return-object p1

    .line 1283
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "shotmode_normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "not found"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1286
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCameraShotMode-start: Time machine On:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const-string p1, "shotmode_timemachine"

    goto :goto_0

    .line 1289
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_time_machine"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private removeRefocusShotImage()V
    .locals 6

    .prologue
    .line 1168
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isRefocusShotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1169
    const/4 v1, 0x0

    .line 1171
    .local v1, "refocusShotTempFileDelete":Z
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->deleteRefocusShotImages()Z

    move-result v1

    .line 1172
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setRefocusShotHasPictures(Z)V

    .line 1173
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/BubblePopupController;->initializeNotiComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refocusShotTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .end local v1    # "refocusShotTempFileDelete":Z
    :cond_0
    :goto_0
    return-void

    .line 1174
    .restart local v1    # "refocusShotTempFileDelete":Z
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refocusShotTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refocusShotTempFileDeleted ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private removeTimeMachineShotImage()V
    .locals 6

    .prologue
    .line 1298
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    const/4 v1, 0x0

    .line 1301
    .local v1, "timeMachineTempFileDelete":Z
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    move-result v1

    .line 1302
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 1303
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/BubblePopupController;->initializeNotiComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    .end local v1    # "timeMachineTempFileDelete":Z
    :cond_0
    :goto_0
    return-void

    .line 1304
    .restart local v1    # "timeMachineTempFileDelete":Z
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private setImageSizeAndRestartPreview(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 1414
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1415
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "doNotRestartPreview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1416
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-interface {v1, v2, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1417
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 1418
    return-void
.end method

.method private setImageSizeAndRestartPreviewForBeautyShot(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "changeMode"    # Z

    .prologue
    .line 1423
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1424
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "doNotRestartPreview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1425
    const-string v1, "doChangePrevieMode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1426
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-interface {v1, v2, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1427
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, p2}, Lcom/lge/camera/ControllerFunction;->setPreviewEffectForBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 1428
    return-void
.end method

.method private setPictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1322
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1323
    .local v3, "newPictureSize":Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_0

    .line 1325
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1326
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 1327
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 1328
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1329
    .local v1, "imageSizeArray":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1330
    .local v4, "size":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 1331
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 1332
    if-eqz v4, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    const/4 v6, 0x0

    aget v6, v4, v6

    if-ne v5, v6, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x1

    aget v6, v4, v6

    if-ne v5, v6, :cond_1

    .line 1336
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1337
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPictureSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    .end local v0    # "i":I
    .end local v1    # "imageSizeArray":[Ljava/lang/CharSequence;
    .end local v2    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v4    # "size":[I
    :cond_0
    return-void

    .line 1330
    .restart local v0    # "i":I
    .restart local v1    # "imageSizeArray":[Ljava/lang/CharSequence;
    .restart local v2    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .restart local v4    # "size":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setPictureSizeMenuEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1348
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, "shotMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "shotmode_dual_camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1351
    iput-boolean v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 1353
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    if-nez v1, :cond_2

    .line 1354
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1355
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_picturesize"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1367
    :cond_1
    :goto_0
    return-void

    .line 1358
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1359
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_picturesize"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1362
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "releaseEngine call in SetCameraShotMode"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    const-string v2, "AutoPanorama"

    invoke-virtual {v1, v2}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1364
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "AutoPanorama"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->releaseEngine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPictureSizeWithPreviousValue(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getPreviousPictureSize()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "size":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1316
    iput-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 1317
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_picturesize"

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1319
    :cond_0
    return-void
.end method

.method private setVideoSizeFullHD(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    const/16 v7, 0x780

    const/4 v6, 0x0

    .line 1431
    const/4 v3, 0x0

    .line 1432
    .local v3, "videoSize":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1433
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 1434
    .local v2, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    if-lt v4, v7, :cond_1

    .line 1435
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1436
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, v7, :cond_0

    .line 1437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1441
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1443
    :cond_2
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "video-size"

    invoke-virtual {v4, v5, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    .end local v2    # "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    return-void
.end method

.method private showHelpGuideDialog(Ljava/lang/String;)Z
    .locals 5
    .param p1, "shotMode"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x68

    const/4 v4, 0x1

    .line 1222
    const/4 v0, 0x1

    .line 1223
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->onDismissRotateDialog()V

    .line 1227
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isFromGridView:Z

    if-eqz v1, :cond_1

    .line 1228
    const-string v1, "shotmode_continuous"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1229
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "continuous"

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1249
    :cond_1
    :goto_0
    const-string v1, "shotmode_panorama"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1250
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "panorama"

    const/16 v3, 0x66

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1272
    :cond_2
    :goto_1
    return v0

    .line 1231
    :cond_3
    const-string v1, "shotmode_full_continuous"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1232
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1233
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "burst"

    const/16 v3, 0x6d

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 1236
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "continuous"

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 1239
    :cond_5
    const-string v1, "shotmode_hdr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1240
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "hdr"

    const/16 v3, 0x65

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 1242
    :cond_6
    const-string v1, "shotmode_main_beauty"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "shotmode_front_beauty"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1244
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "beauty_shot"

    const/16 v3, 0x69

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 1252
    :cond_8
    const-string v1, "shotmode_plane_panorama"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1253
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "plane_panorama"

    const/16 v3, 0x7a

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1

    .line 1255
    :cond_9
    const-string v1, "shotmode_free_panorama"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1256
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "free_panorama"

    const/16 v3, 0x6c

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1

    .line 1258
    :cond_a
    const-string v1, "shotmode_timemachine"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1259
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "timemachine"

    const/16 v3, 0x67

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto/16 :goto_1

    .line 1261
    :cond_b
    const-string v1, "shotmode_clear_shot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1262
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "clear_shot"

    const/16 v3, 0x73

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto/16 :goto_1

    .line 1264
    :cond_c
    const-string v1, "shotmode_dual_camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1265
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "dual_camera"

    const/16 v3, 0x74

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto/16 :goto_1

    .line 1268
    :cond_d
    const-string v1, "shotmode_refocus"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1269
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "refocus"

    const/16 v3, 0x7c

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto/16 :goto_1
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 11
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 54
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 55
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "allSetting"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    .local v0, "allSetting":Z
    const-string v8, "mode_menu_command"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 57
    .local v3, "isModeMenuCommand":Z
    const-string v8, "isFromResetMenu"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 59
    .local v2, "fromResetSetting":Z
    if-nez v0, :cond_0

    .line 60
    const-string v8, "fromGridView"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isFromGridView:Z

    .line 63
    :cond_0
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_shot_mode"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "shotMode":Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "strPreviousShotMode":Ljava/lang/String;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SetCameraShotMode-start: currentshotmode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " previousshotmode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 69
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v9, Lcom/lge/camera/command/setting/SetCameraShotMode$1;

    invoke-direct {v9, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$1;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 84
    invoke-direct {p0, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->isTimeMachineShotModeOn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 87
    const-string v8, "on"

    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_smart_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 88
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_smart_mode"

    const-string v10, "off"

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    const-string v8, "shotmode_dual_camera"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "shotmode_main_beauty"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 91
    :cond_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v6, "smart":Landroid/os/Bundle;
    const-string v8, "shot_mode_smart"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v8, v9, p1, v6}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    move-object v4, p1

    .line 95
    .local v4, "params":Lcom/lge/hardware/LGCamera$LGParameters;
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v9, Lcom/lge/camera/command/setting/SetCameraShotMode$2;

    invoke-direct {v9, p0, v4}, Lcom/lge/camera/command/setting/SetCameraShotMode$2;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;Lcom/lge/hardware/LGCamera$LGParameters;)V

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    .end local v4    # "params":Lcom/lge/hardware/LGCamera$LGParameters;
    .end local v6    # "smart":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 103
    :cond_3
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v8, v9, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_4
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, p1, v9, v10}, Lcom/lge/camera/ControllerFunction;->checkSceneMode(Lcom/lge/hardware/LGCamera$LGParameters;ZLjava/lang/String;)V

    .line 109
    const-string v8, "shotmode_front_beauty"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "shotmode_main_beauty"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 111
    const-string v8, "CameraApp"

    const-string v9, "beautyshot controll false!"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 116
    :cond_5
    const-string v8, "shotmode_normal"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "not found"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 117
    :cond_6
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeNormalOrNotFoundShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    .line 158
    :cond_7
    :goto_1
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportShotModeModel()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 161
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_shot_mode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 162
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_time_machine"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 164
    :cond_8
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pictureSizeString ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeMenuEnable()V

    .line 167
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSize(Landroid/hardware/Camera$Parameters;)V

    .line 169
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "shotmode_full_continuous"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 171
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V

    .line 173
    :cond_9
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "com.lge.camera.command.setting.SetSuperZoom"

    invoke-interface {v8, v9, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v8, "CameraApp"

    const-string v9, "SetCameraShotMode-end"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_a
    const-string v8, "shotmode_continuous"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 120
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeContinuousShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 122
    :cond_b
    const-string v8, "shotmode_panorama"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 123
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executePanoramaShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :cond_c
    const-string v8, "shotmode_plane_panorama"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 126
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executePlanePanoramaShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_d
    const-string v8, "shotmode_free_panorama"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 129
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeFreePanoramaShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 131
    :cond_e
    const-string v8, "shotmode_hdr"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 132
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeHdrShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :cond_f
    const-string v8, "shotmode_timemachine"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 135
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeTimemachineShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_10
    const-string v8, "shotmode_full_continuous"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 138
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeFullFrameContinuousShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :cond_11
    const-string v8, "shotmode_main_beauty"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 141
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeMainBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :cond_12
    const-string v8, "shotmode_front_beauty"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 144
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeFrontBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 146
    :cond_13
    const-string v8, "shotmode_clear_shot"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 147
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeClearShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 149
    :cond_14
    const-string v8, "shotmode_dual_camera"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 150
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeDualCameraShotMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1

    .line 153
    :cond_15
    const-string v8, "shotmode_refocus"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 154
    invoke-direct {p0, p1, v0, v2, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeRefocusMode(Lcom/lge/hardware/LGCamera$LGParameters;ZZLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onExecuteAlone()V
    .locals 5

    .prologue
    .line 1186
    const-string v2, "CameraApp"

    const-string v3, "SetCameraShotMode onExecuteAlone()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1219
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, "shotMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shotmode_timemachine"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1197
    :cond_1
    const-string v2, "shotmode_timemachine"

    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraShotMode;->showHelpGuideDialog(Ljava/lang/String;)Z

    .line 1198
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_timemachine"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 1204
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shotmode_panorama"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1205
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 1208
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/command/setting/SetCameraShotMode$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$3;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1216
    .end local v1    # "shotMode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "NullPointerException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1200
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "shotMode":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->showHelpGuideDialog(Ljava/lang/String;)Z

    .line 1201
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public resetRefocusShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "fromResetSetting"    # Z

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeRefocusShotImage()V

    .line 290
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "af-bracket"

    const-string v2, "af-bracket-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setRefocusShotPreviewGuideVisibility(Z)V

    .line 292
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_main_beauty"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, v3}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 295
    :cond_0
    return-void
.end method
