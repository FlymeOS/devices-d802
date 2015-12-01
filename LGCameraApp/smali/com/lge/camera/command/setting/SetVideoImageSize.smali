.class public Lcom/lge/camera/command/setting/SetVideoImageSize;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVideoImageSize.java"


# static fields
.field private static final FHD_RESOLUTION:Ljava/lang/String; = "1920x1080"

.field private static final HD_RESOLUTION:Ljava/lang/String; = "1280x720"

.field private static final W10M_HEIGHT:I = 0x924

.field private static final W10M_WIDTH:I = 0x1040


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 41
    return-void
.end method

.method private changeVideoPreviewSize(Landroid/hardware/Camera$Parameters;[I[I)V
    .locals 7
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "previewSizeOnDevice"    # [I
    .param p3, "previewSizeOnScreen"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "width":I
    const/4 v0, 0x1

    .line 210
    .local v0, "height":I
    aget v2, p2, v5

    sget v3, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    if-le v2, v3, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "3840x2160"

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_preview_size_on_device"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    aget v2, p3, v5

    aget v3, p3, v6

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 219
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "re-set Preview size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method private isSupportW10MSnapshot(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sizeOnDeviceString"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    const-string v0, "1280x720"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1920x1080"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setParameterForOMAP4(Landroid/hardware/Camera$Parameters;[I)Z
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "previewSizeOnDevice"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 257
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    aget v1, p2, v1

    aget v2, p2, v0

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 262
    :cond_0
    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    const-string v1, "mode"

    const-string v2, "video-mode"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "CameraApp"

    const-string v2, "set mode: video-mode"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private setPreviewFormat(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 287
    const-string v0, "3840x2160"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "preview-format"

    const-string v1, "nv12-venus"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v0, "preview-format"

    const-string v1, "yuv420sp"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreviewFpsRange(Landroid/hardware/Camera$Parameters;[I)V
    .locals 11
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "previewSizeOnDevice"    # [I

    .prologue
    const/16 v10, 0x7530

    const/16 v7, 0x3a98

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 296
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 297
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 298
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    const-string v5, "video-hfr"

    const-string v6, "off"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v5, "preview-format"

    const-string v6, "yuv420sp"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    invoke-virtual {p1, v10, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 353
    :cond_2
    :goto_0
    return-void

    .line 308
    :cond_3
    invoke-virtual {p1, v7, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 314
    :cond_4
    const-string v5, "hw.camcorder.fpsrange"

    const-string v6, "15000,30000"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "fps":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "fpsRange":[Ljava/lang/String;
    const-string v4, "off"

    .line 317
    .local v4, "sVideoFps":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 318
    .local v3, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_5

    .line 319
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v4

    .line 322
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "recordmode_normal"

    iget-object v6, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 327
    const-string v5, "video-hfr"

    invoke-virtual {p1, v5, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 331
    .local v2, "iVideoFps":I
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->checkSlowMotionMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 332
    const-string v5, "preview-format"

    const-string v6, "yuv420sp"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v5, "CameraApp"

    const-string v6, "preview-format set to yuv420sp"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1, v2, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 336
    :cond_6
    const-string v5, "preview-format"

    const-string v6, "nv12-venus"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v5, "CameraApp"

    const-string v6, "preview-format set to nv12-venus"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 342
    .end local v2    # "iVideoFps":I
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 343
    const-string v5, "video-hfr"

    const-string v6, "off"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_8
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setPreviewFormat(Landroid/hardware/Camera$Parameters;)V

    .line 346
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Min FPS is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Max FPS is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v1, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0
.end method

.method private setVideoPreviewSize(Landroid/hardware/Camera$Parameters;[I[I[I)[I
    .locals 6
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "previewSizeOnDevice"    # [I
    .param p3, "previewSizeOnScreen"    # [I
    .param p4, "oldVideoSize"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewSize :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    aget v1, p2, v4

    aget v2, p2, v5

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 231
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQCTChipset()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNVIDIAChipset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/command/setting/SetVideoImageSize;->changeVideoPreviewSize(Landroid/hardware/Camera$Parameters;[I[I)V

    .line 233
    const-string v1, "video-size"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "sOldVideoSize":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object p4

    .line 238
    .end local v0    # "sOldVideoSize":Ljava/lang/String;
    :cond_1
    return-object p4
.end method

.method private setVideoStabilizationMenu([ILandroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "previewSizeOnDevice"    # [I
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v3, 0x0

    .line 356
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 359
    :cond_0
    aget v0, p1, v3

    const/16 v1, 0x500

    if-lt v0, v1, :cond_1

    const-string v0, "1920x1080@60"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3840x2160"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    :cond_1
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_stabilization"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_stabilization"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    const-string v0, "video-stabilization"

    const-string v1, "false"

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_stabilization"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 375
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetVideoImageSize$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetVideoImageSize$5;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_stabilization"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private showFocusAndUpdateSizeIndicator()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetVideoImageSize$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetVideoImageSize$4;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method private showMMSRequestSizeLimitPopup(Ljava/lang/String;)V
    .locals 5
    .param p1, "sizeOnDeviceString"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 246
    .local v0, "isMMS":Z
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.SelectDuration"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    .line 248
    .local v1, "mCarrierCode":I
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showRequestedSizeLimit()V

    .line 254
    :cond_2
    return-void
.end method


# virtual methods
.method public checkEnableLightFrame()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    const-string v3, "recordmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
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
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 14
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 58
    const-string v11, "CameraApp"

    const-string v12, "SetVideoImageSize-start"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->showFocusAndUpdateSizeIndicator()V

    .line 66
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "sizeOnDeviceString":Ljava/lang/String;
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "sizeOnScreenString":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 71
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 72
    .local v5, "pref":Lcom/lge/camera/setting/ListPreference;
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v9

    .line 74
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v10

    .line 78
    .end local v5    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    if-eqz v9, :cond_1

    if-nez v10, :cond_3

    .line 79
    :cond_1
    const-string v12, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error! sizeOnDeviceString or sizeOnScreenString is null:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v9, :cond_2

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_1
    return-void

    .line 79
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 84
    .local v3, "oldSizeOnDevice":Landroid/hardware/Camera$Size;
    if-nez v3, :cond_4

    .line 85
    const-string v11, "CameraApp"

    const-string v12, "oldSizeOnDevice is Null"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_4
    invoke-static {v9}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v7

    .line 90
    .local v7, "previewSizeOnDevice":[I
    invoke-static {v10}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v8

    .line 92
    .local v8, "previewSizeOnScreen":[I
    const/4 v11, 0x2

    new-array v1, v11, [I

    .line 93
    .local v1, "oldPreviewSizeOnScreen":[I
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const v12, 0x7f0d0176

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 95
    .local v6, "preview":Landroid/view/View;
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 96
    const/4 v11, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    aput v12, v1, v11

    .line 97
    const/4 v11, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    aput v12, v1, v11

    .line 103
    :goto_2
    const/4 v11, 0x2

    new-array v4, v11, [I

    .line 104
    .local v4, "oldVideoSize":[I
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v4, v11

    .line 105
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v4, v11

    .line 107
    const-string v11, "on"

    iget-object v12, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "key_light"

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->checkEnableLightFrame()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 109
    const/4 v11, 0x0

    aget v12, v8, v11

    div-int/lit8 v12, v12, 0x2

    aput v12, v8, v11

    .line 110
    const/4 v11, 0x1

    aget v12, v8, v11

    div-int/lit8 v12, v12, 0x2

    aput v12, v8, v11

    .line 111
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MINA previewSize x : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "previewSize y :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_5
    const/4 v11, 0x0

    aget v11, v1, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 117
    .local v2, "oldRatio":Ljava/lang/Float;
    const/4 v11, 0x0

    aget v11, v8, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 120
    .local v0, "newRatio":Ljava/lang/Float;
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-direct {p0, v7, v11}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setVideoStabilizationMenu([ILandroid/hardware/Camera$Parameters;)V

    .line 121
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-direct {p0, v11, v7}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setPreviewFpsRange(Landroid/hardware/Camera$Parameters;[I)V

    .line 123
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-direct {p0, v11, v7, v8, v4}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setVideoPreviewSize(Landroid/hardware/Camera$Parameters;[I[I[I)[I

    move-result-object v4

    .line 127
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "### set video-size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    const-string v12, "video-size"

    invoke-virtual {v11, v12, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-direct {p0, v11, v7}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setParameterForOMAP4(Landroid/hardware/Camera$Parameters;[I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 132
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 134
    invoke-direct {p0, v9}, Lcom/lge/camera/command/setting/SetVideoImageSize;->isSupportW10MSnapshot(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 135
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    const/16 v12, 0x1040

    const/16 v13, 0x924

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 144
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 146
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v12, 0x0

    aget v12, v8, v12

    const/4 v13, 0x1

    aget v13, v8, v13

    invoke-interface {v11, v12, v13}, Lcom/lge/camera/ControllerFunction;->changePreviewModeOnUiThread(II)V

    .line 148
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v11

    if-nez v11, :cond_8

    .line 150
    const/4 v11, 0x0

    aget v11, v1, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    if-ne v11, v12, :cond_b

    const/4 v11, 0x1

    aget v11, v1, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    if-ne v11, v12, :cond_b

    iget v11, v3, Landroid/hardware/Camera$Size;->width:I

    const/4 v12, 0x0

    aget v12, v7, v12

    if-ne v11, v12, :cond_7

    iget v11, v3, Landroid/hardware/Camera$Size;->height:I

    const/4 v12, 0x1

    aget v12, v7, v12

    if-eq v11, v12, :cond_b

    .line 153
    :cond_7
    const-string v11, "CameraApp"

    const-string v12, "Force restart preview. Preview size on device changed but view layout is same. "

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v11

    new-instance v12, Lcom/lge/camera/command/setting/SetVideoImageSize$1;

    invoke-direct {v12, p0, p1}, Lcom/lge/camera/command/setting/SetVideoImageSize$1;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Lcom/lge/hardware/LGCamera$LGParameters;)V

    invoke-virtual {v11, v12}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_8
    :goto_4
    invoke-direct {p0, v9}, Lcom/lge/camera/command/setting/SetVideoImageSize;->showMMSRequestSizeLimitPopup(Ljava/lang/String;)V

    .line 193
    const-string v11, "CameraApp"

    const-string v12, "SetVideoImageSize-end"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    .end local v0    # "newRatio":Ljava/lang/Float;
    .end local v2    # "oldRatio":Ljava/lang/Float;
    .end local v4    # "oldVideoSize":[I
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    aput v12, v1, v11

    .line 100
    const/4 v11, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    aput v12, v1, v11

    goto/16 :goto_2

    .line 138
    .restart local v0    # "newRatio":Ljava/lang/Float;
    .restart local v2    # "oldRatio":Ljava/lang/Float;
    .restart local v4    # "oldVideoSize":[I
    :cond_a
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v7, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    invoke-virtual {v11, v12, v13}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_3

    .line 169
    :cond_b
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQCTChipset()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHDmodel()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v2, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v11

    if-nez v11, :cond_c

    const/4 v11, 0x0

    aget v11, v4, v11

    const/4 v12, 0x0

    aget v12, v7, v12

    if-eq v11, v12, :cond_c

    .line 173
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Force restart preview. QCT 8k & full hd model have some limitation because of frame drop"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v4, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "!="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v11

    new-instance v12, Lcom/lge/camera/command/setting/SetVideoImageSize$2;

    invoke-direct {v12, p0, p1}, Lcom/lge/camera/command/setting/SetVideoImageSize$2;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Lcom/lge/hardware/LGCamera$LGParameters;)V

    invoke-virtual {v11, v12}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 181
    :cond_c
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->checkSlowMotionMode()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 182
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 183
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V

    .line 184
    iget-object v11, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v11

    new-instance v12, Lcom/lge/camera/command/setting/SetVideoImageSize$3;

    invoke-direct {v12, p0, p1}, Lcom/lge/camera/command/setting/SetVideoImageSize$3;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Lcom/lge/hardware/LGCamera$LGParameters;)V

    invoke-virtual {v11, v12}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4
.end method

.method protected onExecuteAlone()V
    .locals 4

    .prologue
    .line 385
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 386
    .local v0, "mCarrierCode":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_2

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "videoSizeString":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showRequestedSizeLimit()V

    .line 395
    .end local v1    # "videoSizeString":Ljava/lang/String;
    :cond_2
    return-void
.end method
