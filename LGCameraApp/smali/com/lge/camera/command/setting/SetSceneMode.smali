.class public Lcom/lge/camera/command/setting/SetSceneMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetSceneMode.java"


# instance fields
.field private isFromGridView:Z

.field private mBackupSceneMode:Ljava/lang/String;

.field private newSelectedSceneMode:Ljava/lang/String;

.field private noNeedRestartPreview:Z

.field private oldSceneModeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    .line 33
    const-string v0, "auto"

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mBackupSceneMode:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->isFromGridView:Z

    .line 35
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->noNeedRestartPreview:Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetSceneMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/setting/SetSceneMode;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetSceneMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/setting/SetSceneMode;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->noNeedRestartPreview:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/command/setting/SetSceneMode;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/setting/SetSceneMode;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetSceneMode;->showHelpGuideDialog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkOtherSettings(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "allSetting"    # Z

    .prologue
    .line 140
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 143
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_whitebalance"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_whitebalance"

    const-string v3, "auto"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 148
    :cond_0
    const-string v1, "not found"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "none"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_coloreffect"

    const-string v3, "none"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    const-string v1, "none"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 154
    :cond_1
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_iso"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_iso"

    const-string v3, "auto"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    const-string v1, "iso"

    const-string v2, "auto"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "flashMode":Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_4

    .line 163
    const-string v1, "night"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    const-string v0, "off"

    .line 166
    :cond_3
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/setting/SetSceneMode$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetSceneMode$2;-><init>(Lcom/lge/camera/command/setting/SetSceneMode;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private setLightFrameMenu(Ljava/lang/String;)V
    .locals 4
    .param p1, "shotMode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 131
    const-string v0, "shotmode_dual_camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_light"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_light"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private showHelpGuideDialog(Ljava/lang/String;)Z
    .locals 5
    .param p1, "sceneMode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-boolean v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->isFromGridView:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    const/4 v0, 0x1

    .line 183
    .local v0, "retVal":Z
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->onDismissRotateDialog()V

    .line 187
    :cond_2
    const-string v2, "night"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "night"

    const/16 v4, 0x78

    invoke-interface {v2, v3, v4, v1}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 190
    :cond_3
    const-string v2, "sports"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "sports"

    const/16 v4, 0x77

    invoke-interface {v2, v3, v4, v1}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetSceneMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 9
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 43
    const-string v4, "CameraApp"

    const-string v5, "SetSceneMode"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p2

    .line 45
    check-cast v1, Landroid/os/Bundle;

    .line 46
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "allSetting"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    .local v0, "allSetting":Z
    const-string v4, "mode_menu_command"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 48
    .local v2, "isModeMenuCommand":Z
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetSceneMode;->noNeedRestartPreview:Z

    .line 49
    if-nez v0, :cond_0

    .line 50
    const-string v4, "fromGridView"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->isFromGridView:Z

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    .line 54
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_scene_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    .line 56
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isIndicatorControllerInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/command/setting/SetSceneMode$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/command/setting/SetSceneMode$1;-><init>(Lcom/lge/camera/command/setting/SetSceneMode;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/lge/camera/command/setting/SetSceneMode;->checkOtherSettings(Landroid/hardware/Camera$Parameters;Z)V

    .line 66
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "shotMode":Ljava/lang/String;
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 68
    const-string v4, "on"

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_smart_mode"

    const-string v6, "off"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 71
    iput-boolean v8, p0, Lcom/lge/camera/command/setting/SetSceneMode;->noNeedRestartPreview:Z

    .line 128
    :goto_0
    return-void

    .line 74
    :cond_2
    const-string v4, "shotmode_normal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "auto"

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 76
    const-string v4, "shotmode_dual_camera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    iput-boolean v8, p0, Lcom/lge/camera/command/setting/SetSceneMode;->noNeedRestartPreview:Z

    .line 80
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    iput-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mBackupSceneMode:Ljava/lang/String;

    .line 81
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_normal"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "shotmode_normal"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 84
    const-string v3, "shotmode_normal"

    .line 85
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 86
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 90
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 91
    invoke-direct {p0, v3}, Lcom/lge/camera/command/setting/SetSceneMode;->setLightFrameMenu(Ljava/lang/String;)V

    .line 94
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "auto"

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mBackupSceneMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 97
    :cond_6
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "####### scene mode set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "shotmode_panorama"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "shotmode_plane_panorama"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "shotmode_free_panorama"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "shotmode_continuous"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "shotmode_full_continuous"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "shotmode_hdr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "shotmode_dual_camera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "shotmode_refocus"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    if-eq v4, v8, :cond_7

    const-string v4, "night"

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 110
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_flash"

    invoke-interface {v4, v5, v7, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 114
    :goto_1
    const-string v4, "auto"

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mBackupSceneMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 115
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_scene_mode"

    iget-object v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mBackupSceneMode:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mBackupSceneMode:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 117
    const-string v4, "auto"

    iput-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mBackupSceneMode:Ljava/lang/String;

    .line 123
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setMenuEnableForSceneMode(I)V

    .line 124
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_scene_mode"

    invoke-interface {v4, v5, v8, v8}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 125
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 127
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetSuperZoom"

    invoke-interface {v4, v5, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_flash"

    invoke-interface {v4, v5, v8, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 119
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_scene_mode"

    iget-object v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetSceneMode$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetSceneMode$3;-><init>(Lcom/lge/camera/command/setting/SetSceneMode;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method
