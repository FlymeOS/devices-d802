.class public Lcom/lge/camera/command/ShowQuickFunctionDragDrop;
.super Lcom/lge/camera/command/Command;
.source "ShowQuickFunctionDragDrop.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 26
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "CameraApp"

    const-string v1, "ShowQuickFunctionDragDrop executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->execute(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 37
    .local v0, "index":I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShowQuickFunctionDragDrop executed select index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "CameraApp"

    const-string v2, "While capturing the photos, Does not display the edit menu."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowQuickFunctionDragDrop"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const-string v1, "CameraApp"

    const-string v2, "While timer shot, Does not display the edit menu."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowQuickFunctionDragDrop"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSettingControllerVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeSettingViewAll()V

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeQuickFunctionSettingView()V

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 56
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->recordingControllerHide()V

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 60
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 61
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideOsd()V

    .line 62
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 64
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 68
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 71
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v4}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 72
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5, v4}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v4}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 75
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 80
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shotmode_panorama"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 84
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 85
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 87
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 88
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 90
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportShotModeModel()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-eq v1, v5, :cond_7

    .line 92
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 96
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x64

    invoke-interface {v1, v2, v6, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 97
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerVisible(Z)V

    .line 101
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionDragControllerSelectIndex(I)V

    .line 102
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionDragController()V

    .line 103
    iget-object v1, p0, Lcom/lge/camera/command/ShowQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x16

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto/16 :goto_0
.end method
