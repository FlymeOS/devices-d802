.class public Lcom/lge/camera/command/ShowZoom;
.super Lcom/lge/camera/command/Command;
.source "ShowZoom.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    const-string v1, "CameraApp"

    const-string v2, "ShowZoom is EXECUTE !!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ClearScreen"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v4, 0xbb8

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 36
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-ne v1, v8, :cond_2

    .line 44
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->resetDisplayTimeoutZoom()V

    .line 67
    :goto_0
    return-void

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_zoom"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "menuIndex":I
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0, v7}, Lcom/lge/camera/ControllerFunction;->setQFLMenuSelected(IZ)V

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v8}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 56
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->showBrightnessController(Z)V

    .line 57
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 58
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 59
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->showZoomController(Z)V

    .line 61
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->show3dDepthController(Z)V

    .line 65
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 66
    iget-object v1, p0, Lcom/lge/camera/command/ShowZoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto :goto_0
.end method
