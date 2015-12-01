.class public Lcom/lge/camera/command/SwapCameraDimension;
.super Lcom/lge/camera/command/SwapCamera;
.source "SwapCameraDimension.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/command/SwapCamera;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected checkSwap()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    const-string v2, "CameraApp"

    const-string v3, "SwapCameraDimension"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/lge/camera/command/SwapCameraDimension;->preExecuteSwapCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwapCameraDimension EXECUTE -start !!!, current_app_mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentCameraMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 37
    goto :goto_0
.end method

.method protected doSwapAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainCameraDimension(I)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->applyCameraChange()V

    .line 49
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->set3DSwitchImage()V

    .line 50
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->initQuickFunctionEnabled()V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->switchCameraId(I)V

    .line 58
    :goto_1
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setMainCameraDimension(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/SwapCameraDimension;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->switchCameraId(I)V

    goto :goto_1
.end method
