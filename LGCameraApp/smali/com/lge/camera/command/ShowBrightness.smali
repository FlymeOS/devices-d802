.class public Lcom/lge/camera/command/ShowBrightness;
.super Lcom/lge/camera/command/Command;
.source "ShowBrightness.java"


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

.method private handleQuickFunction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showZoomController(Z)V

    .line 63
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 64
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showBrightnessController(Z)V

    .line 66
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->show3dDepthController(Z)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 73
    :cond_2
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    const/4 v3, 0x7

    .line 27
    const-string v1, "CameraApp"

    const-string v2, "ShowBrightness is EXECUTE !!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ClearScreen"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v4, 0xbb8

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 36
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 37
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->resetDisplayTimeoutBrightness()V

    .line 54
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 46
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_brightness"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "menuIndex":I
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/lge/camera/ControllerFunction;->setQFLMenuSelected(IZ)V

    .line 50
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/command/ShowBrightness;->handleQuickFunction()V

    .line 52
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 53
    iget-object v1, p0, Lcom/lge/camera/command/ShowBrightness;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto :goto_0
.end method
