.class public Lcom/lge/camera/module/PanoramaShot;
.super Lcom/lge/camera/module/Module;
.source "PanoramaShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    const-string v0, "CameraApp"

    const-string v1, "Panorama Module Create !!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

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
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public stopByUserAction()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public takePicture()Z
    .locals 2

    .prologue
    .line 26
    const-string v0, "CameraApp"

    const-string v1, "Panorama Module takePicture...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 29
    iget-object v0, p0, Lcom/lge/camera/module/PanoramaShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/PanoramaShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/PanoramaShot$1;-><init>(Lcom/lge/camera/module/PanoramaShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
