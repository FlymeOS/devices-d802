.class public Lcom/lge/camera/CameraMediator;
.super Lcom/lge/camera/Mediator;
.source "CameraMediator.java"

# interfaces
.implements Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;


# instance fields
.field private isCaptureIntent:Z

.field private mBurstShotStop:Z

.field private mContinuousShotAlived:Z

.field private mCropValue:Ljava/lang/String;

.field private mCurrentIAMode:I

.field protected mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

.field private final mFaceValues:[[I

.field private mFocalLength:F

.field protected mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

.field protected mGestureRecogListener:Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

.field private mImageListRotation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImageListUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSaver:Lcom/lge/camera/util/ImageSavers;

.field private mIntentFrom:Ljava/lang/String;

.field protected mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

.field protected mPlanePanoramaController:Lcom/lge/camera/controller/camera/PlanePanoramaController;

.field private mPreSmartModePicSize:Ljava/lang/String;

.field private mPreviousCameraAutoReviewValue:Ljava/lang/String;

.field private mPreviousPictureSize:Ljava/lang/String;

.field private mPreviousShotMode:Ljava/lang/String;

.field private mRefocusShotHasPictures:Z

.field private mRequestSingleImage:Z

.field private mTimemachineHasPictures:Z

.field protected mTimerController:Lcom/lge/camera/controller/camera/TimerController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CameraApp;)V
    .locals 5
    .param p1, "activity"    # Lcom/lge/camera/CameraApp;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 106
    invoke-direct {p0, p1}, Lcom/lge/camera/Mediator;-><init>(Lcom/lge/camera/Mediator$ActivityBridge;)V

    .line 86
    const-string v0, "shotmode_normal"

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    .line 90
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->mBurstShotStop:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    .line 95
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    .line 96
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->mTimemachineHasPictures:Z

    .line 98
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->mRefocusShotHasPictures:Z

    .line 101
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mPreSmartModePicSize:Ljava/lang/String;

    .line 102
    iput v4, p0, Lcom/lge/camera/CameraMediator;->mCurrentIAMode:I

    .line 103
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    .line 981
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->mRequestSingleImage:Z

    .line 1281
    iput-boolean v4, p0, Lcom/lge/camera/CameraMediator;->isCaptureIntent:Z

    .line 1355
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    .line 2317
    new-instance v0, Lcom/lge/camera/CameraMediator$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraMediator$8;-><init>(Lcom/lge/camera/CameraMediator;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureRecogListener:Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

    .line 107
    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->setApplicationMode(I)V

    .line 108
    return-void

    .line 1355
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x10
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x18
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x20
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x24
    .end array-data

    :array_6
    .array-data 4
        0x4
        0x28
    .end array-data

    :array_7
    .array-data 4
        0x5
        0x2c
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x30
    .end array-data
.end method

.method private addImageToImageHandler([B[BLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/Bitmap;I)Z
    .locals 17
    .param p1, "exifData"    # [B
    .param p2, "data"    # [B
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileExt"    # Ljava/lang/String;
    .param p5, "dateTaken"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "bitmap"    # Landroid/graphics/Bitmap;
    .param p9, "imageRotationDegree"    # I

    .prologue
    .line 804
    const/4 v15, 0x0

    .line 806
    .local v15, "returnValue":Z
    :try_start_0
    const-string v3, "CameraApp"

    const-string v5, "imageHandler.addImage-start "

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    if-nez p3, :cond_0

    .line 808
    const-string v3, "CameraApp"

    const-string v5, "error get file name!"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const/4 v3, 0x0

    .line 848
    :goto_0
    return v3

    .line 812
    :cond_0
    const/4 v4, 0x0

    .line 813
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v3

    if-nez v3, :cond_1

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 817
    :cond_1
    if-eqz p1, :cond_4

    move-object/from16 v12, p1

    .line 818
    .local v12, "imageData":[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CameraMediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v5, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "shotmode_full_continuous"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    move/from16 v13, p9

    invoke-virtual/range {v3 .. v14}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BIZ)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 832
    const-string v3, "content"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 833
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    .line 839
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 840
    const/4 v15, 0x1

    .line 846
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "imageData":[B
    :cond_3
    :goto_3
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imageHandler.addImage-end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v15

    .line 848
    goto/16 :goto_0

    .restart local v4    # "cr":Landroid/content/ContentResolver;
    :cond_4
    move-object/from16 v12, p2

    .line 817
    goto/16 :goto_1

    .line 835
    .restart local v12    # "imageData":[B
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 842
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "imageData":[B
    :catch_0
    move-exception v2

    .line 843
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v5, "Exception while compressing image."

    invoke-static {v3, v5, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 844
    const/4 v15, 0x0

    goto :goto_3
.end method

.method private getFileNameAndExt()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 515
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 516
    .local v0, "fileNameAndExt":[Ljava/lang/String;
    const-string v2, ".tmp"

    aput-object v2, v0, v5

    .line 517
    const-string v2, ".jpg"

    aput-object v2, v0, v6

    .line 519
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    const-string v2, "content"

    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "fp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 523
    aget-object v2, v0, v5

    if-eqz v2, :cond_0

    .line 524
    aget-object v2, v0, v5

    const-string v3, "^[^.]+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 525
    aget-object v2, v0, v5

    const-string v3, "\\.[a-zA-Z]+$"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 529
    .end local v1    # "fp":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 784
    const-string v1, "content"

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "returnPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 787
    .end local v0    # "returnPath":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 788
    .restart local v0    # "returnPath":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\.[a-zA-Z]+$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    :cond_2
    if-nez v0, :cond_0

    .line 792
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 796
    .end local v0    # "returnPath":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "returnPath":Ljava/lang/String;
    goto :goto_0
.end method

.method private setExifData([B)[B
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 767
    .local v0, "exifData":[B
    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/CameraMediator;->mFocalLength:F

    invoke-static {p1, v1, v2, v3}, Lcom/lge/camera/util/ExifUtil;->setNewExifInformation([BILandroid/location/Location;F)[B

    move-result-object v0

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    if-eqz v0, :cond_2

    .line 773
    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 778
    :cond_1
    :goto_0
    return-object v0

    .line 775
    :cond_2
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    goto :goto_0
.end method

.method private stopContinuousShotOnPause()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 393
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    const-string v2, "CameraApp"

    const-string v3, "Continuous shot is running, stop it."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopByUserAction()Z

    .line 399
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SoundController;->stopSoundContinuous()V

    .line 400
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->waitForSaveDone()V

    .line 402
    const-string v2, "on"

    const-string v3, "key_camera_auto_review"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "on_delay_2sec"

    const-string v3, "key_camera_auto_review"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "on_delay_5sec"

    const-string v3, "key_camera_auto_review"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 405
    .local v0, "autoReview":Z
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 406
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 407
    const-string v2, "com.lge.camera.command.DisplayCameraPostview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    .line 420
    .end local v0    # "autoReview":Z
    :cond_2
    :goto_0
    return-void

    .line 409
    .restart local v0    # "autoReview":Z
    :cond_3
    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 414
    .end local v0    # "autoReview":Z
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "CameraApp"

    const-string v3, "ClassCastException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 412
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "autoReview":Z
    :cond_4
    :try_start_1
    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 416
    .end local v0    # "autoReview":Z
    :catch_1
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "NullPointerException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private stopShotModeOnPause()V
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFullFrameContinuousShotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_full_continuous"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    const-string v0, "CameraApp"

    const-string v1, "stopContinuousShotFullFrame"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-virtual {v0}, Lcom/lge/camera/module/FullFrameContinuousShot;->stopByOnPause()V

    .line 430
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_clear_shot"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->stopByUserAction()V

    .line 435
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isRefocusShotSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_refocus"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->stopByUserAction()V

    .line 440
    :cond_3
    return-void
.end method


# virtual methods
.method public beDirectlyGoingToCropGallery()Z
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFaceDetectionNoUI()Z
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkFaceDetectionNoUI()Z

    move-result v0

    return v0
.end method

.method public checkShotModeForZoomInOut()Z
    .locals 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isContinuousShotAlived()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isPanoramaStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_plane_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_free_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_dual_camera"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_refocus"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1869
    :cond_0
    const/4 v0, 0x0

    .line 1871
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkSupportVideoSize(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2201
    const/4 v0, 0x0

    return v0
.end method

.method public checkUpdateThumbnail()Z
    .locals 2

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2127
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton() return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const/4 v0, 0x0

    .line 2130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 180
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/lge/camera/controller/camera/CameraIndicatorController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 183
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/lge/camera/controller/camera/CameraFocusController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraFocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 186
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/lge/camera/controller/camera/CameraStorageController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraStorageController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 189
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/PanoramaController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    .line 192
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    .line 195
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPlanePanoramaController:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .line 198
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mPlanePanoramaController:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/lge/camera/controller/camera/TimerController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/TimerController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    .line 201
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lcom/lge/camera/controller/camera/FacePreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FacePreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    .line 204
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    .line 210
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v0, Lcom/lge/camera/controller/GestureShutterController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/GestureShutterController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    .line 213
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mGestureRecogListener:Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/GestureShutterController;->setGestureRecogEngineListener(Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;)V

    .line 216
    invoke-super {p0}, Lcom/lge/camera/Mediator;->createControllers()V

    .line 217
    return-void
.end method

.method protected createPreviewController()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 167
    return-void
.end method

.method public deleteClearShotImages()Z
    .locals 9

    .prologue
    .line 1202
    const-string v6, "CameraApp"

    const-string v7, "deleteClearShotImages-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraStorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v5

    .line 1204
    .local v5, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1205
    .local v0, "clearShotFilename":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1207
    .local v3, "fullFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v6, 0x6

    if-ge v4, v6, :cond_2

    .line 1208
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClearShotImage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1211
    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1212
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1214
    const-string v6, "CameraApp"

    const-string v7, "clear shot temp file delete fail."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1217
    :cond_1
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file is not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1220
    :catch_0
    move-exception v1

    .line 1221
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "deleteClearShotImages fail!:"

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1223
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "CameraApp"

    const-string v7, "deleteClearShotImages-end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/4 v6, 0x1

    return v6
.end method

.method public deleteImage(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1228
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v3

    .line 1230
    .local v3, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1231
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1232
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1233
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1235
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    .line 1236
    .local v0, "equal":Z
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1237
    .local v2, "index":I
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1238
    if-eqz v0, :cond_0

    .line 1239
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1241
    :cond_0
    const-string v5, "CameraApp"

    const-string v6, "deleted uri"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 1246
    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1250
    .end local v0    # "equal":Z
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "index":I
    :goto_2
    return v4

    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    move v0, v4

    .line 1235
    goto :goto_0

    .line 1243
    .restart local v0    # "equal":Z
    .restart local v2    # "index":I
    :cond_2
    const-string v5, "CameraApp"

    const-string v6, "failure to delete uri!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1249
    .end local v0    # "equal":Z
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "index":I
    :cond_3
    const-string v4, "CameraApp"

    const-string v5, "failure delete image file (return -1)"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public deleteRefocusShotImages()Z
    .locals 9

    .prologue
    .line 1471
    const-string v6, "CameraApp"

    const-string v7, "deleteRefocusShotImages-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraStorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 1473
    .local v4, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1474
    .local v5, "refocusFilename":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1477
    .local v2, "fullFilePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x7

    if-ge v3, v6, :cond_3

    .line 1478
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RefocusShotImage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1481
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1482
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1484
    const-string v6, "CameraApp"

    const-string v7, "Refocus temp file delete fail."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1487
    :cond_1
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file is not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "deleteRefocusShotImages fail!:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1505
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const-string v6, "CameraApp"

    const-string v7, "deleteRefocusShotImages-end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const/4 v6, 0x1

    return v6

    .line 1491
    :cond_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DepthMapImage.y"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1493
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1494
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1495
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1496
    const-string v6, "CameraApp"

    const-string v7, "Refocus temp file delete fail."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1499
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file is not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public deleteTimeMachineImages()Z
    .locals 9

    .prologue
    .line 1175
    const-string v6, "CameraApp"

    const-string v7, "deleteTimeMachineImages-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraStorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 1177
    .local v4, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1178
    .local v5, "timeMachineFilename":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1181
    .local v2, "fullFilePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x5

    if-ge v3, v6, :cond_2

    .line 1182
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimeMachineImage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1185
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1188
    const-string v6, "CameraApp"

    const-string v7, "TMS temp file delete fail."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1191
    :cond_1
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file is not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "deleteTimeMachineImages fail!:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1197
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "CameraApp"

    const-string v7, "deleteTimeMachineImages-end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const/4 v6, 0x1

    return v6
.end method

.method public doAfterSaveImageSavers()V
    .locals 1

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getQueueCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isExitIgnoreDuringSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->setExitIgnoreDuringSaving(Z)V

    .line 974
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteSavingProgressDialog()V

    .line 977
    :cond_0
    return-void
.end method

.method public doAttach()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1137
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAttach(),mSaveUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCropValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIntentFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSavedImageUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mPausing:Z

    if-eqz v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachNoCrop()V

    goto :goto_0

    .line 1146
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachNoCrop()V

    goto :goto_0

    .line 1150
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachCrop()V

    goto :goto_0
.end method

.method public doAttachCrop()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles",
            "WorldWriteableFiles"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 1065
    const/4 v6, 0x0

    .line 1066
    .local v6, "tempUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 1067
    .local v5, "tempStream":Ljava/io/FileOutputStream;
    const-string v7, "CameraApp"

    const-string v8, "doAttachCrop()"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    const-string v8, "crop-temp"

    invoke-virtual {v7, v8}, Lcom/lge/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1070
    .local v4, "path":Ljava/io/File;
    if-nez v4, :cond_0

    .line 1071
    const-string v7, "CameraApp"

    const-string v8, "doAttach\tcrop-temp file path is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1105
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 1134
    .end local v4    # "path":Ljava/io/File;
    :goto_0
    return-void

    .line 1075
    .restart local v4    # "path":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1076
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    const-string v8, "crop-temp"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 1079
    if-eqz v5, :cond_1

    .line 1081
    :try_start_2
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    if-eqz v7, :cond_4

    .line 1082
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1089
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1093
    :cond_1
    const/4 v5, 0x0

    .line 1094
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1095
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tempUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1105
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 1108
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1109
    .local v3, "newExtras":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    const-string v8, "circle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1110
    const-string v7, "circleCrop"

    const-string v8, "true"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v7, :cond_5

    .line 1113
    const-string v7, "CameraApp"

    const-string v8, "mSaveUri"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string v7, "output"

    iget-object v8, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1128
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v1, "cropIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    const-string v8, "image/*"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1132
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7, v1, v10}, Lcom/lge/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1133
    const/4 v3, 0x0

    .line 1134
    goto :goto_0

    .line 1084
    .end local v1    # "cropIntent":Landroid/content/Intent;
    .end local v3    # "newExtras":Landroid/os/Bundle;
    :cond_4
    :try_start_4
    const-string v7, "CameraApp"

    const-string v8, "doAttach tempStream is null!!!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1089
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1105
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1089
    :catchall_0
    move-exception v7

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v7
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1096
    .end local v4    # "path":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1097
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v7, "CameraApp"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1098
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1105
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1100
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 1101
    .local v2, "ex":Ljava/io/IOException;
    :try_start_8
    const-string v7, "CameraApp"

    const-string v8, "IOException"

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1102
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1105
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 1116
    .restart local v3    # "newExtras":Landroid/os/Bundle;
    .restart local v4    # "path":Ljava/io/File;
    :cond_5
    const-string v7, "CameraApp"

    const-string v8, "return-data"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v7, "return-data"

    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1118
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1119
    .local v0, "InExtra":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 1120
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input extra = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v7, "aspectX"

    const-string v8, "aspectX"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1122
    const-string v7, "aspectY"

    const-string v8, "aspectY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1123
    const-string v7, "outputX"

    const-string v8, "outputX"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1124
    const-string v7, "outputY"

    const-string v8, "outputY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public doAttachNoCrop()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1024
    const-string v3, "CameraApp"

    const-string v4, "doAttachNoCrop()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachSaveUri()V

    .line 1059
    :goto_0
    return-void

    .line 1028
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 1029
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    invoke-static {v3, v6}, Lcom/lge/camera/util/Util;->createCaptureBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1030
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 1031
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1032
    const-string v3, "CameraApp"

    const-string v4, "doAttach OK"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0, v7, v2}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 1034
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1037
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "CameraApp"

    const-string v4, "doAttach mCaptureData is Null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "Orgbmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 1040
    const-string v3, "CameraApp"

    const-string v4, "doAttach mSavedImageUri null!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_0

    .line 1044
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v3, v4, v6, v5}, Lcom/lge/camera/util/ImageManager;->loadBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1046
    if-nez v0, :cond_3

    .line 1047
    const-string v3, "CameraApp"

    const-string v4, "LoadBitmap fail!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_0

    .line 1051
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 1052
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1053
    const-string v3, "CameraApp"

    const-string v4, "doAttach OK"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0, v7, v2}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 1055
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public doSmartCameraModeCallback([I)V
    .locals 6
    .param p1, "data"    # [I

    .prologue
    const/4 v5, 0x2

    .line 2170
    aget v3, p1, v5

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    ushr-int/lit8 v2, v3, 0x10

    .line 2171
    .local v2, "ASDStatus":I
    aget v3, p1, v5

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    ushr-int/lit8 v1, v3, 0x18

    .line 2172
    .local v1, "ASDScene":I
    const/4 v3, 0x3

    aget v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 2173
    .local v0, "ASDMove":I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartCameraModeCallback, object callback data is  ASDStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ASDScene : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ASDMove : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->setCurrentIAMode(I)V

    .line 2185
    return-void
.end method

.method public doTouchbyAF(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_6

    .line 1681
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    if-eqz v0, :cond_1

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_free_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1684
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    if-eqz v0, :cond_2

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1687
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPlanePanoramaController:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    if-eqz v0, :cond_3

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_plane_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1691
    :cond_3
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_continuous"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1694
    :cond_4
    const-string v0, "0"

    const-string v1, "key_camera_timer"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->snapshotOnContinuousFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1701
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/FocusController;->startFocusByTouchPress(II)V

    goto :goto_0

    .line 1704
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1706
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/FocusController;->startAEByTouchPress(II)V

    goto :goto_0
.end method

.method public doVoiceShutterIndicatorUpdateHandler()V
    .locals 1

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2070
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->updateVoiceShutterIndicator(Z)V

    .line 2072
    :cond_0
    return-void
.end method

.method public facePreviewInitController()V
    .locals 1

    .prologue
    .line 2085
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initController()V

    .line 2086
    return-void
.end method

.method public finishImageSaver()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->finish()V

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    .line 856
    :cond_0
    return-void
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailablePictureCount(I)J
    .locals 2
    .param p1, "storageType"    # I

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCaptureData()[B
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    return-object v0
.end method

.method public getCurrentIAMode()I
    .locals 1

    .prologue
    .line 2192
    iget v0, p0, Lcom/lge/camera/CameraMediator;->mCurrentIAMode:I

    return v0
.end method

.method public getCurrentSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;
    .locals 1

    .prologue
    .line 1255
    invoke-super {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/CameraSettingMenu;

    return-object v0
.end method

.method public bridge synthetic getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v0

    return-object v0
.end method

.method public getDualCameraPictureSize()[I
    .locals 4

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2207
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 2208
    .local v0, "sizeOnDevice":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2209
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=========== size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 2213
    .end local v0    # "sizeOnDevice":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEffectRecorderPausing()Z
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEffectRecorderPausing()Z

    move-result v0

    return v0
.end method

.method public getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    return-object v0
.end method

.method public getFaceValues(I)[I
    .locals 3
    .param p1, "mValue"    # I

    .prologue
    .line 1377
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceBeauty : mFaceValues.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-gez p1, :cond_1

    .line 1380
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Error : mValue must be a smaller than mFaceValues.length"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const/4 p1, 0x4

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    return-object v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraFocusController;

    return-object v0
.end method

.method public getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    return-object v0
.end method

.method public getFreePanoramaEngineStatus()I
    .locals 1

    .prologue
    .line 2002
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getPanoramaEngineState()I

    move-result v0

    return v0
.end method

.method public getFreePanoramaResultSize()[I
    .locals 1

    .prologue
    .line 1992
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getResultSize()[I

    move-result-object v0

    return-object v0
.end method

.method public getFreePanoramaStatus()I
    .locals 1

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->getPanoramaState()I

    move-result v0

    return v0
.end method

.method public getImageListRotation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImageListUri()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageListUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraIndicatorController;

    return-object v0
.end method

.method public getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1289
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-nez v0, :cond_0

    .line 1318
    :goto_0
    return-object v5

    .line 1293
    :cond_0
    const-wide/16 v2, -0x1

    .line 1294
    .local v2, "id":J
    if-eqz p1, :cond_1

    .line 1295
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 1296
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB start id is %d, and uri is %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 1302
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end: uri not valid"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1306
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v7

    .line 1308
    .local v7, "degree":I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1310
    .local v8, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    if-eqz v0, :cond_3

    .line 1311
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v0, v8, v7, v6}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1316
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 1318
    goto :goto_0

    .line 1313
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    return-object v0
.end method

.method public getPlanePanoramaController()Lcom/lge/camera/controller/camera/PlanePanoramaController;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPlanePanoramaController:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    return-object v0
.end method

.method public getPlanePanoramaResultSize()[I
    .locals 1

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPlanePanoramaController()Lcom/lge/camera/controller/camera/PlanePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->getResultSize()[I

    move-result-object v0

    return-object v0
.end method

.method public getPlanePanoramaStatus()I
    .locals 1

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPlanePanoramaController()Lcom/lge/camera/controller/camera/PlanePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->getStatus()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    return-object v0
.end method

.method public getPreviousPictureSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1416
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get previous PictireSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mPreviousPictureSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousPictureSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousShotModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->getCount()I

    move-result v0

    .line 887
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    return-object v0
.end method

.method public getRefocusPictures()Z
    .locals 2

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mRefocusShotHasPictures:Z

    if-eqz v0, :cond_0

    const-string v0, "shotmode_refocus"

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1533
    :cond_0
    const/4 v0, 0x0

    .line 1544
    :goto_0
    return v0

    .line 1536
    :cond_1
    new-instance v0, Lcom/lge/camera/CameraMediator$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraMediator$4;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1544
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSaveURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    .line 996
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedChildIndex()I
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/CameraSettingMenu;->getSelectedChildIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getShotModeMenuController()Lcom/lge/camera/controller/ShotModeMenuController;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getShotModeMenuController()Lcom/lge/camera/controller/camera/CameraShotModeMenuController;

    move-result-object v0

    return-object v0
.end method

.method public getShotModeMenuController()Lcom/lge/camera/controller/camera/CameraShotModeMenuController;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;

    return-object v0
.end method

.method public getSmartModeForPictureSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreSmartModePicSize:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getStorageController()Lcom/lge/camera/controller/StorageController;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    return-object v0
.end method

.method public getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraStorageController;

    return-object v0
.end method

.method public getTimeMachinePictures()Z
    .locals 1

    .prologue
    .line 1436
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mTimemachineHasPictures:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1437
    :cond_0
    const/4 v0, 0x0

    .line 1448
    :goto_0
    return v0

    .line 1440
    :cond_1
    new-instance v0, Lcom/lge/camera/CameraMediator$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraMediator$3;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1448
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTimerCaptureDelay()I
    .locals 1

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->getTimerCaptureDelay()I

    move-result v0

    return v0
.end method

.method public getTimerController()Lcom/lge/camera/controller/camera/TimerController;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    return-object v0
.end method

.method public hasSaveURI()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 984
    iget-boolean v1, p0, Lcom/lge/camera/CameraMediator;->mRequestSingleImage:Z

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 988
    :cond_0
    return v0
.end method

.method public hideAudiozoomready()V
    .locals 0

    .prologue
    .line 2197
    return-void
.end method

.method public hideFreePanoramaTakingGuide()V
    .locals 2

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleTakingGuide(Z)V

    .line 1988
    return-void
.end method

.method public hideGestureGuide()V
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->hideGestureGuide()V

    .line 2279
    :cond_0
    return-void
.end method

.method public hideOsd()V
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 1171
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 1172
    return-void
.end method

.method public initControllers()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/lge/camera/Mediator;->initControllers()V

    .line 221
    return-void
.end method

.method public initFaceDetectInfo()V
    .locals 1

    .prologue
    .line 2090
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 2091
    return-void
.end method

.method public isAttachIntent()Z
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->isCaptureIntent:Z

    return v0
.end method

.method public isAttachMode()Z
    .locals 1

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isAttachIntent()Z

    move-result v0

    return v0
.end method

.method public isBurstShotStop()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mBurstShotStop:Z

    return v0
.end method

.method public isContinuousShotAlived()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mContinuousShotAlived:Z

    return v0
.end method

.method public isGestureShotActivated()Z
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isGestureShotActivated()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMMSIntent()Z
    .locals 6

    .prologue
    .line 1323
    const/4 v3, 0x0

    .line 1324
    .local v3, "isMMScalling":Z
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1325
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "callingPackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1328
    const-string v4, "MMSAttach"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1329
    const/4 v3, 0x1

    .line 1332
    :cond_0
    const-string v4, "intentFrom"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    .local v2, "intentFrom":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1334
    const-string v4, "MMSAttach"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1335
    const/4 v3, 0x1

    .line 1343
    .end local v2    # "intentFrom":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v4, "com.android.mms"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1344
    const/4 v3, 0x1

    .line 1347
    :cond_2
    return v3
.end method

.method public isPanoramaStarted()Z
    .locals 1

    .prologue
    .line 1891
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v0

    return v0
.end method

.method public isPanoramaUIShown()Z
    .locals 1

    .prologue
    .line 1901
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaUIShown()Z

    move-result v0

    return v0
.end method

.method public isPanoramaUpdatebutton()Z
    .locals 1

    .prologue
    .line 1916
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaUpdatebutton()Z

    move-result v0

    return v0
.end method

.method public isPlayRingMode()Z
    .locals 1

    .prologue
    .line 1352
    const/4 v0, 0x0

    return v0
.end method

.method public isRefocusShotHasPictures()Z
    .locals 1

    .prologue
    .line 1526
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mRefocusShotHasPictures:Z

    return v0
.end method

.method public isSynthesisInProgress()Z
    .locals 1

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->isSynthesisInProgress()Z

    move-result v0

    return v0
.end method

.method public isTimemachineHasPictures()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mTimemachineHasPictures:Z

    return v0
.end method

.method public isTimerShotCountdown()Z
    .locals 1

    .prologue
    .line 2155
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->isTimerShotCountdown()Z

    move-result v0

    return v0
.end method

.method public isfacePreviewInitialized()Z
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "CameraApp"

    const-string v1, "onCreate()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    const-string v1, "DefaultNormalShot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/lge/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mModule:Lcom/lge/camera/module/Module;

    .line 227
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->createControllers()V

    .line 228
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onCreate()V

    .line 230
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->setupCaptureIntent()V

    .line 231
    const-string v0, "CameraApp"

    const-string v1, "onCreate()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 444
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 447
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    .line 455
    :cond_1
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    .line 456
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 458
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    .line 459
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mPlanePanoramaController:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .line 460
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    .line 462
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    .line 463
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    .line 464
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    .line 466
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onDestroy()V

    .line 467
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 2109
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FacePreviewController;->onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V

    .line 2110
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 334
    const-string v0, "CameraApp"

    const-string v1, "onPause()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 337
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->stopShotModeOnPause()V

    .line 338
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->finishImageSaver()V

    .line 340
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteTimeMachineImages()Z

    .line 349
    :cond_0
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_refocus"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 353
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteRefocusShotImages()Z

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "on"

    const-string v1, "key_smart_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/QuickButtonController;->setSmartCameraMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 362
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->stopContinuousShotOnPause()V

    .line 363
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopReceivingLocationUpdates()V

    .line 365
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->onPause()V

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    if-eqz v0, :cond_4

    .line 369
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopPanorama()V

    .line 371
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_6

    .line 372
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_plane_panorama"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 375
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviousPictureSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveMainPreviousPictureSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    :cond_5
    const-string v0, "key_light"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->setBackgroundColorBlack()V

    .line 384
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_7

    .line 386
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->releaseGestureEngine()V

    .line 388
    :cond_7
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onPause()V

    .line 389
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 236
    const-string v3, "CameraApp"

    const-string v4, "onResume()-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v3, Lcom/lge/camera/util/ImageSavers;

    const/16 v4, 0x28

    invoke-direct {v3, p0, v4}, Lcom/lge/camera/util/ImageSavers;-><init>(Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;I)V

    iput-object v3, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    .line 239
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteTimeMachineImages()Z

    .line 242
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    if-ne v3, v5, :cond_6

    const-string v3, "key_light"

    const-string v4, "on"

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 260
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->setBackgroundColorWhite()V

    .line 261
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->setBacklightToMax(Landroid/app/Activity;)V

    .line 267
    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onResume()V

    .line 269
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.lge.pa.action.CAMVOICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    const-string v3, "CameraApp"

    const-string v4, "Camera is called by QVOICE, So voice shutter on!! "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v3, "key_voiceshutter"

    const-string v4, "on"

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    const-string v3, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "on"

    const-string v4, "key_smart_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraMediator;->setQuickButtonMode(Z)V

    .line 282
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v3}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 283
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttach()V

    .line 284
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v3}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 330
    :goto_2
    return-void

    .line 244
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "shotMode":Ljava/lang/String;
    const-string v3, "not found"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 246
    const-string v3, "shotmode_normal"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_4
    const-string v3, "shotmode_refocus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 250
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteRefocusShotImages()Z

    .line 251
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 254
    :cond_5
    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    .end local v2    # "shotMode":Ljava/lang/String;
    :cond_6
    const-string v3, "key_light"

    const-string v4, "off"

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    if-nez v3, :cond_0

    .line 264
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->setBackgroundColorBlack()V

    goto/16 :goto_1

    .line 288
    .restart local v0    # "action":Ljava/lang/String;
    :cond_8
    new-instance v3, Lcom/lge/camera/CameraMediator$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/CameraMediator$1;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 307
    const-string v3, "shotmode_normal"

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 309
    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_normal"

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 311
    :cond_9
    const-string v3, "auto"

    const-string v4, "key_scene_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 313
    const-string v3, "key_scene_mode"

    const-string v4, "auto"

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    :cond_a
    const-string v3, "off"

    const-string v4, "key_smart_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 316
    const-string v3, "key_smart_mode"

    const-string v4, "off"

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    :cond_b
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 319
    invoke-virtual {p0, v6, v5}, Lcom/lge/camera/CameraMediator;->setPreviewEffectForBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 323
    :cond_c
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    if-nez v3, :cond_d

    .line 324
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->getMainPreviousPictureSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "previousSize":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->setPreviousPictureSize(Ljava/lang/String;)V

    .line 329
    .end local v1    # "previousSize":Ljava/lang/String;
    :cond_d
    const-string v3, "CameraApp"

    const-string v4, "onResume()-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public postviewRequestInit()Z
    .locals 2

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 1836
    const/4 v0, 0x1

    .line 1838
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putPreviewFrameForGesture([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/GestureShutterController;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 2286
    :cond_0
    return-void
.end method

.method public releaseGestureEngine()V
    .locals 1

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->releaseGestureEngine()V

    .line 2265
    :cond_0
    return-void
.end method

.method public removeAllImageList()V
    .locals 2

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 512
    :cond_1
    return-void
.end method

.method public removeFreePanoramaBlackBg()V
    .locals 1

    .prologue
    .line 1941
    new-instance v0, Lcom/lge/camera/CameraMediator$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraMediator$7;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1948
    return-void
.end method

.method public removeFreePanoramaView()V
    .locals 1

    .prologue
    .line 1957
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->removePanoramaView()V

    .line 1958
    return-void
.end method

.method public removePanoramaView()V
    .locals 1

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    .line 1887
    return-void
.end method

.method public removePlanePanoramaView()V
    .locals 1

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPlanePanoramaController()Lcom/lge/camera/controller/camera/PlanePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->hide()V

    .line 2030
    return-void
.end method

.method public restartFreePanorama()V
    .locals 1

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->restartToStartupPreview()V

    .line 1983
    return-void
.end method

.method public restoreAutoReviewValue()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2234
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore previous AutoReviewValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2240
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_camera_auto_review"

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2246
    :cond_0
    return-void
.end method

.method public runGestureEngine(Z)V
    .locals 1
    .param p1, "useCallback"    # Z

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_0

    .line 2256
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/GestureShutterController;->runGestureEngine(Z)V

    .line 2258
    :cond_0
    return-void
.end method

.method public saveAndAddImageForImageSavers(Lcom/lge/camera/util/SaveRequest;)V
    .locals 13
    .param p1, "sr"    # Lcom/lge/camera/util/SaveRequest;

    .prologue
    .line 905
    const/4 v4, 0x0

    .line 906
    .local v4, "fileName":Ljava/lang/String;
    const-string v11, ".jpg"

    .line 907
    .local v11, "fileExt":Ljava/lang/String;
    const/4 v8, 0x0

    .line 908
    .local v8, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 910
    .local v12, "ret":Z
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_scene_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->getFileNameAndExt()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v4, v0, v1

    .line 916
    invoke-direct {p0}, Lcom/lge/camera/CameraMediator;->getFileNameAndExt()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v5, v0, v1

    .line 930
    .end local v11    # "fileExt":Ljava/lang/String;
    .local v5, "fileExt":Ljava/lang/String;
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePicture >  sr.fileName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    if-nez v4, :cond_1

    .line 967
    :goto_1
    return-void

    .line 919
    .end local v5    # "fileExt":Ljava/lang/String;
    .restart local v11    # "fileExt":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentStorage()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p1, Lcom/lge/camera/util/SaveRequest;->isBurstFirst:Z

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "fileName":Ljava/lang/String;
    move-object v5, v11

    .end local v11    # "fileExt":Ljava/lang/String;
    .restart local v5    # "fileExt":Ljava/lang/String;
    goto :goto_0

    .line 936
    :cond_1
    invoke-direct {p0, v4}, Lcom/lge/camera/CameraMediator;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 937
    iget-object v2, p1, Lcom/lge/camera/util/SaveRequest;->exifData:[B

    iget-object v3, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    iget-wide v6, p1, Lcom/lge/camera/util/SaveRequest;->dateTaken:J

    iget-object v9, p1, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    iget v10, p1, Lcom/lge/camera/util/SaveRequest;->degree:I

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/lge/camera/CameraMediator;->addImageToImageHandler([B[BLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-result v12

    .line 940
    if-eqz v12, :cond_4

    .line 941
    iput-object v4, p0, Lcom/lge/camera/CameraMediator;->mSavedFileName:Ljava/lang/String;

    .line 942
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 943
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    const-string v3, "key_uplus_box"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->checkAutoReviewOff(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_refocus"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageListUri.add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 958
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 959
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecureImageUtil.get().addSecureLockImageUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_4
    iget-boolean v0, p1, Lcom/lge/camera/util/SaveRequest;->isSetLastThumb:Z

    if-eqz v0, :cond_5

    .line 963
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 964
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 966
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    goto/16 :goto_1
.end method

.method public saveClearShotPicture([BI)Z
    .locals 8
    .param p1, "data"    # [B
    .param p2, "clearShotTempFileCount"    # I

    .prologue
    .line 557
    const-string v5, "CameraApp"

    const-string v6, "saveClearShotPicture()-start "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v3, 0x0

    .line 560
    .local v3, "ret":Z
    const/4 v2, 0x0

    .line 561
    .local v2, "path":Ljava/lang/String;
    const-string v1, ".jpg"

    .line 562
    .local v1, "fileExt":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClearShotImage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "clearShotFilename":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v5

    iput v5, p0, Lcom/lge/camera/CameraMediator;->mImageRotationDegree:I

    .line 565
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/StorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-static {p1, v2, v0, v1}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 567
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 569
    .local v4, "saveUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 570
    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mSavedFileName:Ljava/lang/String;

    .line 571
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveClearShotPicture()-end, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return v3
.end method

.method public saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z
    .locals 6
    .param p1, "finalJpegData"    # [B
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "degree"    # I
    .param p4, "isSetLastThumb"    # Z
    .param p5, "isBurstFirst"    # Z

    .prologue
    .line 873
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/ImageSavers;->addImage([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v0

    .line 878
    :goto_0
    return v0

    .line 877
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "ImageSave is null!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savePicture([BLandroid/graphics/Bitmap;)Z
    .locals 18
    .param p1, "data"    # [B
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 705
    const/16 v17, 0x0

    .line 706
    .local v17, "ret":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 707
    .local v14, "dateTaken":J
    const-string v2, "CameraApp"

    const-string v3, "savePicture()-start "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v10, 0x0

    .line 710
    .local v10, "path":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/camera/CameraMediator;->mImageRotationDegree:I

    .line 712
    invoke-direct/range {p0 .. p1}, Lcom/lge/camera/CameraMediator;->setExifData([B)[B

    move-result-object v13

    .line 714
    .local v13, "exifData":[B
    const/4 v6, 0x0

    .line 715
    .local v6, "fileName":Ljava/lang/String;
    const-string v16, ".jpg"

    .line 716
    .local v16, "fileExt":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_scene_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 721
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getFileNameAndExt()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v6, v2, v3

    .line 722
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getFileNameAndExt()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v7, v2, v3

    .line 732
    .end local v16    # "fileExt":Ljava/lang/String;
    .local v7, "fileExt":Ljava/lang/String;
    :goto_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePicture >  fileName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/lge/camera/CameraMediator;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 735
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/CameraMediator;->mImageRotationDegree:I

    move-object/from16 v3, p0

    move-object v4, v13

    move-object/from16 v5, p1

    move-wide v8, v14

    move-object/from16 v11, p2

    invoke-direct/range {v3 .. v12}, Lcom/lge/camera/CameraMediator;->addImageToImageHandler([B[BLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-result v17

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 740
    if-eqz v17, :cond_3

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 744
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/lge/camera/CameraMediator;->mSavedFileName:Ljava/lang/String;

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->isAttachMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 748
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 752
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CameraMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 755
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    const-string v5, "key_uplus_box"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 760
    :cond_3
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePicture()-end, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return v17

    .line 724
    .end local v7    # "fileExt":Ljava/lang/String;
    .restart local v16    # "fileExt":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getCurrentStorage()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "fileName":Ljava/lang/String;
    move-object/from16 v7, v16

    .end local v16    # "fileExt":Ljava/lang/String;
    .restart local v7    # "fileExt":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public saveRefocusShotMap([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    .line 603
    const/4 v6, 0x0

    .line 604
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v7

    iput v7, p0, Lcom/lge/camera/CameraMediator;->mImageRotationDegree:I

    .line 606
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v7}, Lcom/lge/camera/controller/StorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v6

    .line 608
    const-string v7, "CameraApp"

    const-string v8, "saveRefocusShotMap-start:DepthMapImage.y"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v4, 0x0

    .line 612
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 614
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 616
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v7, "DepthMapImage.y"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 627
    if-eqz v5, :cond_4

    .line 629
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 633
    :goto_0
    const/4 v4, 0x0

    .line 635
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    const/4 v3, 0x0

    .line 637
    const-string v7, "CameraApp"

    const-string v8, "saveRefocusShotMap-end"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .end local v0    # "dir":Ljava/io/File;
    :goto_2
    return-void

    .line 630
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 631
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 620
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 621
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v7, "CameraApp"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    if-eqz v4, :cond_1

    .line 629
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 633
    :goto_4
    const/4 v4, 0x0

    .line 635
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .line 630
    .end local v3    # "file":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 631
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 623
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 624
    .local v2, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v7, "CameraApp"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 627
    if-eqz v4, :cond_2

    .line 629
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 633
    :goto_6
    const/4 v4, 0x0

    .line 635
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .line 630
    .end local v3    # "file":Ljava/io/File;
    :catch_4
    move-exception v1

    .line 631
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 627
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v4, :cond_3

    .line 629
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 633
    :goto_8
    const/4 v4, 0x0

    .line 635
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "file":Ljava/io/File;
    throw v7

    .line 630
    .end local v3    # "file":Ljava/io/File;
    :catch_5
    move-exception v1

    .line 631
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 627
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_7

    .line 623
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 620
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

.method public saveRefocusShotPicture([BI)Z
    .locals 8
    .param p1, "data"    # [B
    .param p2, "refocusShotTempFileCount"    # I

    .prologue
    .line 579
    const-string v5, "CameraApp"

    const-string v6, "saveRefocusPicture()-start "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v3, 0x0

    .line 582
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 583
    .local v1, "path":Ljava/lang/String;
    const-string v0, ".jpg"

    .line 584
    .local v0, "fileExt":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RefocusShotImage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "refocusFilename":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v5

    iput v5, p0, Lcom/lge/camera/CameraMediator;->mImageRotationDegree:I

    .line 588
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/StorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-static {p1, v1, v2, v0}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 591
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 593
    .local v4, "saveUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 594
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mSavedFileName:Ljava/lang/String;

    .line 595
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSavedFileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mSavedFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveRefocusPicture()-end, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return v3
.end method

.method public saveTimeMachinePicture([BI)Z
    .locals 8
    .param p1, "data"    # [B
    .param p2, "timeMachineTempFileCount"    # I

    .prologue
    .line 533
    const-string v5, "CameraApp"

    const-string v6, "saveTimeMachinePicture()-start "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/4 v2, 0x0

    .line 536
    .local v2, "ret":Z
    const/4 v1, 0x0

    .line 537
    .local v1, "path":Ljava/lang/String;
    const-string v0, ".jpg"

    .line 538
    .local v0, "fileExt":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimeMachineImage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "timeMachineFilename":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v5

    iput v5, p0, Lcom/lge/camera/CameraMediator;->mImageRotationDegree:I

    .line 544
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/StorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-static {p1, v1, v4, v0}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 546
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 548
    .local v3, "saveUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 549
    iput-object v4, p0, Lcom/lge/camera/CameraMediator;->mSavedFileName:Ljava/lang/String;

    .line 550
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveTimeMachinePicture()-end, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return v2
.end method

.method public setBurstShotStop(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/lge/camera/CameraMediator;->mBurstShotStop:Z

    .line 480
    return-void
.end method

.method public setCaptureData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 491
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 492
    return-void
.end method

.method public setContinuousShotAlived(Z)V
    .locals 0
    .param p1, "alived"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/lge/camera/CameraMediator;->mContinuousShotAlived:Z

    .line 472
    return-void
.end method

.method public setCurrentIAMode(I)V
    .locals 0
    .param p1, "currentIAMode"    # I

    .prologue
    .line 2188
    iput p1, p0, Lcom/lge/camera/CameraMediator;->mCurrentIAMode:I

    .line 2189
    return-void
.end method

.method public setFaceBeutyShotParameter(I)V
    .locals 7
    .param p1, "mValue"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1388
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    const-string v3, "FaceBeauty"

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1389
    const-string v2, "CameraApp"

    const-string v3, "setFaceBeutyShotParameter"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    const-string v3, "FaceBeauty"

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->getEngine(Ljava/lang/String;)Lcom/lge/olaworks/library/BaseEngine;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/FaceBeauty;

    .line 1393
    .local v0, "beautyEngine":Lcom/lge/olaworks/library/FaceBeauty;
    invoke-virtual {p0, p1}, Lcom/lge/camera/CameraMediator;->getFaceValues(I)[I

    move-result-object v1

    .line 1395
    .local v1, "value":[I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceBeauty White Value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Strength Value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    if-eqz v0, :cond_0

    .line 1399
    aget v2, v1, v5

    aget v3, v1, v6

    invoke-virtual {v0, v2, v3}, Lcom/lge/olaworks/library/FaceBeauty;->setParameter(II)V

    .line 1402
    .end local v0    # "beautyEngine":Lcom/lge/olaworks/library/FaceBeauty;
    .end local v1    # "value":[I
    :cond_0
    return-void
.end method

.method public setFocalLength(F)V
    .locals 0
    .param p1, "focalLength"    # F

    .prologue
    .line 1803
    iput p1, p0, Lcom/lge/camera/CameraMediator;->mFocalLength:F

    .line 1804
    return-void
.end method

.method public setFullFrameContinuousShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "bufferNum"    # I

    .prologue
    .line 1559
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFullFrameContinuousShotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    :goto_0
    return-void

    .line 1563
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContinuousShot buffer-count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v0, "zsl-burst-count"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setGestureShotActivated(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    if-eqz v0, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/TimerController;->setGestureShotActivated(Z)V

    .line 2293
    :cond_0
    return-void
.end method

.method public setPanoramaEngine()V
    .locals 1

    .prologue
    .line 1876
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->setEngine()V

    .line 1877
    return-void
.end method

.method public setPreviousAutoReviewValue()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2218
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2219
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    const-string v0, "key_camera_auto_review"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    .line 2223
    const-string v0, "key_camera_auto_review"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2224
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because of guest mode and gallery not exist, so previous AutoReview value is saved. Saved value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mPreviousCameraAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    :cond_0
    return-void
.end method

.method public setPreviousPictureSize(Ljava/lang/String;)V
    .locals 3
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 1422
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set previous PictireSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mPreviousPictureSize:Ljava/lang/String;

    .line 1424
    return-void
.end method

.method public setPreviousShotModeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "strShotMode"    # Ljava/lang/String;

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    .line 1412
    return-void
.end method

.method public setRefocusShotHasPictures(Z)V
    .locals 8
    .param p1, "has"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 1510
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isRefocusShotSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    iput-boolean p1, p0, Lcom/lge/camera/CameraMediator;->mRefocusShotHasPictures:Z

    .line 1512
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setRefocusReviewIconVisible(Z)V

    .line 1514
    const-string v1, "key_camera_auto_review"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, "autoReview":Ljava/lang/String;
    const-string v1, "on_delay_2sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x7d0

    .line 1516
    .local v4, "duration":J
    :goto_0
    const-string v1, "on_delay_5sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x1388

    .line 1518
    .local v2, "autoReviewDuration":J
    :goto_1
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 1519
    const/4 v1, 0x1

    const-wide/16 v6, 0x1b58

    invoke-virtual {p0, v1, v6, v7, p1}, Lcom/lge/camera/CameraMediator;->showBubblePopupVisibility(IJZ)V

    .line 1523
    .end local v0    # "autoReview":Ljava/lang/String;
    .end local v2    # "autoReviewDuration":J
    .end local v4    # "duration":J
    :cond_0
    return-void

    .restart local v0    # "autoReview":Ljava/lang/String;
    :cond_1
    move-wide v4, v6

    .line 1515
    goto :goto_0

    .restart local v4    # "duration":J
    :cond_2
    move-wide v2, v4

    .line 1516
    goto :goto_1
.end method

.method public setRefocusShotPreviewGuideVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 641
    new-instance v0, Lcom/lge/camera/CameraMediator$2;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/CameraMediator$2;-><init>(Lcom/lge/camera/CameraMediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method

.method public setRemoveFreePanoramaBlackBg(Z)V
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setRemoveFreePanoramaBlackBg(Z)V

    .line 2008
    return-void
.end method

.method public setSaveRequest(Lcom/lge/camera/util/SaveRequest;[BLandroid/graphics/Bitmap;IZZ)V
    .locals 2
    .param p1, "sr"    # Lcom/lge/camera/util/SaveRequest;
    .param p2, "data"    # [B
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "degree"    # I
    .param p5, "isSetLastThumb"    # Z
    .param p6, "isBurstFirst"    # Z

    .prologue
    .line 893
    invoke-direct {p0, p2}, Lcom/lge/camera/CameraMediator;->setExifData([B)[B

    move-result-object v0

    iput-object v0, p1, Lcom/lge/camera/util/SaveRequest;->exifData:[B

    .line 894
    iput-object p2, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    .line 895
    iput-object p3, p1, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/lge/camera/util/SaveRequest;->dateTaken:J

    .line 897
    iput p4, p1, Lcom/lge/camera/util/SaveRequest;->degree:I

    .line 898
    iput-boolean p5, p1, Lcom/lge/camera/util/SaveRequest;->isSetLastThumb:Z

    .line 899
    iput-boolean p6, p1, Lcom/lge/camera/util/SaveRequest;->isBurstFirst:Z

    .line 901
    return-void
.end method

.method public setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 7
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "sceneMode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1627
    if-eqz p1, :cond_0

    .line 1628
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1631
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

    .line 1635
    .local v0, "defaultMinFps":Ljava/lang/String;
    const-string v3, "persist.data.front.minfps"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1637
    .local v2, "minFpsArray":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1639
    .local v1, "fpsValues":[Ljava/lang/String;
    const-string v3, "night"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1640
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    .line 1641
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1676
    .end local v0    # "defaultMinFps":Ljava/lang/String;
    .end local v1    # "fpsValues":[Ljava/lang/String;
    .end local v2    # "minFpsArray":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1645
    .restart local v0    # "defaultMinFps":Ljava/lang/String;
    .restart local v1    # "fpsValues":[Ljava/lang/String;
    .restart local v2    # "minFpsArray":Ljava/lang/String;
    :cond_1
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 1649
    .end local v0    # "defaultMinFps":Ljava/lang/String;
    .end local v1    # "fpsValues":[Ljava/lang/String;
    .end local v2    # "minFpsArray":Ljava/lang/String;
    :cond_2
    const-string v3, "on"

    const-string v4, "key_smart_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1650
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateIAModeRangeMin()I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 1653
    :cond_3
    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1655
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateBurstShotModeRangeMin()I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 1659
    :cond_4
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

    .line 1663
    .restart local v0    # "defaultMinFps":Ljava/lang/String;
    const-string v3, "persist.data.rear.minfps"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1665
    .restart local v2    # "minFpsArray":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1666
    .restart local v1    # "fpsValues":[Ljava/lang/String;
    const-string v3, "night"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1667
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 1670
    :cond_5
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0
.end method

.method public setSmartCameraMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 1
    .param p1, "lgParams"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 2164
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setSmartCameraMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 2166
    return-void
.end method

.method public setSmartModeForPictureSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "PictureSize"    # Ljava/lang/String;

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mPreSmartModePicSize:Ljava/lang/String;

    .line 1808
    return-void
.end method

.method public setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "zsl_buffer"    # I

    .prologue
    .line 1427
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFullFrameContinuousShotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    :goto_0
    return-void

    .line 1431
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeMachineShot zsl-burst-count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string v0, "zsl-burst-count"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setTimemachineHasPictures(Z)V
    .locals 8
    .param p1, "has"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 1452
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    iput-boolean p1, p0, Lcom/lge/camera/CameraMediator;->mTimemachineHasPictures:Z

    .line 1454
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setTimeMachineReviewIconVisible(Z)V

    .line 1456
    const-string v1, "key_camera_auto_review"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, "autoReview":Ljava/lang/String;
    const-string v1, "on_delay_2sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x7d0

    .line 1458
    .local v4, "duration":J
    :goto_0
    const-string v1, "on_delay_5sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x1388

    .line 1459
    .local v2, "autoReviewDuration":J
    :goto_1
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 1460
    const/4 v1, 0x0

    const-wide/16 v6, 0x1b58

    invoke-virtual {p0, v1, v6, v7, p1}, Lcom/lge/camera/CameraMediator;->showBubblePopupVisibility(IJZ)V

    .line 1463
    .end local v0    # "autoReview":Ljava/lang/String;
    .end local v2    # "autoReviewDuration":J
    .end local v4    # "duration":J
    :cond_0
    return-void

    .restart local v0    # "autoReview":Ljava/lang/String;
    :cond_1
    move-wide v4, v6

    .line 1457
    goto :goto_0

    .restart local v4    # "duration":J
    :cond_2
    move-wide v2, v4

    .line 1458
    goto :goto_1
.end method

.method public setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V
    .locals 4
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "timer"    # Z
    .param p3, "scene"    # Z
    .param p4, "enable"    # Z

    .prologue
    .line 1569
    const-string v2, "key_camera_timer"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, "currentTimerValue":Ljava/lang/String;
    const-string v2, "key_scene_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, "currentSceneMode":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_full_continuous"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1580
    :cond_0
    const-string v2, "key_camera_timer"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1581
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isIndicatorControllerInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1582
    new-instance v2, Lcom/lge/camera/CameraMediator$5;

    invoke-direct {v2, p0}, Lcom/lge/camera/CameraMediator$5;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1591
    :cond_1
    if-eqz p3, :cond_3

    .line 1592
    const-string v2, "Smart shutter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1593
    const-string v2, "key_scene_mode"

    const-string v3, "auto"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1594
    const-string v2, "CameraApp"

    const-string v3, "####### scene mode set to off, because of smart shutter"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v2, "auto"

    invoke-virtual {p0, p1, v2}, Lcom/lge/camera/CameraMediator;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1605
    :cond_2
    invoke-virtual {p0, p4}, Lcom/lge/camera/CameraMediator;->smartShutterEnable(Z)V

    .line 1607
    :cond_3
    return-void
.end method

.method public setTimerSetting(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2135
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/TimerController;->setTimerSetting(I)V

    .line 2136
    return-void
.end method

.method public setTimerShotCountdown(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2159
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/TimerController;->setTimerShotCountdown(Z)V

    .line 2160
    return-void
.end method

.method public setupCaptureIntent()V
    .locals 2

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/lge/camera/CameraMediator;->isCaptureIntent:Z

    .line 1279
    return-void

    .line 1277
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setupCaptureParams()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1005
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1006
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1007
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    .line 1008
    const-string v1, "sigleimage"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/camera/CameraMediator;->mRequestSingleImage:Z

    .line 1009
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    .line 1010
    const-string v1, "intentFrom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    .line 1011
    const-string v1, "CameraApp"

    const-string v2, "mSaveUri: %s, crop:%s, intentFrom:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_0
    return-void

    .line 1014
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "no extra values"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showBubblePopupVisibility(IJZ)V
    .locals 4
    .param p1, "popupType"    # I
    .param p2, "duration"    # J
    .param p4, "show"    # Z

    .prologue
    .line 1551
    if-eqz p4, :cond_0

    .line 1552
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/lge/camera/controller/BubblePopupController;->showBubblePopup(Lcom/lge/camera/Mediator;IJ)V

    .line 1556
    :goto_0
    return-void

    .line 1554
    :cond_0
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/controller/BubblePopupController;->removeBubblePopup(Lcom/lge/camera/Mediator;J)V

    goto :goto_0
.end method

.method public showControllerForHideSettingMenu(ZZ)V
    .locals 2
    .param p1, "checkShowAll"    # Z
    .param p2, "showAll"    # Z

    .prologue
    .line 1816
    if-eqz p1, :cond_0

    if-eqz p2, :cond_4

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    if-eqz v0, :cond_1

    .line 1819
    const-string v0, "face_tracking"

    const-string v1, "key_focus"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "manual"

    const-string v1, "key_focus"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1821
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->showFocus()Z

    .line 1824
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isDualCameraActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1825
    :cond_2
    const-string v0, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->doCommandUi(Ljava/lang/String;)V

    .line 1828
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->showBeautyShotBarForNewUx(Z)V

    .line 1830
    :cond_4
    return-void
.end method

.method public showFreePanoramaBlackBg()V
    .locals 1

    .prologue
    .line 1921
    new-instance v0, Lcom/lge/camera/CameraMediator$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/CameraMediator$6;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1937
    return-void
.end method

.method public showFreePanoramaView()V
    .locals 1

    .prologue
    .line 1952
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showPanoramaView()V

    .line 1953
    return-void
.end method

.method public showGestureGuide()V
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->showGestureGuide()V

    .line 2272
    :cond_0
    return-void
.end method

.method public showOsd()V
    .locals 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    const-string v1, "key_smart_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->setQuickFunctionControllerVisible(Z)V

    .line 1162
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->showIndicatorController()V

    .line 1167
    return-void

    .line 1160
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->setQuickFunctionControllerVisible(Z)V

    goto :goto_0
.end method

.method public showPanoramaView()V
    .locals 1

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 1882
    return-void
.end method

.method public smartShutterEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_scene_mode"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1611
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 1612
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1613
    .local v3, "sceneEntryValues":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1614
    array-length v2, v3

    .line 1615
    .local v2, "sceneEntryValueLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1616
    aget-object v4, v3, v0

    const-string v5, "Smart shutter"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1617
    const-string v4, "key_scene_mode"

    const-string v5, "Smart shutter"

    invoke-virtual {p0, v4, v5, p1}, Lcom/lge/camera/CameraMediator;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1624
    .end local v0    # "i":I
    .end local v2    # "sceneEntryValueLength":I
    .end local v3    # "sceneEntryValues":[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 1615
    .restart local v0    # "i":I
    .restart local v2    # "sceneEntryValueLength":I
    .restart local v3    # "sceneEntryValues":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startFaceDetection(Z)V
    .locals 1
    .param p1, "bHasUI"    # Z

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FacePreviewController;->startFaceDetection(Z)V

    .line 2096
    return-void
.end method

.method public startFaceDetectionFromHal(Z)V
    .locals 1
    .param p1, "bHasUI"    # Z

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startFaceDetectionFromHal(Z)V

    .line 2114
    return-void
.end method

.method public startFreePanorama()V
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startPanorama()V

    .line 1963
    return-void
.end method

.method public startFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1972
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startEngine(Landroid/hardware/Camera$Parameters;)V

    .line 1973
    return-void
.end method

.method public startFreePanoramaRotation(IZ)V
    .locals 1
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFreePanoramaController:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startRotation(IZ)V

    .line 2015
    :cond_0
    return-void
.end method

.method public startGestureEngine()V
    .locals 1

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->isAvailableGestureShutterStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->startGestureEngine()V

    .line 2308
    :cond_0
    return-void
.end method

.method public startPanorama()V
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->startPanorama()V

    .line 1907
    return-void
.end method

.method public startPlanePanorama()V
    .locals 1

    .prologue
    .line 2034
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPlanePanoramaController()Lcom/lge/camera/controller/camera/PlanePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->startPanorama()V

    .line 2035
    return-void
.end method

.method public startPlanePanoramaEngine()V
    .locals 1

    .prologue
    .line 2019
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPlanePanoramaController()Lcom/lge/camera/controller/camera/PlanePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->startEngine()V

    .line 2020
    return-void
.end method

.method public startPlanePanoramaRotation(IZ)V
    .locals 1
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPlanePanoramaController:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPlanePanoramaController:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->startRotation(IZ)V

    .line 2052
    :cond_0
    return-void
.end method

.method public startTimerShot()V
    .locals 1

    .prologue
    .line 2150
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->startTimerShot()V

    .line 2151
    return-void
.end method

.method public stopByUserAction()Z
    .locals 1

    .prologue
    .line 2076
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2077
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->stopByUserAction()V

    .line 2078
    const/4 v0, 0x1

    .line 2080
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 2100
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopFaceDetection()V

    .line 2101
    return-void
.end method

.method public stopFaceDetectionFromHal()V
    .locals 1

    .prologue
    .line 2121
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->stopFaceDetectionFromHal()V

    .line 2122
    return-void
.end method

.method public stopFreePanorama()V
    .locals 1

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopPanorama()V

    .line 1968
    return-void
.end method

.method public stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1977
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopEngine(Landroid/hardware/Camera$Parameters;)V

    .line 1978
    return-void
.end method

.method public stopGestureEngine()V
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/GestureShutterController;->stopGestureEngine()V

    .line 2315
    :cond_0
    return-void
.end method

.method public stopPanorama()V
    .locals 1

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 1912
    return-void
.end method

.method public stopPlanePanorama()V
    .locals 1

    .prologue
    .line 2039
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPlanePanoramaController()Lcom/lge/camera/controller/camera/PlanePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->stopPanorama()V

    .line 2040
    return-void
.end method

.method public stopPlanePanoramaEngine()V
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPlanePanoramaController()Lcom/lge/camera/controller/camera/PlanePanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->stopEngine()V

    .line 2025
    return-void
.end method

.method public stopTimerShot()Z
    .locals 1

    .prologue
    .line 2140
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimerController()Lcom/lge/camera/controller/camera/TimerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/TimerController;->stopTimerShot()Z

    move-result v0

    return v0
.end method

.method public switchCameraId(I)V
    .locals 12
    .param p1, "cameraId"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1715
    iget-boolean v5, p0, Lcom/lge/camera/CameraMediator;->mPausing:Z

    if-eqz v5, :cond_0

    .line 1800
    :goto_0
    return-void

    .line 1718
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchCameraId()-start, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_free_panorama"

    invoke-virtual {p0, v5, v6}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1721
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->showFreePanoramaBlackBg()V

    .line 1724
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/CameraMediator;->setCameraId(I)V

    .line 1725
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    const-string v6, "Main_CameraAppConfig"

    invoke-virtual {v5, v6, v9}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1727
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-static {v3, p1}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1729
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopPreview()V

    .line 1731
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFreePanoramaController()Lcom/lge/camera/controller/camera/FreePanoramaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isPanoramaUIShown()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1733
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraMediator;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 1736
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->closeCamera()V

    .line 1738
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1739
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v5}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 1742
    :cond_3
    invoke-virtual {p0, v9}, Lcom/lge/camera/CameraMediator;->enableInput(Z)V

    .line 1747
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraMode()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 1748
    const-string v5, "DefaultNormalShot"

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraMediator;->setModule(Ljava/lang/String;)V

    .line 1751
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v4

    .line 1752
    .local v4, "sPreview":Lcom/lge/camera/components/CameraPreview;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/CameraPreview;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1753
    invoke-virtual {v4, v11}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1755
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 1757
    :try_start_0
    const-string v5, "shotmode_front_beauty"

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "shotmode_main_beauty"

    const-string v6, "key_camera_shot_mode"

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1763
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1765
    .local v1, "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1767
    .local v2, "gPreviewExtra":Landroid/view/SurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1768
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1769
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1770
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1771
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1772
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isPreviewing()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1773
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    .end local v1    # "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2    # "gPreviewExtra":Landroid/view/SurfaceView;
    :cond_6
    :goto_1
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchCameraId()-end, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1776
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1778
    .restart local v2    # "gPreviewExtra":Landroid/view/SurfaceView;
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1780
    .restart local v1    # "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1781
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1782
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1783
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1784
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/lge/camera/CameraMediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1785
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1787
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1789
    .end local v1    # "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2    # "gPreviewExtra":Landroid/view/SurfaceView;
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "CameraApp"

    const-string v6, "NullPointerException:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1791
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v5, :cond_6

    .line 1792
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5, v10, v8}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_1

    .line 1796
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_8
    invoke-virtual {v4, v9}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1797
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v5, v10, v8}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_1
.end method

.method public updateVoiceShutterIndicator(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 2061
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateVoiceIndicator(Z)V

    .line 2064
    :cond_0
    return-void
.end method

.method public waitAvailableQueueCount(I)V
    .locals 1
    .param p1, "availableCount"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/ImageSavers;->waitAvailableQueueCount(I)V

    .line 868
    :cond_0
    return-void
.end method

.method public waitSaveImageThreadDone()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->waitDone()V

    .line 862
    :cond_0
    return-void
.end method
