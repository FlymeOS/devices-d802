.class public Lcom/lge/camera/command/setting/SetCameraImageSize;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraImageSize.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 34
    return-void
.end method

.method private setParameterPictureSize(Landroid/hardware/Camera$Parameters;[I[I)V
    .locals 5
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "previewSizeOnDevice"    # [I
    .param p3, "pictureSize"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const/16 v0, 0x500

    const/16 v1, 0x3c0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 222
    const-string v0, "CameraApp"

    const-string v1, "panorama setPictureSize 1280x960"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    aget v0, p3, v3

    aget v1, p3, v4

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 225
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v5, 0x7530

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 235
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    const-string v3, "video-hfr"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v3, "preview-format"

    const-string v4, "yuv420sp"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 242
    invoke-virtual {p1, v5, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMin()I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFrontCameraFrameRateNormalRangeMin()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFrontCameraFrameRateNightModeRangeMin()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "defaultMinFps":Ljava/lang/String;
    const-string v3, "persist.data.front.minfps"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "minFps":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "fpsValues":[Ljava/lang/String;
    const-string v3, "night"

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_scene_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 263
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 266
    :cond_4
    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 270
    .end local v0    # "defaultMinFps":Ljava/lang/String;
    .end local v1    # "fpsValues":[Ljava/lang/String;
    .end local v2    # "minFps":Ljava/lang/String;
    :cond_5
    const-string v3, "on"

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_smart_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 271
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateIAModeRangeMin()I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 274
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_full_continuous"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 276
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateBurstShotModeRangeMin()I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 281
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMin()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNightModeRangeMin()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .restart local v0    # "defaultMinFps":Ljava/lang/String;
    const-string v3, "persist.data.rear.minfps"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .restart local v2    # "minFps":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 290
    .restart local v1    # "fpsValues":[Ljava/lang/String;
    const-string v3, "night"

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_scene_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 291
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 294
    :cond_8
    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkEnableLightFrame()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 42
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_dual_camera"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 21
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 51
    const-string v18, "CameraApp"

    const-string v19, "SetCameraImageSize-start"

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 53
    check-cast v3, Landroid/os/Bundle;

    .line 55
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v18, "doNotRestartPreview"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 56
    .local v5, "doNotRestartPreview":Z
    const-string v18, "doChangePrevieMode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 70
    .local v4, "doChangePrevieMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v16

    .line 71
    .local v16, "sizeOnDeviceString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v17

    .line 74
    .local v17, "sizeOnScreenString":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const-string v19, "key_camera_picturesize"

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v12

    .line 76
    .local v12, "pref":Lcom/lge/camera/setting/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const-string v19, "key_camera_picturesize"

    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v16

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v17

    .line 81
    .end local v12    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 82
    .local v9, "oldPreviewSizeOnDevice":Landroid/hardware/Camera$Size;
    invoke-virtual/range {p1 .. p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 85
    .local v8, "oldPictureSize":Landroid/hardware/Camera$Size;
    if-eqz v16, :cond_1

    if-eqz v17, :cond_1

    if-eqz v9, :cond_1

    if-nez v8, :cond_6

    .line 89
    :cond_1
    const-string v19, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error! sizeOnDeviceString is NULL: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v16, :cond_2

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v19, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error! sizeOnScreenString is Null: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v17, :cond_3

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v19, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error! oldPreviewSizeOnDevice is Null: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v9, :cond_4

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v19, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error! oldPictureSize is Null: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v8, :cond_5

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_4
    return-void

    .line 89
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 90
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 91
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 93
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 97
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v14

    .line 98
    .local v14, "previewSizeOnDevice":[I
    invoke-static/range {v17 .. v17}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v15

    .line 99
    .local v15, "previewSizeOnScreen":[I
    const-string v18, "on"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v19, v0

    const-string v20, "key_light"

    invoke-interface/range {v19 .. v20}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->checkEnableLightFrame()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 101
    const/16 v18, 0x0

    aget v19, v15, v18

    div-int/lit8 v19, v19, 0x2

    aput v19, v15, v18

    .line 102
    const/16 v18, 0x1

    aget v19, v15, v18

    div-int/lit8 v19, v19, 0x2

    aput v19, v15, v18

    .line 103
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MINA previewSize x : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "previewSize y :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const-string v19, "key_camera_picturesize"

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v12

    .line 107
    .restart local v12    # "pref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v11

    .line 108
    .local v11, "pictureSize":[I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v11}, Lcom/lge/camera/command/setting/SetCameraImageSize;->setParameterPictureSize(Landroid/hardware/Camera$Parameters;[I[I)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v14, v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 111
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPreviewSize "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/camera/command/setting/SetCameraImageSize;->setPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 116
    const-string v18, "face_tracking"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v19, v0

    const-string v20, "key_focus"

    invoke-interface/range {v19 .. v20}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->initFaceDetectInfo()V

    .line 120
    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [I

    .line 121
    .local v10, "oldPreviewSizeOnScreen":[I
    const/4 v7, 0x0

    .line 122
    .local v7, "needToRestartPreview":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const v19, 0x7f0d0177

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 126
    .local v13, "preview":Lcom/lge/camera/components/OpenGLSurfaceView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 127
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/lge/camera/components/OpenGLSurfaceView;->getWidth()I

    move-result v19

    aput v19, v10, v18

    .line 128
    const/16 v18, 0x1

    invoke-virtual {v13}, Lcom/lge/camera/components/OpenGLSurfaceView;->getHeight()I

    move-result v19

    aput v19, v10, v18

    .line 134
    :goto_5
    const/4 v6, 0x1

    .line 135
    .local v6, "needToChangePreview":Z
    const/16 v18, 0x0

    aget v18, v10, v18

    if-lez v18, :cond_9

    const/16 v18, 0x1

    aget v18, v10, v18

    if-lez v18, :cond_9

    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x0

    aget v19, v15, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x0

    aget v19, v15, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    .line 139
    :cond_9
    const/4 v6, 0x1

    .line 152
    :cond_a
    :goto_6
    if-eqz v4, :cond_b

    .line 153
    const/4 v6, 0x1

    .line 155
    :cond_b
    if-eqz v6, :cond_c

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 157
    const/4 v7, 0x0

    .line 161
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v15, v19

    const/16 v20, 0x1

    aget v20, v15, v20

    invoke-interface/range {v18 .. v20}, Lcom/lge/camera/ControllerFunction;->changePreviewModeOnUiThread(II)V

    .line 163
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 164
    const/4 v7, 0x1

    .line 184
    .end local v6    # "needToChangePreview":Z
    .end local v13    # "preview":Lcom/lge/camera/components/OpenGLSurfaceView;
    :cond_d
    :goto_8
    if-eqz v5, :cond_e

    .line 185
    const/4 v7, 0x0

    .line 188
    :cond_e
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PreviewOnScreen Old : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v10, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v10, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> New : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PreviewOnDevice Old : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> New : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-eqz v7, :cond_10

    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x0

    aget v19, v15, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/16 v18, 0x1

    aget v18, v10, v18

    const/16 v19, 0x1

    aget v19, v15, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    iget v0, v8, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    iget v0, v8, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 201
    :cond_f
    const-string v18, "CameraApp"

    const-string v19, "SetCameraImageSize:Preview size on device changed but view layout is same."

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SetCameraImageSize:Force restart preview-[doNotRestartPreview value] : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/camera/command/setting/SetCameraImageSize$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/command/setting/SetCameraImageSize$1;-><init>(Lcom/lge/camera/command/setting/SetCameraImageSize;Lcom/lge/hardware/LGCamera$LGParameters;)V

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    :cond_10
    const-string v18, "CameraApp"

    const-string v19, "SetCameraImageSize-end"

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 130
    .restart local v13    # "preview":Lcom/lge/camera/components/OpenGLSurfaceView;
    :cond_11
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/lge/camera/components/OpenGLSurfaceView;->getHeight()I

    move-result v19

    aput v19, v10, v18

    .line 131
    const/16 v18, 0x1

    invoke-virtual {v13}, Lcom/lge/camera/components/OpenGLSurfaceView;->getWidth()I

    move-result v19

    aput v19, v10, v18

    goto/16 :goto_5

    .line 141
    .restart local v6    # "needToChangePreview":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v18

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v18

    if-nez v18, :cond_13

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x0

    aget v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    const/16 v18, 0x1

    aget v18, v10, v18

    const/16 v19, 0x1

    aget v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    .line 148
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 159
    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_7

    .line 167
    .end local v6    # "needToChangePreview":Z
    .end local v13    # "preview":Lcom/lge/camera/components/OpenGLSurfaceView;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const v19, 0x7f0d0176

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lge/camera/components/CameraPreview;

    .line 169
    .local v13, "preview":Lcom/lge/camera/components/CameraPreview;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v18

    if-eqz v18, :cond_16

    .line 170
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v19

    aput v19, v10, v18

    .line 171
    const/16 v18, 0x1

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v19

    aput v19, v10, v18

    .line 176
    :goto_9
    const/16 v18, 0x0

    aget v18, v14, v18

    const/16 v19, 0x1

    aget v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/lge/camera/components/CameraPreview;->setSrcImageSize(II)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v15, v19

    const/16 v20, 0x1

    aget v20, v15, v20

    invoke-interface/range {v18 .. v20}, Lcom/lge/camera/ControllerFunction;->changePreviewModeOnUiThread(II)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 180
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 173
    :cond_16
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v19

    aput v19, v10, v18

    .line 174
    const/16 v18, 0x1

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v19

    aput v19, v10, v18

    goto :goto_9
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraImageSize$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraImageSize$2;-><init>(Lcom/lge/camera/command/setting/SetCameraImageSize;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method
