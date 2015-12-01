.class public Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;
.super Lcom/lge/camera/command/Command;
.source "ShowQuickFunctionSettingMenu.java"


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


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "CameraApp"

    const-string v1, "ShowQuickFunctionSettingMenu is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->execute(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 34
    .local v0, "key":Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowQuickFunctionSettingMenu is EXECUTE !!! + key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 37
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->recordingControllerHide()V

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 40
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x64

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 41
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 45
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shotmode_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 51
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 53
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 56
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportShotModeModel()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 58
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 64
    if-eqz v0, :cond_3

    .line 65
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "menuIndex":I
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1, v6}, Lcom/lge/camera/ControllerFunction;->setQFLMenuSelected(IZ)V

    .line 67
    iget-object v2, p0, Lcom/lge/camera/command/ShowQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->displayQuickFunctionSettingView(Ljava/lang/String;)V

    .line 69
    .end local v1    # "menuIndex":I
    :cond_3
    return-void
.end method
