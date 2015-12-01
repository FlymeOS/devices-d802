.class public Lcom/lge/camera/command/setting/SetVideoRecordMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVideoRecordMode.java"


# instance fields
.field private isFromGridView:Z

.field private mRequestedRecordMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->isFromGridView:Z

    .line 38
    return-void
.end method

.method private showHelpPopup(Ljava/lang/String;)Z
    .locals 5
    .param p1, "recordingMode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 340
    const/4 v0, 0x1

    .line 341
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->onDismissRotateDialog()V

    .line 345
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->isFromGridView:Z

    if-eqz v1, :cond_1

    .line 346
    const-string v1, "recordmode_wdr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "hdr_movie"

    const/16 v3, 0x76

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 357
    :cond_1
    :goto_0
    const-string v1, "recordmode_dual"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "dual_recording"

    const/16 v3, 0x70

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 368
    :cond_2
    :goto_1
    return v0

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "wdr"

    const/16 v3, 0x6f

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 360
    :cond_4
    const-string v1, "recordmode_smart_zoom"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 361
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "smart_zoom"

    const/16 v3, 0x75

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1

    .line 363
    :cond_5
    const-string v1, "recordmode_live_effect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "live_effect"

    const/16 v3, 0x6b

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 9
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "argValue":Z
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    .line 52
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v3, p2

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .local v3, "recordMode":Ljava/lang/String;
    iput-object v3, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    .line 61
    :goto_0
    move v0, v1

    .line 63
    .local v0, "allSetting":Z
    instance-of v5, p2, Landroid/os/Bundle;

    if-eqz v5, :cond_0

    move-object v2, p2

    .line 64
    check-cast v2, Landroid/os/Bundle;

    .line 65
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 66
    const-string v5, "fromGridView"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->isFromGridView:Z

    .line 70
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "strPreviousRecordMode":Ljava/lang/String;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetVideoRecordMode-start: CurrentRecordmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PreviousRecordmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v5, "recordmode_normal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "not found"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    :cond_1
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeNormalRecordMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V

    .line 90
    :cond_2
    :goto_1
    const-string v5, "CameraApp"

    const-string v6, "SetVideoRecordMode-end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .end local v0    # "allSetting":Z
    .end local v3    # "recordMode":Ljava/lang/String;
    .end local v4    # "strPreviousRecordMode":Ljava/lang/String;
    :cond_3
    move-object v2, p2

    .line 56
    check-cast v2, Landroid/os/Bundle;

    .line 57
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v5, "allSetting"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 58
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "recordMode":Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "allSetting":Z
    .restart local v4    # "strPreviousRecordMode":Ljava/lang/String;
    :cond_4
    const-string v5, "recordmode_wdr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeWDRRecordMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V

    goto :goto_1

    .line 79
    :cond_5
    const-string v5, "recordmode_live_effect"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 80
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 81
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeLiveEffectRecordMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V

    goto :goto_1

    .line 82
    :cond_6
    const-string v5, "recordmode_dual"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 83
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 84
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeDualRecordMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V

    goto :goto_1

    .line 85
    :cond_7
    const-string v5, "recordmode_smart_zoom"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 87
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeSmartZoomMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public executeDualRecordMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "strPreviousRecordMode"    # Ljava/lang/String;
    .param p3, "allSetting"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 226
    const-string v2, "recordmode_wdr"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "video-hdr"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    .line 244
    .local v0, "pipMaskIndex":I
    if-eqz p3, :cond_1

    .line 245
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 246
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getDualCamcorderPIPIndex(Landroid/content/Context;)I

    move-result v0

    .line 252
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 253
    const/4 v0, 0x1

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentPIPMask(I)V

    .line 258
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 259
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_dual_recording"

    const-string v4, "on"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_auto_review"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 265
    const-string v1, "key_video_auto_review"

    .line 266
    .local v1, "settingValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    .end local v1    # "settingValue":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetDualRecording"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "recordmode_dual"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 274
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 275
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 276
    return-void

    .line 230
    .end local v0    # "pipMaskIndex":I
    :cond_3
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "video-wdr"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_4
    const-string v2, "recordmode_live_effect"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "off"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_5
    const-string v2, "recordmode_smart_zoom"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    goto/16 :goto_0

    .line 249
    .restart local v0    # "pipMaskIndex":I
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getFrontDualCamcorderPIPIndex(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_1
.end method

.method public executeLiveEffectRecordMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "strPreviousRecordMode"    # Ljava/lang/String;
    .param p3, "allSetting"    # Z

    .prologue
    const/4 v10, 0x0

    .line 166
    const-string v7, "recordmode_wdr"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 179
    :cond_0
    :goto_0
    const-string v7, "recordmode_live_effect"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "off"

    iget-object v8, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getLiveEffect()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez p3, :cond_4

    .line 182
    :cond_1
    const/4 v1, 0x1

    .line 184
    .local v1, "faceIndex":I
    if-eqz p3, :cond_2

    .line 185
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v7

    if-nez v7, :cond_7

    .line 186
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLiveEffectFaceIndex(Landroid/content/Context;)I

    move-result v1

    .line 192
    :goto_1
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 193
    const/4 v1, 0x1

    .line 197
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 198
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_video_record_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v3

    .line 200
    .local v3, "menuIndex":I
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v6}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 201
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_video_record_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 202
    .local v4, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_3

    .line 203
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v3}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 204
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v8, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "recordmode_live_effect"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getChildIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(I)Z

    .line 205
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 213
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "recordmode_live_effect"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 215
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v2, "isOpen":Landroid/os/Bundle;
    const-string v7, "menu_open"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.ShowLiveEffectSubMenuDrawer"

    invoke-interface {v7, v8, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    .end local v1    # "faceIndex":I
    .end local v2    # "isOpen":Landroid/os/Bundle;
    .end local v3    # "menuIndex":I
    .end local v4    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_preview_size_on_device"

    invoke-interface {v7, v8, v10, v10}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 222
    return-void

    .line 168
    :cond_5
    const-string v7, "recordmode_dual"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 171
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_6
    const-string v7, "recordmode_smart_zoom"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 176
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .restart local v1    # "faceIndex":I
    :cond_7
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->getFrontLiveEffectFaceIndex(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_1

    .line 207
    .restart local v3    # "menuIndex":I
    .restart local v4    # "pref":Lcom/lge/camera/setting/ListPreference;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex(Ljava/lang/String;)I

    move-result v5

    .line 208
    .local v5, "settingMenuIndex":I
    const-string v7, "recordmode_live_effect"

    invoke-virtual {v4, v7}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "childIndex":I
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v5, v0}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(II)Z

    goto :goto_2
.end method

.method public executeNormalRecordMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "strPreviousRecordMode"    # Ljava/lang/String;
    .param p3, "allSetting"    # Z

    .prologue
    const/4 v8, 0x0

    .line 95
    const-string v5, "recordmode_wdr"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 96
    const-string v4, "off"

    .line 98
    .local v4, "sVideoFps":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 99
    .local v3, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v4

    .line 103
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    const-string v5, "hw.camcorder.fpsrange"

    const-string v6, "15000,30000"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "fps":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "fpsRange":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "video-hfr"

    invoke-virtual {v5, v6, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "preview-format"

    const-string v7, "nv12-venus"

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 111
    .local v2, "iVideoFps":I
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 113
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HFR mode Min FPS is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Max FPS is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v0    # "fps":Ljava/lang/String;
    .end local v1    # "fpsRange":[Ljava/lang/String;
    .end local v2    # "iVideoFps":I
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "video-hdr"

    const-string v7, "off"

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v3    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v4    # "sVideoFps":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "dual-recorder"

    invoke-virtual {v5, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 139
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 140
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "recordmode_normal"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 141
    return-void

    .line 119
    .restart local v3    # "pref":Lcom/lge/camera/setting/ListPreference;
    .restart local v4    # "sVideoFps":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "video-wdr"

    const-string v7, "off"

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v3    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v4    # "sVideoFps":Ljava/lang/String;
    :cond_4
    const-string v5, "recordmode_live_effect"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 122
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 123
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "off"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-interface {v5, v6, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_5
    const-string v5, "recordmode_dual"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 127
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_dual_recording"

    const-string v7, "off"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetDualRecording"

    invoke-interface {v5, v6, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_6
    const-string v5, "recordmode_smart_zoom"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 132
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_zoom"

    const-string v7, "off"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetSmartZoomRecording"

    invoke-interface {v5, v6, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 135
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    goto/16 :goto_0
.end method

.method public executeSmartZoomMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "strPreviousRecordMode"    # Ljava/lang/String;
    .param p3, "allSetting"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    const-string v2, "recordmode_wdr"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "video-hdr"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, "pipMaskIndex":I
    if-eqz p3, :cond_1

    .line 296
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 297
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getSmartZoomPIPIndex(Landroid/content/Context;)I

    move-result v0

    .line 303
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 304
    const/4 v0, 0x1

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentPIPMask(I)V

    .line 309
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_auto_review"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 312
    const-string v1, "key_video_auto_review"

    .line 313
    .local v1, "settingValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    .end local v1    # "settingValue":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_zoom"

    const-string v4, "on"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 316
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetSmartZoomRecording"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "recordmode_smart_zoom"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 321
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 322
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 323
    return-void

    .line 284
    .end local v0    # "pipMaskIndex":I
    :cond_3
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "video-wdr"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :cond_4
    const-string v2, "recordmode_live_effect"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 287
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "off"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_5
    const-string v2, "recordmode_dual"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 300
    .restart local v0    # "pipMaskIndex":I
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getFrontSmartZoomPIPIndex(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_1
.end method

.method public executeWDRRecordMode(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "strPreviousRecordMode"    # Ljava/lang/String;
    .param p3, "allSetting"    # Z

    .prologue
    .line 145
    const-string v0, "recordmode_dual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_dual_recording"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetDualRecording"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetWDRRecording"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "recordmode_wdr"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 161
    return-void

    .line 149
    :cond_1
    const-string v0, "recordmode_live_effect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "recordmode_smart_zoom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_smart_zoom"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetSmartZoomRecording"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 4

    .prologue
    .line 327
    const-string v1, "CameraApp"

    const-string v2, "SetVideoRecordMode onExecuteAlone()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "recordingMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_0
    invoke-direct {p0, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->showHelpPopup(Ljava/lang/String;)Z

    .line 337
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    goto :goto_0
.end method
