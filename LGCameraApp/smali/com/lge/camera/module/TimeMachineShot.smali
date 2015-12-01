.class public Lcom/lge/camera/module/TimeMachineShot;
.super Lcom/lge/camera/module/Module;
.source "TimeMachineShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# instance fields
.field private mTimeMachineCount:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 33
    return-void
.end method

.method private processJpegCallbackAfter()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    iget v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 141
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 142
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 144
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 146
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "fromJpegCallback"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v0, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 159
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iput v3, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 161
    :cond_1
    return-void

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "useTimeMachinePostview"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleTakePictureError(I)V
    .locals 4
    .param p1, "resource"    # I

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 166
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 167
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current TimeMachine count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iput v3, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 169
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 172
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 173
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 176
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 77
    const-string v0, "CameraApp"

    const-string v1, "#### TIME_CHECK JpegPictureCallbackTimeMachine()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/camera/module/TimeMachineShot;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 84
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 86
    const/4 v6, 0x0

    .line 87
    .local v6, "isSuccessSave":Z
    if-nez p1, :cond_1

    .line 88
    const-string v0, "CameraApp"

    const-string v1, "error!! TimeMachineShot-onPictureTaken (jpegData == null)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v6, 0x0

    .line 91
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/lge/camera/module/TimeMachineShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalJpegData size ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    aget-byte v0, p1, v5

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    aget-byte v0, p1, v4

    const/16 v1, -0x28

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const-string v0, "CameraApp"

    const-string v1, "error!! TimeMachineShot abnormal jpegData stream"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/module/TimeMachineShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 103
    :cond_3
    array-length v0, p1

    int-to-long v0, v0

    iget-object v3, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v8

    cmp-long v0, v0, v8

    if-gez v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 105
    iget v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    if-nez v0, :cond_4

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, "timeMachineTempFileDelete":Z
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    move-result v7

    .line 108
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v7    # "timeMachineTempFileDelete":Z
    :cond_4
    iget v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 111
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    invoke-interface {v0, p1, v1}, Lcom/lge/camera/ControllerFunction;->saveTimeMachinePicture([BI)Z

    move-result v6

    .line 113
    iget v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 115
    iget-object v0, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    .line 127
    :cond_5
    if-nez v6, :cond_7

    .line 128
    const-string v0, "CameraApp"

    const-string v1, "savePicture() fail!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const v0, 0x7f0a01a0

    invoke-virtual {p0, v0}, Lcom/lge/camera/module/TimeMachineShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 120
    :cond_6
    const-string v0, "CameraApp"

    const-string v1, "savePicture() not enough memory!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v6, 0x0

    .line 122
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/lge/camera/module/TimeMachineShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 132
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/module/TimeMachineShot;->processJpegCallbackAfter()V

    .line 134
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeMachineCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "CameraApp"

    const-string v1, "JpegPictureCallbackTimeMachine()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 51
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK [Module]TimeMachineShot::takePicture-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput v6, p0, Lcom/lge/camera/module/TimeMachineShot;->mTimeMachineCount:I

    .line 53
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeAllImageList()V

    .line 54
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 55
    const-string v1, "CameraApp"

    const-string v2, "#### Device().takePicture()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v3, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/ControllerFunction;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/lge/camera/listeners/JpegPictureCallback;

    invoke-direct {v5, p0}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v1, p0, Lcom/lge/camera/module/TimeMachineShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 70
    const-string v1, "CameraApp"

    const-string v2, "[Module]TimeMachineShot::takePicture-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return v7

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeMachineShot-takePicture  failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const v1, 0x7f0a0323

    invoke-virtual {p0, v1}, Lcom/lge/camera/module/TimeMachineShot;->handleTakePictureError(I)V

    goto :goto_0
.end method
