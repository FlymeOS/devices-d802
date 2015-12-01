.class public Lcom/lge/camera/command/TakePicture;
.super Lcom/lge/camera/command/Command;
.source "TakePicture.java"


# instance fields
.field private mGpsLocation:Lcom/lge/camera/util/GpsLocation;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGpsLocation:Lcom/lge/camera/util/GpsLocation;

    .line 33
    new-instance v0, Lcom/lge/camera/util/GpsLocation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lge/camera/util/GpsLocation;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGpsLocation:Lcom/lge/camera/util/GpsLocation;

    .line 34
    return-void
.end method

.method private checkTakePicture()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 135
    const/4 v6, 0x1

    .line 136
    .local v6, "minPicCount":I
    iget-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    const-string v0, "CameraApp"

    const-string v1, "takePicture-end return, CamDevice is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return v5

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_3

    .line 143
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture-end return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->showStorageHint(I)V

    goto :goto_0

    .line 154
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPictureRemaining()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->getFileStatus(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    const-string v0, "CameraApp"

    const-string v1, "File Naming Helper status is NOT READY! so reload"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->reload(Landroid/content/Context;IILjava/lang/String;Z)V

    move v5, v7

    .line 168
    goto/16 :goto_0

    .line 163
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "file naming helper is null!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 165
    iget-object v0, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    goto/16 :goto_0
.end method

.method private setNightModeAndHDRMode(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x1

    .line 172
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentIAMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 187
    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_0
    const-string v1, "night"

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_hdr"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setNeedProgressDuringCapture(Z)V

    .line 248
    :cond_2
    return-void

    .line 178
    :sswitch_0
    const-string v1, "night"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 179
    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :sswitch_1
    const-string v1, "hdr-mode"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_4
    const-string v1, "off"

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sports"

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 200
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportMorphoNightShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "superzoom"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "superZoomStatus":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->isLowLuminance(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_5

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    if-nez v0, :cond_0

    .line 205
    :cond_6
    const-string v1, "CameraApp"

    const-string v2, "Auto night mode."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "night"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .end local v0    # "superZoomStatus":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->isLowLuminance(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "CameraApp"

    const-string v2, "Auto night mode."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "night"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_8
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "sports"

    iget-object v2, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 222
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportMorphoNightShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "superzoom"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .restart local v0    # "superZoomStatus":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->isLowLuminance(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_9

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    if-nez v0, :cond_0

    .line 227
    :cond_a
    const-string v1, "CameraApp"

    const-string v2, "Auto night mode."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "night"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .end local v0    # "superZoomStatus":Ljava/lang/String;
    :cond_b
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "not found"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    :cond_c
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportMorphoNightShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->isLowLuminance(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "CameraApp"

    const-string v2, "Auto night mode."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "night"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public execute()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 39
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takePicture()-start,isPausing()["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] getInCaptureProgress()["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/lge/camera/command/TakePicture;->checkTakePicture()Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v8}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 48
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->hideGestureGuide()V

    .line 51
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 52
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGpsLocation:Lcom/lge/camera/util/GpsLocation;

    iget-object v5, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getRecordLocation()Z

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/lge/camera/util/GpsLocation;->setGPSlocation(Landroid/hardware/Camera$Parameters;ZLandroid/location/Location;)Z

    move-result v0

    .line 56
    .local v0, "bChangeParameter":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getCurrentDateTime(J)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "takeDateTime":Ljava/lang/String;
    const-string v4, "exif-datetime"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_scene_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v3    # "takeDateTime":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v5, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setParameteredRotation(I)V

    .line 71
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableCheckModifyParameters()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getParameteredRotation()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/util/ImageHandler;->setRotation(Landroid/hardware/Camera$Parameters;I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 77
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_panorama"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_plane_panorama"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_free_panorama"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_full_continuous"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_clear_shot"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 88
    const-string v4, "CameraApp"

    const-string v5, "### cancelAutoFocus"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 95
    :goto_2
    const/4 v0, 0x1

    .line 98
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v4

    if-nez v4, :cond_a

    .line 99
    invoke-direct {p0, v2}, Lcom/lge/camera/command/TakePicture;->setNightModeAndHDRMode(Landroid/hardware/Camera$Parameters;)V

    .line 109
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    :try_start_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableCheckModifyParameters()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 110
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v2}, Lcom/lge/camera/ControllerFunction;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_6
    const/4 v2, 0x0

    .line 118
    :goto_4
    invoke-static {}, Lcom/lge/camera/util/AudioUtil;->isWiredHeadsetOn()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/lge/camera/util/AudioUtil;->isBluetoothA2dpOn()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shutter_sound"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 122
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isCameraKeyLongPressed()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v4

    if-nez v4, :cond_8

    .line 123
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 127
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->doTakePictureCommand()Z

    move-result v4

    if-nez v4, :cond_c

    .line 128
    const-string v4, "CameraApp"

    const-string v5, " error!!!! takepicture fail!!!!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 67
    const-string v4, "CameraApp"

    const-string v5, "setExifDateTime() NOT SUPPORTED!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :cond_9
    const-string v4, "auto"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 92
    const-string v4, "CameraApp"

    const-string v5, "### setFocusMode-auto"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 101
    :cond_a
    const-string v4, "night"

    iget-object v5, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_scene_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_hdr"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/command/TakePicture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v8}, Lcom/lge/camera/ControllerFunction;->setNeedProgressDuringCapture(Z)V

    goto/16 :goto_3

    .line 113
    :catch_1
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "CameraApp"

    const-string v5, "setParameters failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_4

    .line 131
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_c
    const-string v4, "CameraApp"

    const-string v5, "takePicture-end"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
