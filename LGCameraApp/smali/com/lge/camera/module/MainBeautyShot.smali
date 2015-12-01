.class public Lcom/lge/camera/module/MainBeautyShot;
.super Lcom/lge/camera/module/Module;
.source "MainBeautyShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 32
    return-void
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_main_beauty"

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
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 81
    const-string v1, "CameraApp"

    const-string v2, "#### TIME_CHECK JpegPictureCallback()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/module/MainBeautyShot;->checkMediator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "CameraApp"

    const-string v2, "JpegPictureCallback()-end, null -> return or pausing."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setBeautyshotProgress(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/module/MainBeautyShot;->checkShotTime()V

    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/module/MainBeautyShot;->checkAutoReview()V

    .line 92
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 93
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/module/MainBeautyShot;->doAfterCapture()V

    .line 96
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/module/MainBeautyShot$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/module/MainBeautyShot$1;-><init>(Lcom/lge/camera/module/MainBeautyShot;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    .local v0, "beautyShotThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 154
    const-string v1, "CameraApp"

    const-string v2, "JpegPictureCallback()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processFinalJpegData([B)[B
    .locals 6
    .param p1, "jpegData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 159
    const/16 v2, 0x100

    .line 160
    .local v2, "format":I
    const/4 v1, 0x0

    .line 161
    .local v1, "finalJpegData":[B
    iget-object v5, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getParameteredRotation()I

    move-result v0

    .line 162
    .local v0, "degree":I
    if-nez v0, :cond_1

    move v3, v4

    .line 165
    .local v3, "ola_Orientation":I
    :goto_0
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_0

    .line 166
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/lge/camera/module/MainBeautyShot;->makeBeautyShotImage([BIIZ)[B

    move-result-object v1

    .line 168
    :cond_0
    return-object v1

    .line 162
    .end local v3    # "ola_Orientation":I
    :cond_1
    const/4 v3, 0x3

    goto :goto_0
.end method

.method protected processJpegCallbackAfter(Z)V
    .locals 1
    .param p1, "isSuccessSave"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 179
    invoke-super {p0, p1}, Lcom/lge/camera/module/Module;->processJpegCallbackAfter(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/lge/camera/module/MainBeautyShot;->releaseBeautyshotJpegCallback()V

    .line 181
    return-void
.end method

.method public releaseBeautyshotJpegCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    const-string v0, "CameraApp"

    const-string v1, "MainBeautyShot - release engine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setBeautyshotProgress(Z)V

    .line 187
    iget-object v0, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->releaseEngine(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method protected savePictureInJpegCallback([B)Z
    .locals 1
    .param p1, "finalJpegData"    # [B

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/lge/camera/module/Module;->savePictureInJpegCallback([B)Z

    move-result v0

    return v0
.end method

.method public stopByUserAction()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public takePicture()Z
    .locals 8

    .prologue
    const v7, 0x7f0a0323

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 51
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK [Module]MainBeautyShot::takePicture-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 55
    const-string v1, "CameraApp"

    const-string v2, "#### Device().takePicture()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v3, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/ControllerFunction;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/lge/camera/listeners/JpegPictureCallback;

    invoke-direct {v5, p0}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    iget-object v1, p0, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 74
    const-string v1, "CameraApp"

    const-string v2, "[Module]MainBeautyShot::takePicture-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return v6

    .line 64
    :catch_0
    move-exception v0

    .line 65
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

    .line 66
    invoke-virtual {p0, v7}, Lcom/lge/camera/module/MainBeautyShot;->handleTakePictureError(I)V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 69
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

    .line 70
    invoke-virtual {p0, v7}, Lcom/lge/camera/module/MainBeautyShot;->handleTakePictureError(I)V

    goto :goto_0
.end method
