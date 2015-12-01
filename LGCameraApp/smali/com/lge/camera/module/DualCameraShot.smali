.class public Lcom/lge/camera/module/DualCameraShot;
.super Lcom/lge/camera/module/Module;
.source "DualCameraShot.java"


# instance fields
.field private mDateTaken:[J

.field private mSaveFileName:Ljava/lang/String;

.field private threadComplete:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 71
    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->threadComplete:Ljava/lang/Thread;

    .line 72
    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->mDateTaken:[J

    .line 39
    const-string v0, "CameraApp"

    const-string v1, "Dual Camera Module Create !!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/module/DualCameraShot;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/DualCameraShot;
    .param p1, "x1"    # [B

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/lge/camera/module/DualCameraShot;->saveResultImage([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/module/DualCameraShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/DualCameraShot;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/camera/module/DualCameraShot;->doComplete()V

    return-void
.end method

.method private addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "directory"    # Ljava/lang/String;
    .param p5, "output_img_path"    # Ljava/lang/String;
    .param p6, "degree"    # I

    .prologue
    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, "sizeString":Ljava/lang/String;
    invoke-static {v15}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v14

    .line 242
    .local v14, "size":[I
    if-eqz p5, :cond_0

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    const/4 v2, 0x0

    aget v6, v14, v2

    const/4 v2, 0x1

    aget v7, v14, v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lge/camera/util/ExifUtil;->setExif(Ljava/lang/String;Ljava/lang/String;FLandroid/location/Location;IILjava/lang/String;ILjava/lang/String;)V

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v9, p4

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v12}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v13

    .line 253
    .local v13, "ImageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setSavedFileName(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v13}, Lcom/lge/camera/ControllerFunction;->setSavedImageUri(Landroid/net/Uri;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_uplus_box"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method private doComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 105
    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 108
    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    .line 109
    .local v1, "lgParams":Lcom/lge/hardware/LGCamera$LGParameters;
    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v2, v3, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :try_start_0
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "lgParams":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local v1    # "lgParams":Lcom/lge/hardware/LGCamera$LGParameters;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "DualCameraShot: setParameters Exception"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private rotateJpeg([BI)[B
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "degree"    # I

    .prologue
    .line 262
    const/16 v1, 0x64

    .line 263
    .local v1, "jpegQuality":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 264
    .local v2, "jpegRotated":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/lge/camera/util/Util;->makeBitmap([BZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 267
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    const/4 v0, 0x0

    .line 269
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private saveOutputImage([BLjava/lang/String;Ljava/lang/String;[JI)Z
    .locals 4
    .param p1, "jpegData"    # [B
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "dateTaken"    # [J
    .param p5, "orientation"    # I

    .prologue
    .line 185
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-static {p1, p2, p3}, Lcom/lge/camera/module/DualCameraShot;->saveOutputJpeg([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 192
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 193
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DualCameraShot - saveOutputImage error ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return v0

    .line 197
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveOutputImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveOutputJpeg([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "jpegData"    # [B
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 202
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveOutputJpeg-start:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v4, 0x0

    .line 206
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v5, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    if-eqz v5, :cond_4

    .line 225
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    :goto_0
    const/4 v4, 0x0

    .line 231
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    const/4 v3, 0x0

    .line 233
    const-string v6, "CameraApp"

    const-string v7, "saveOutputJpeg-end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v6, 0x1

    .end local v0    # "dir":Ljava/io/File;
    :goto_2
    return v6

    .line 226
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 215
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v7, "CameraApp"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v4, :cond_1

    .line 225
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 229
    :goto_4
    const/4 v4, 0x0

    .line 231
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .line 226
    .end local v3    # "file":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 219
    .local v2, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v7, "CameraApp"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    if-eqz v4, :cond_2

    .line 225
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 229
    :goto_6
    const/4 v4, 0x0

    .line 231
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .line 226
    .end local v3    # "file":Ljava/io/File;
    :catch_4
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v4, :cond_3

    .line 225
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 229
    :goto_8
    const/4 v4, 0x0

    .line 231
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "file":Ljava/io/File;
    throw v6

    .line 226
    .end local v3    # "file":Ljava/io/File;
    :catch_5
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_7

    .line 218
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 214
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private saveResultImage([B)Z
    .locals 19
    .param p1, "jpegData"    # [B

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 129
    const-string v2, "CameraApp"

    const-string v3, "File name is null! return."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x0

    .line 180
    :goto_0
    return v2

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 134
    .local v10, "dateTaken":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "directory":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "bounding_file_name_with_extension":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 137
    .local v13, "output_img_path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v7

    .line 138
    .local v7, "currDegree":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mDateTaken:[J

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v2, v3

    .line 139
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file_name = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", directory = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bounding_file_name_with_extension = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", output_img_path = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mStartOrientation = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 v17, 0x5a

    .line 147
    .local v17, "degree_90":I
    const/16 v15, 0xb4

    .line 148
    .local v15, "degree_180":I
    const/16 v16, 0x10e

    .line 149
    .local v16, "degree_270":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5a

    if-eq v7, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v7, v2, :cond_2

    .line 153
    :cond_1
    const/16 v2, 0xb4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/module/DualCameraShot;->rotateJpeg([BI)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/module/DualCameraShot;->mDateTaken:[J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/camera/module/DualCameraShot;->saveOutputImage([BLjava/lang/String;Ljava/lang/String;[JI)Z

    move-result v18

    .line 168
    .local v18, "ret":Z
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 169
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    move-object/from16 v8, p0

    move-object v12, v4

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/lge/camera/module/DualCameraShot;->addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 170
    const-string v2, "CameraApp"

    const-string v3, "The original dual camera image is saved."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 174
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    .line 175
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 160
    .end local v18    # "ret":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/module/DualCameraShot;->mDateTaken:[J

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/lge/camera/module/DualCameraShot;->saveOutputImage([BLjava/lang/String;Ljava/lang/String;[JI)Z

    move-result v18

    .restart local v18    # "ret":Z
    goto :goto_1

    .line 177
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "Cannot save original dual camera image."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    .line 180
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_dual_camera"

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
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 78
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_camera_shot_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->mSaveFileName:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/module/DualCameraShot$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/module/DualCameraShot$2;-><init>(Lcom/lge/camera/module/DualCameraShot;[B)V

    const-string v2, "complete_Dual_Camera"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->threadComplete:Ljava/lang/Thread;

    .line 98
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->threadComplete:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method public stopByUserAction()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public takePicture()Z
    .locals 2

    .prologue
    .line 53
    const-string v0, "CameraApp"

    const-string v1, "Dual Camera Module takePicture...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/lge/camera/module/DualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/DualCameraShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/DualCameraShot$1;-><init>(Lcom/lge/camera/module/DualCameraShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method
