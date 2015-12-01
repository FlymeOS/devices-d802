.class public Lcom/lge/camera/command/ShowBeautyshot;
.super Lcom/lge/camera/command/Command;
.source "ShowBeautyshot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 24
    return-void
.end method

.method private handleQuickFunction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showZoomController(Z)V

    .line 61
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showBrightnessController(Z)V

    .line 62
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 63
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->show3dDepthController(Z)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 69
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "beauty_shot"

    const/16 v2, 0x69

    invoke-interface {v0, v1, v2, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    .line 74
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    .line 28
    const-string v0, "CameraApp"

    const-string v1, "ShowBeautyshot is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ClearScreen"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 38
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 39
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetDisplayTimeoutBeautyshot()V

    .line 51
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 46
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_beautyshot"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 47
    invoke-direct {p0}, Lcom/lge/camera/command/ShowBeautyshot;->handleQuickFunction()V

    .line 49
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 50
    iget-object v0, p0, Lcom/lge/camera/command/ShowBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto :goto_0
.end method
