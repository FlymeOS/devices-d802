.class public Lcom/lge/camera/command/ResetMenu;
.super Lcom/lge/camera/command/Command;
.source "ResetMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 32
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 38
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v11

    .line 40
    .local v11, "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v11, :cond_0

    .line 41
    const-string v0, "CameraApp"

    const-string v1, "prefGroup null error"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "ResetMenu - start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetSettingMenu()V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v10

    .line 53
    .local v10, "parameters":Lcom/lge/hardware/LGCamera$LGParameters;
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 55
    .local v13, "shotMode":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_8

    .line 57
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_smart_mode"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v0, v1, v10}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "shotmode_timemachine"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "DefaultNormalShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_time_machine"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_normal"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNonZSLMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    const-string v0, "CameraApp"

    const-string v1, "#### param set zsl off"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v10}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "zsl"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "subMenuClicked"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SetTimeMachineMode"

    invoke-interface {v0, v1, v6}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "shotmode_normal"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 105
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 108
    :cond_5
    invoke-virtual {v11}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v12

    .line 109
    .local v12, "prefSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v12, :cond_a

    .line 110
    invoke-virtual {v11, v8}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v9

    .line 111
    .local v9, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 114
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 77
    .end local v8    # "i":I
    .end local v9    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v12    # "prefSize":I
    :cond_7
    const-string v0, "shotmode_normal"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "not found"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 79
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 80
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string v0, "isFromResetMenu"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v13}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "DefaultNormalShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_normal"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-interface {v0, v1, v10, v6}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "shotmode_normal"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v0, v1, v10}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v0, v1, v10}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_8
    const-string v0, "shotmode_normal"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "not found"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "DefaultNormalShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_normal"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-interface {v0, v1, v10}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "shotmode_normal"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_light"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setBackgroundColorBlack()V

    goto/16 :goto_1

    .line 118
    .restart local v8    # "i":I
    .restart local v12    # "prefSize":I
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetController()V

    .line 120
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 121
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.ApplyAllSettings"

    invoke-interface {v0, v1, v10}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0034

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v10}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_3
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenu(I)Z

    .line 133
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 134
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateStorageIndicator()V

    .line 135
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator()V

    .line 137
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->reload(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 141
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "640x480"

    iget-object v1, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-ne v0, v5, :cond_c

    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 146
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v14, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 151
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 152
    const-string v0, "CameraApp"

    const-string v1, "ResetMenu - end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :catch_0
    move-exception v7

    .line 129
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "CameraApp"

    const-string v1, "SetParam-RunTimeException:"

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 147
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_c
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 149
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v14, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_4
.end method
