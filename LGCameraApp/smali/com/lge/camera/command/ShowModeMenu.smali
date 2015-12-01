.class public Lcom/lge/camera/command/ShowModeMenu;
.super Lcom/lge/camera/command/Command;
.source "ShowModeMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    const-string v0, "CameraApp"

    const-string v1, "ShowModeMenu is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->recordingControllerHide()V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 30
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v4, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 33
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 35
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 40
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 43
    iget-object v0, p0, Lcom/lge/camera/command/ShowModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showShotModeMenu()V

    .line 44
    return-void
.end method
