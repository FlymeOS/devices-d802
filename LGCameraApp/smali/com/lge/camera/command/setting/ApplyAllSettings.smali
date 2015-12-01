.class public Lcom/lge/camera/command/setting/ApplyAllSettings;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "ApplyAllSettings.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 32
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 11
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    const/4 v10, 0x1

    .line 36
    const-string v7, "CameraApp"

    const-string v8, "ApplyAllSettings-start"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    .line 42
    .local v5, "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v5, :cond_0

    .line 43
    const-string v7, "CameraApp"

    const-string v8, "prefGroup null error"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_1

    .line 48
    const-string v7, "on"

    iget-object v8, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_smart_mode"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 49
    const-string v7, "CameraApp"

    const-string v8, "Set SET_OPTIONAL_PARAMETERS again for The Intelligent Auto Shot when apply all settings."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "useSmartMode"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    const-string v7, "allSetting"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetOptionalParameters"

    invoke-interface {v7, v8, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v7, v8, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_4

    .line 64
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_hdr"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 65
    const-string v7, "CameraApp"

    const-string v8, "Set CAMERA_IMAGE_SIZE and SET_OPTIONAL_PARAMETERS again when apply all settings."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "HDRShot"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 68
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetZoom"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v8, 0x0

    invoke-interface {v7, p1, v8}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v7, "useHDR"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetOptionalParameters"

    invoke-interface {v7, v8, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 80
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 83
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_voiceshutter"

    const-string v9, "off"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v7, "allSetting"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v6

    .line 90
    .local v6, "prefSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_8

    .line 91
    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 92
    .local v4, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_5

    .line 93
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "listKey":Ljava/lang/String;
    const-string v7, "key_camera_anti_banding"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_6

    .line 100
    const-string v7, "CameraApp"

    const-string v8, "kddi ApplyAllSettings"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "listKey":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v3    # "listKey":Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_5

    .line 105
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCommandManager()Lcom/lge/camera/command/CommandManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v7

    instance-of v7, v7, Lcom/lge/camera/command/setting/SettingCommand;

    if-eqz v7, :cond_7

    .line 106
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v1, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 108
    :cond_7
    iget-object v7, p0, Lcom/lge/camera/command/setting/ApplyAllSettings;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 113
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "listKey":Ljava/lang/String;
    .end local v4    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_8
    const-string v7, "CameraApp"

    const-string v8, "ApplyAllSettings-end"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
