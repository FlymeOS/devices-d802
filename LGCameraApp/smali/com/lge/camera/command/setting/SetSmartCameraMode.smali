.class public Lcom/lge/camera/command/setting/SetSmartCameraMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetSmartCameraMode.java"


# instance fields
.field private isFromGridView:Z

.field private mSmartModeValueOn:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->isFromGridView:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/setting/SetSmartCameraMode;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/setting/SetSmartCameraMode;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/command/setting/SetSmartCameraMode;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/command/setting/SetSmartCameraMode;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->setSmartMode(ZI)V

    return-void
.end method

.method private setSmartMode(ZI)V
    .locals 3
    .param p1, "smartMode"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    if-nez p2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez p1, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerVisible(Z)V

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isShutterButtonEnable()Z

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 184
    return-void

    :cond_0
    move v0, v1

    .line 177
    goto :goto_0

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez p1, :cond_2

    :goto_2
    const/4 v1, 0x0

    invoke-interface {v2, v0, p2, v1}, Lcom/lge/camera/ControllerFunction;->qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 11
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 39
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 40
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "allSetting"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    .local v0, "allSetting":Z
    const-string v7, "mode_menu_command"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 42
    .local v3, "isModeMenuCommand":Z
    const-string v7, "shot_mode_smart"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 44
    .local v4, "isShotMode":Z
    if-nez v0, :cond_0

    .line 45
    const-string v7, "fromGridView"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->isFromGridView:Z

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->checkMediator()Z

    move-result v7

    if-nez v7, :cond_1

    .line 128
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_smart_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "value":Ljava/lang/String;
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "## SetSmartCameraMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v7

    if-nez v7, :cond_2

    .line 55
    iput-boolean v10, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z

    .line 56
    const-string v7, "CameraApp"

    const-string v8, "SetSmartCameraMode : model is not supported."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 61
    const-string v7, "shotmode_normal"

    iget-object v8, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_shot_mode"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 62
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_normal"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "shotmode_normal"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v7, "auto"

    iget-object v8, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_scene_mode"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 67
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_scene_mode"

    const-string v9, "auto"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetSceneMode"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v2, "fromGridView":Landroid/os/Bundle;
    const-string v7, "fromGridView"

    iget-boolean v8, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->isFromGridView:Z

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v7, v8, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 76
    .end local v2    # "fromGridView":Landroid/os/Bundle;
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_6

    .line 77
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "on"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "face_tracking"

    iget-object v8, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_focus"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 81
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isfacePreviewInitialized()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 82
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 85
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "on"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v7, p1, v8}, Lcom/lge/camera/ControllerFunction;->setSmartCameraMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 86
    const-string v7, "on"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z

    .line 87
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_smart_mode"

    invoke-interface {v7, v8, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    if-nez v0, :cond_6

    .line 90
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v10}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 93
    move-object v5, p1

    .line 94
    .local v5, "lgParams":Lcom/lge/hardware/LGCamera$LGParameters;
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;

    invoke-direct {v8, p0, v5, v4}, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;-><init>(Lcom/lge/camera/command/setting/SetSmartCameraMode;Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    .end local v5    # "lgParams":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_6
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;

    invoke-direct {v8, p0, v0}, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;-><init>(Lcom/lge/camera/command/setting/SetSmartCameraMode;Z)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSmartCameraMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 141
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 152
    :cond_3
    :goto_1
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->isFromGridView:Z

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "smart_camera_mode"

    const/16 v2, 0x6e

    invoke-interface {v0, v1, v2, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 160
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 161
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 163
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "night"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetSmartCameraMode$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetSmartCameraMode$3;-><init>(Lcom/lge/camera/command/setting/SetSmartCameraMode;)V

    const-wide/16 v2, 0x28a

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_6

    .line 143
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 144
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_7

    .line 146
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 147
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto/16 :goto_1
.end method
