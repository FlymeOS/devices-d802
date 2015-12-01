.class public Lcom/lge/camera/module/ClearShot;
.super Lcom/lge/camera/module/Module;
.source "ClearShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# instance fields
.field private iDegree:I

.field private isCaptureFailed:Z

.field private mCheckShotTimeInterval:J

.field private mClearCount:I

.field private mGuideImageView:Landroid/view/View;

.field private mIsClearShotTaking:Z

.field private mStopByUser:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 33
    iput v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/module/ClearShot;->mCheckShotTimeInterval:J

    .line 35
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 36
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 37
    iput v2, p0, Lcom/lge/camera/module/ClearShot;->iDegree:I

    .line 38
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/lge/camera/module/ClearShot;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ClearShot;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/lge/camera/module/ClearShot;->mCheckShotTimeInterval:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/lge/camera/module/ClearShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ClearShot;

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/module/ClearShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ClearShot;

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/module/ClearShot;->iDegree:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/module/ClearShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ClearShot;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lge/camera/module/ClearShot;->iDegree:I

    return p1
.end method

.method static synthetic access$302(Lcom/lge/camera/module/ClearShot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ClearShot;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/module/ClearShot;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ClearShot;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/module/ClearShot;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ClearShot;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    return-object p1
.end method

.method private deviceTakePicture(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/ClearShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ClearShot$1;-><init>(Lcom/lge/camera/module/ClearShot;)V

    invoke-interface {v0, v1, p1, p2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 116
    return-void
.end method

.method private processJpegCallbackAfter()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x28a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 176
    iget-boolean v1, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 178
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->removewClearShotView()V

    .line 180
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopClearShotSound()V

    .line 181
    iget-boolean v1, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0a02fd

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 185
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->deleteClearShotImages()Z

    .line 186
    iput-boolean v7, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 188
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v8, v9}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 189
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 191
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v8, v7}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 193
    iput v7, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 194
    iput-boolean v7, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 195
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget v1, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    const/4 v6, 0x6

    if-lt v1, v6, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->removewClearShotView()V

    .line 198
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "useClearShotPostview"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v1, v6, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v8, v7}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 206
    iput v7, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 207
    iput-boolean v7, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    goto :goto_0

    .line 209
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/lge/camera/module/ClearShot;->mCheckShotTimeInterval:J

    sub-long v2, v6, v8

    .line 211
    .local v2, "currentInterval":J
    const-wide/16 v4, 0x0

    .line 212
    .local v4, "delayTime":J
    cmp-long v1, v2, v10

    if-gtz v1, :cond_4

    .line 213
    sub-long v4, v10, v2

    .line 215
    :cond_4
    const-string v1, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v4, v5}, Lcom/lge/camera/module/ClearShot;->deviceTakePicture(J)V

    goto :goto_0
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_clear_shot"

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
    .locals 4
    .param p1, "resource"    # I

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 224
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 225
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mClearCount count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput v3, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 227
    iput-boolean v3, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 229
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 231
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->removewClearShotView()V

    .line 232
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 233
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 235
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 121
    const-string v2, "CameraApp"

    const-string v3, "#### TIME_CHECK JpegPictureCallbackClearShot()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 128
    iget-object v2, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "isSuccessSave":Z
    if-nez p1, :cond_1

    .line 132
    const-string v2, "CameraApp"

    const-string v3, "error!! ClearShot-onPictureTaken (jpegData == null)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x0

    .line 135
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 140
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalJpegData size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    array-length v2, p1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 143
    iget-object v2, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 144
    iget v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    if-nez v2, :cond_2

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "clearShotTempFileDelete":Z
    iget-object v2, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->deleteClearShotImages()Z

    move-result v0

    .line 147
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearShotFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "clearShotTempFileDelete":Z
    :cond_2
    iget v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 151
    iget-object v2, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v3, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    invoke-interface {v2, p1, v3}, Lcom/lge/camera/ControllerFunction;->saveClearShotPicture([BI)Z

    move-result v1

    .line 161
    :cond_3
    if-nez v1, :cond_5

    .line 162
    const-string v2, "CameraApp"

    const-string v3, "savePicture() fail!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const v2, 0x7f0a01a0

    invoke-virtual {p0, v2}, Lcom/lge/camera/module/ClearShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 154
    :cond_4
    const-string v2, "CameraApp"

    const-string v3, "savePicture() not enough memory!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x0

    .line 156
    const v2, 0x7f0a0071

    invoke-virtual {p0, v2}, Lcom/lge/camera/module/ClearShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 166
    :cond_5
    iget-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    if-eqz v2, :cond_6

    .line 167
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 169
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/module/ClearShot;->processJpegCallbackAfter()V

    .line 171
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mClearCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "CameraApp"

    const-string v3, "JpegPictureCallbackmClearCount()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public playSound()V
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playClearShotShutterSound(Z)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget v0, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playClearShotShutterSound(Z)V

    goto :goto_0
.end method

.method public removewClearShotView()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/ClearShot$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ClearShot$3;-><init>(Lcom/lge/camera/module/ClearShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public showClearShotView()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/ClearShot$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ClearShot$2;-><init>(Lcom/lge/camera/module/ClearShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public startRotation(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 281
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGuideImageView:Landroid/view/View;

    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    iget-object v1, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method public stopByUserAction()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 59
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopClearShotSound()V

    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->removewClearShotView()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 62
    return-void
.end method

.method public takePicture()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    const-string v0, "CameraApp"

    const-string v1, "TIME_CHECK [Module]ClearShot::takePicture-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput v2, p0, Lcom/lge/camera/module/ClearShot;->mClearCount:I

    .line 68
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->mStopByUser:Z

    .line 69
    iput-boolean v3, p0, Lcom/lge/camera/module/ClearShot;->mIsClearShotTaking:Z

    .line 71
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeAllImageList()V

    .line 72
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 73
    const-string v0, "CameraApp"

    const-string v1, "#### Device().takePicture()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 75
    invoke-virtual {p0}, Lcom/lge/camera/module/ClearShot;->showClearShotView()V

    .line 77
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/module/ClearShot;->deviceTakePicture(J)V

    .line 79
    iput-boolean v2, p0, Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z

    .line 81
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 82
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 83
    iget-object v0, p0, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 84
    const-string v0, "CameraApp"

    const-string v1, "[Module]ClearShot::takePicture-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v3
.end method
