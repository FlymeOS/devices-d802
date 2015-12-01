.class public Lcom/lge/camera/module/DefaultNormalShot;
.super Lcom/lge/camera/module/Module;
.source "DefaultNormalShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 26
    return-void
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_normal"

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
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/lge/camera/module/Module;->jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V

    .line 96
    return-void
.end method

.method protected processFinalJpegData([B)[B
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/lge/camera/module/Module;->processFinalJpegData([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected processJpegCallbackAfter(Z)V
    .locals 0
    .param p1, "isSuccessSave"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/lge/camera/module/Module;->processJpegCallbackAfter(Z)V

    .line 111
    return-void
.end method

.method protected savePictureInJpegCallback([B)Z
    .locals 1
    .param p1, "finalJpegData"    # [B

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/lge/camera/module/Module;->savePictureInJpegCallback([B)Z

    move-result v0

    return v0
.end method

.method public stopByUserAction()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public takePicture()Z
    .locals 8

    .prologue
    const v7, 0x7f0a0323

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 45
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK [Module]DefaultNormalShot::takePicture-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->perfLockAcquire()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 54
    const-string v1, "CameraApp"

    const-string v2, "#### Device().takePicture()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v3, p0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/ControllerFunction;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/lge/camera/listeners/JpegPictureCallback;

    invoke-direct {v5, p0}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 74
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getNeedProgressDuringCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lge/camera/module/DefaultNormalShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/DefaultNormalShot$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/DefaultNormalShot$1;-><init>(Lcom/lge/camera/module/DefaultNormalShot;)V

    const-wide/16 v4, 0x3e8

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 88
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "[Module]DefaultNormalShot::takePicture-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_1
    return v6

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture  failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v7}, Lcom/lge/camera/module/DefaultNormalShot;->handleTakePictureError(I)V

    goto :goto_1

    .line 67
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture  failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v7}, Lcom/lge/camera/module/DefaultNormalShot;->handleTakePictureError(I)V

    goto :goto_1

    .line 49
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method
