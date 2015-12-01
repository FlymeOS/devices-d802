.class public Lcom/lge/camera/command/ShowCamera3dDepth;
.super Lcom/lge/camera/command/Command;
.source "ShowCamera3dDepth.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    return-void
.end method

.method private handleQuickFunction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showZoomController(Z)V

    .line 55
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showBrightnessController(Z)V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->show3dDepthController(Z)V

    .line 59
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    .line 26
    const-string v0, "CameraApp"

    const-string v1, "showCamera3dDepth is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 30
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ClearScreen"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 35
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetDisplayTimeout3dDepth()V

    .line 46
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_3d_depth"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 43
    invoke-direct {p0}, Lcom/lge/camera/command/ShowCamera3dDepth;->handleQuickFunction()V

    .line 44
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 45
    iget-object v0, p0, Lcom/lge/camera/command/ShowCamera3dDepth;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto :goto_0
.end method
