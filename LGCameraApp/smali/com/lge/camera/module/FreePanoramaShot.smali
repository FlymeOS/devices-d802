.class public Lcom/lge/camera/module/FreePanoramaShot;
.super Lcom/lge/camera/module/Module;
.source "FreePanoramaShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    const-string v0, "CameraApp"

    const-string v1, "Free Panorama Module Create !!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/camera/module/FreePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public stopByUserAction()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public takePicture()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 26
    const-string v2, "CameraApp"

    const-string v3, "Free Panorama Module takePicture...."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/lge/camera/module/FreePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaEngineStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const-string v2, "CameraApp"

    const-string v3, "cannot start free panorama takePicture...."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/lge/camera/module/FreePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 30
    iget-object v2, p0, Lcom/lge/camera/module/FreePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 42
    :goto_0
    return v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/FreePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 35
    iget-object v0, p0, Lcom/lge/camera/module/FreePanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/FreePanoramaShot$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/FreePanoramaShot$1;-><init>(Lcom/lge/camera/module/FreePanoramaShot;)V

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v1

    .line 42
    goto :goto_0
.end method
