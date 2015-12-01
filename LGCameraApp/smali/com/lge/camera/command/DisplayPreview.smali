.class public Lcom/lge/camera/command/DisplayPreview;
.super Lcom/lge/camera/command/Command;
.source "DisplayPreview.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 27
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/DisplayPreview;->execute(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 35
    const-string v2, "CameraApp"

    const-string v3, "DisplayPreview - start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-string v2, "CameraApp"

    const-string v3, "DisplayPreview - pausing state, so return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 41
    check-cast v0, Landroid/os/Bundle;

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "fromJpegCallback"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 43
    .local v1, "fromJpegCallback":Z
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCameraKeyLongPressed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const-string v2, "CameraApp"

    const-string v3, "setAudioFocus  abandon in displayPreview"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showPreview()V

    .line 62
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 64
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 65
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 67
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 68
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 69
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->showSubButtonInit(Z)V

    .line 70
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->showDefaultQuickButton(Z)V

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 74
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_9

    .line 94
    const-string v2, "face_tracking"

    iget-object v3, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_refocus"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 103
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeAllImageList()V

    .line 109
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->keepScreenOnAwhile()V

    .line 111
    const-string v2, "CameraApp"

    const-string v3, "DisplayPreview - end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 77
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 81
    :cond_6
    if-nez v1, :cond_8

    .line 82
    const-string v2, "CameraApp"

    const-string v3, "DisplayPreview thumbnail update"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v4, 0xc8

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 84
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_continuous"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 85
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "StorageControllerLockKey"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    .line 87
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.Rotate"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 89
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "StorageControllerLockKey"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/command/DisplayPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    goto :goto_2
.end method
