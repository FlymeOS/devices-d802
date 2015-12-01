.class public Lcom/lge/camera/command/ShowSettingMenu;
.super Lcom/lge/camera/command/Command;
.source "ShowSettingMenu.java"


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
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const-string v1, "CameraApp"

    const-string v2, "ClickQuickFunctionButton5  !!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const-string v1, "CameraApp"

    const-string v2, "While capturing the photos, Does not display the settings menu."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowSettingMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 36
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->recordingControllerHide()V

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 40
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 41
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplaySettingMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 43
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ClearScreen"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 49
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHideQFLWhenSettingMenuDisplay()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_setting"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "menuIndex":I
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0, v4}, Lcom/lge/camera/ControllerFunction;->setQFLMenuSelected(IZ)V

    .line 56
    .end local v0    # "menuIndex":I
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 57
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/lge/camera/command/ShowSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    goto :goto_0
.end method
