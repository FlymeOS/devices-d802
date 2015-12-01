.class public Lcom/lge/camera/command/TakePictureInRecording;
.super Lcom/lge/camera/command/Command;
.source "TakePictureInRecording.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;,
        Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;
    }
.end annotation


# instance fields
.field private mGpsLocation:Lcom/lge/camera/util/GpsLocation;

.field private mShutterCallback:Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 30
    iput-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGpsLocation:Lcom/lge/camera/util/GpsLocation;

    .line 31
    iput-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mShutterCallback:Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;

    .line 35
    new-instance v0, Lcom/lge/camera/util/GpsLocation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lge/camera/util/GpsLocation;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGpsLocation:Lcom/lge/camera/util/GpsLocation;

    .line 36
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 41
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TakePictureInRecording-start,isPausing()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] getInCaptureProgress()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "CameraApp"

    const-string v1, "TakePictureInRecording-end return, CamDevice is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TakePictureInRecording-end return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->getFileStatus(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    const-string v0, "CameraApp"

    const-string v1, "File Naming Helper status is NOT READY! so reload"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->reload(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 67
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 68
    .local v8, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGpsLocation:Lcom/lge/camera/util/GpsLocation;

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getRecordLocation()Z

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/lge/camera/util/GpsLocation;->setGPSlocation(Landroid/hardware/Camera$Parameters;ZLandroid/location/Location;)Z

    move-result v6

    .line 72
    .local v6, "bChangeParameter":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getCurrentDateTime(J)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "takeDateTime":Ljava/lang/String;
    const-string v0, "exif-datetime"

    invoke-virtual {v8, v0, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v9    # "takeDateTime":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setParameteredRotation(I)V

    .line 87
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableCheckModifyParameters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameteredRotation()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/lge/camera/util/ImageHandler;->setRotation(Landroid/hardware/Camera$Parameters;I)Z

    move-result v0

    or-int/2addr v6, v0

    .line 94
    if-nez v6, :cond_4

    :try_start_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableCheckModifyParameters()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v8}, Lcom/lge/camera/ControllerFunction;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_5
    const/4 v8, 0x0

    .line 102
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useShutterSoundInLiveShot()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    new-instance v0, Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;-><init>(Lcom/lge/camera/command/TakePictureInRecording;)V

    :goto_3
    iput-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mShutterCallback:Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;

    .line 106
    const-string v0, "CameraApp"

    const-string v1, "#### getCameraDevice().takePicture()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_2
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/TakePictureInRecording;->mShutterCallback:Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;

    invoke-direct {v4, p0}, Lcom/lge/camera/command/TakePictureInRecording$JpegPictureCallbackInRecording;-><init>(Lcom/lge/camera/command/TakePictureInRecording;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    :goto_4
    const-string v0, "CameraApp"

    const-string v1, "TakePictureInRecording-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    .end local v6    # "bChangeParameter":Z
    .end local v8    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_6
    const-string v0, "CameraApp"

    const-string v1, "file naming helper is null!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    .restart local v6    # "bChangeParameter":Z
    .restart local v8    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v7

    .line 82
    .local v7, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 83
    const-string v0, "CameraApp"

    const-string v1, "setExifDateTime() NOT SUPPORTED!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    .end local v7    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v7

    .line 99
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "CameraApp"

    const-string v1, "setParameters failed"

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_7
    move-object v0, v10

    .line 102
    goto :goto_3

    .line 111
    :catch_2
    move-exception v7

    .line 112
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    const-string v0, "CameraApp"

    const-string v1, "TakePictureInRecording failed"

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
