.class public Lcom/lge/camera/module/RefocusShot;
.super Lcom/lge/camera/module/Module;
.source "RefocusShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# instance fields
.field private mIsRefocusShotRunning:Z

.field private mRefocusShotCount:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    iput v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    .line 32
    iput-boolean v0, p0, Lcom/lge/camera/module/RefocusShot;->mIsRefocusShotRunning:Z

    .line 36
    return-void
.end method

.method private processJpegCallbackAfter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 163
    iget v1, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 165
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setRefocusShotHasPictures(Z)V

    .line 166
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 168
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 170
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "fromJpegCallback"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v0, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 182
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setRefocusShotPreviewGuideVisibility(Z)V

    .line 183
    iput v3, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    .line 184
    invoke-direct {p0, v3}, Lcom/lge/camera/module/RefocusShot;->setIsModuleRunning(Z)V

    .line 186
    :cond_1
    return-void

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "useRefocusPostview"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setIsModuleRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/lge/camera/module/RefocusShot;->mIsRefocusShotRunning:Z

    .line 216
    return-void
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_refocus"

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

.method protected handleTakePictureError(I)V
    .locals 5
    .param p1, "resource"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 191
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 192
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Refocus count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput v3, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    .line 194
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 196
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v4}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 197
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 199
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setRefocusShotPreviewGuideVisibility(Z)V

    .line 200
    invoke-direct {p0, v3}, Lcom/lge/camera/module/RefocusShot;->setIsModuleRunning(Z)V

    .line 201
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/lge/camera/module/RefocusShot;->mIsRefocusShotRunning:Z

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 11
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 93
    const-string v0, "CameraApp"

    const-string v1, "#### TIME_CHECK JpegPictureCallbackRefocus()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/lge/camera/module/RefocusShot;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 100
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 102
    const/4 v6, 0x0

    .line 103
    .local v6, "isSuccessSave":Z
    if-nez p1, :cond_1

    .line 104
    const-string v0, "CameraApp"

    const-string v1, "error!! RefocusShot-onPictureTaken (jpegData == null)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v6, 0x0

    .line 107
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    invoke-virtual {p0}, Lcom/lge/camera/module/RefocusShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 112
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

    .line 113
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

    .line 115
    const-string v0, "CameraApp"

    const-string v1, "error!! RefocusShot abnormal jpegData stream"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/lge/camera/module/RefocusShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 119
    :cond_3
    array-length v0, p1

    int-to-long v0, v0

    iget-object v3, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v8

    cmp-long v0, v0, v8

    if-gez v0, :cond_8

    .line 120
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 121
    iget v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    if-nez v0, :cond_4

    .line 122
    const/4 v7, 0x0

    .line 123
    .local v7, "refocusShotTempFileDelete":Z
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteRefocusShotImages()Z

    move-result v7

    .line 124
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refocusShotTempFileDelete ? = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v7    # "refocusShotTempFileDelete":Z
    :cond_4
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPEG Callback data index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    .line 128
    invoke-virtual {p0}, Lcom/lge/camera/module/RefocusShot;->playSound()V

    .line 129
    iget v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 130
    const-string v0, "CameraApp"

    const-string v1, "Map data has received"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->saveRefocusShotMap([B)V

    .line 132
    const/4 v6, 0x1

    .line 137
    :cond_5
    :goto_1
    iget v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    if-ne v0, v10, :cond_6

    .line 138
    const-string v0, "CameraApp"

    const-string v1, "This picture is All-in focus image  so will also be saved in /DCIM/Camera dir."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v6

    .line 151
    :cond_6
    if-nez v6, :cond_9

    .line 152
    const-string v0, "CameraApp"

    const-string v1, "savePicture() fail!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const v0, 0x7f0a01a0

    invoke-virtual {p0, v0}, Lcom/lge/camera/module/RefocusShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 133
    :cond_7
    iget v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    if-eq v0, v10, :cond_5

    .line 134
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focal length containing image no = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v1, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    invoke-interface {v0, p1, v1}, Lcom/lge/camera/ControllerFunction;->saveRefocusShotPicture([BI)Z

    move-result v6

    goto :goto_1

    .line 144
    :cond_8
    const-string v0, "CameraApp"

    const-string v1, "savePicture() not enough memory!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v6, 0x0

    .line 146
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/lge/camera/module/RefocusShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 156
    :cond_9
    invoke-direct {p0}, Lcom/lge/camera/module/RefocusShot;->processJpegCallbackAfter()V

    .line 158
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefocusShotCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "CameraApp"

    const-string v1, "JpegPictureCallbackRefocus()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public playSound()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSAND playSound mRefocusShotCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playClearShotShutterSound(Z)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget v0, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playClearShotShutterSound(Z)V

    goto :goto_0
.end method

.method public startRotation(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/lge/camera/module/Module;->startRotation(I)V

    .line 207
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d01be

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "mGuideTextView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setRefocusShotPreviewGuideVisibility(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public stopByUserAction()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopClearShotSound()V

    .line 47
    return-void
.end method

.method public takePicture()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK [Module]RefocusShot::takePicture-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput v3, p0, Lcom/lge/camera/module/RefocusShot;->mRefocusShotCount:I

    .line 53
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->removeAllImageList()V

    .line 54
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 55
    const-string v1, "CameraApp"

    const-string v2, "#### Device().takePicture()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setRefocusShotPreviewGuideVisibility(Z)V

    .line 57
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/module/RefocusShot;->playSound()V

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/RefocusShot$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/RefocusShot$1;-><init>(Lcom/lge/camera/module/RefocusShot;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-direct {p0, v4}, Lcom/lge/camera/module/RefocusShot;->setIsModuleRunning(Z)V

    .line 85
    iget-object v1, p0, Lcom/lge/camera/module/RefocusShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 86
    const-string v1, "CameraApp"

    const-string v2, "[Module]RefocusShot::takePicture-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return v4

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefocusShot-takePicture  failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v1, 0x7f0a0323

    invoke-virtual {p0, v1}, Lcom/lge/camera/module/RefocusShot;->handleTakePictureError(I)V

    goto :goto_0
.end method
