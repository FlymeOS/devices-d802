.class public Lcom/lge/camera/command/RemoveSettingMenu;
.super Lcom/lge/camera/command/Command;
.source "RemoveSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/RemoveSettingMenu;->execute(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 33
    const-string v2, "CameraApp"

    const-string v3, "RemoveSettingMenu"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 35
    check-cast v0, Landroid/os/Bundle;

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "showAll"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 38
    .local v1, "showAll":Z
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 40
    if-eqz v1, :cond_2

    .line 41
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubCameraModeRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 43
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeSettingView()V

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 54
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->showSubButtonInit(Z)V

    .line 56
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 61
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4, v1}, Lcom/lge/camera/ControllerFunction;->showControllerForHideSettingMenu(ZZ)V

    .line 65
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x64

    invoke-interface {v2, v3, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 66
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 67
    return-void

    .line 47
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHideQFLWhenSettingMenuDisplay()Z

    move-result v2

    if-nez v2, :cond_3

    .line 48
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 49
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 51
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeSettingViewAll()V

    goto :goto_0

    .line 59
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/RemoveSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    goto :goto_1
.end method
