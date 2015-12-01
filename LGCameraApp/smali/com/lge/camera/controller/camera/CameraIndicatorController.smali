.class public Lcom/lge/camera/controller/camera/CameraIndicatorController;
.super Lcom/lge/camera/controller/IndicatorController;
.source "CameraIndicatorController.java"


# instance fields
.field private mPicturesRemaining:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/IndicatorController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    .line 44
    return-void
.end method

.method private calculateTakenPictures()I
    .locals 9

    .prologue
    .line 494
    const/4 v8, 0x0

    .line 495
    .local v8, "result":I
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 496
    .local v1, "uriImages":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    .line 497
    .local v2, "projection":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getStorageBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x0

    .line 501
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 504
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 505
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 507
    if-eqz v6, :cond_0

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 513
    :cond_0
    if-eqz v6, :cond_1

    .line 514
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v6, 0x0

    .line 519
    :cond_1
    :goto_0
    return v8

    .line 510
    :catch_0
    move-exception v7

    .line 511
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "CameraApp"

    const-string v5, "cursor error "

    invoke-static {v4, v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    if-eqz v6, :cond_1

    .line 514
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v6, 0x0

    goto :goto_0

    .line 513
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v6, :cond_2

    .line 514
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 515
    const/4 v6, 0x0

    :cond_2
    throw v4
.end method

.method private setContinuousAndPanoramaSizeIcon(Lcom/lge/camera/components/RotateImageView;Lcom/lge/camera/setting/ListPreference;)V
    .locals 6
    .param p1, "icon"    # Lcom/lge/camera/components/RotateImageView;
    .param p2, "pref"    # Lcom/lge/camera/setting/ListPreference;

    .prologue
    const v5, 0x7f020085

    .line 213
    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_plane_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    :cond_0
    const v2, 0x7f020082

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    const v2, 0x7f020083

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 227
    .local v1, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_9

    .line 229
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "extraInfo":Ljava/lang/String;
    const-string v2, "1536x864"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "1296x864"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "1280x768"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 234
    :cond_4
    const v2, 0x7f020072

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 235
    :cond_5
    const-string v2, "1280x960"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 236
    const v2, 0x7f02006a

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 237
    :cond_6
    const-string v2, "800x480"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    const v2, 0x7f020076

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 239
    :cond_7
    const-string v2, "640x480"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 240
    const v2, 0x7f02006b

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 242
    :cond_8
    invoke-virtual {p1, v5}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 245
    .end local v0    # "extraInfo":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1, v5}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0057

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPicturesRemaining()J
    .locals 2

    .prologue
    .line 545
    iget-wide v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    return-wide v0
.end method

.method public hideIndicator()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0057

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 5

    .prologue
    const v4, 0x7f0d0057

    const/4 v3, 0x0

    .line 48
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00cd

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 49
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mInit:Z

    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateRemainIndicator()V

    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateGpsIndicator()V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateStorageIndicator()V

    .line 57
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateVoiceIndicator(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateTimerIndicator()V

    .line 62
    invoke-super {p0}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 64
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    .line 67
    .local v0, "degree":I
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0041

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 68
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003e

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 69
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0043

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 70
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0044

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 71
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0059

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 72
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003d

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d005a

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 74
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003b

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 79
    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->startRotation(IZ)V

    .line 81
    .end local v0    # "degree":I
    :cond_0
    return-void
.end method

.method protected invalidateParentLayout()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0057

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 567
    return-void
.end method

.method protected isSmartModeOn()Z
    .locals 3

    .prologue
    .line 550
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rotateRemainTextIndicator(I)V
    .locals 11
    .param p1, "degree"    # I

    .prologue
    const/16 v10, 0xb4

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 361
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d005d

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 362
    .local v3, "remainTextLayout":Landroid/view/View;
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d005e

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 365
    .local v4, "remainTextLayoutRotate":Lcom/lge/camera/components/RotateLayout;
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateLayout;->setLayoutDirection(I)V

    .line 370
    invoke-virtual {v4, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 372
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090194

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 374
    .local v0, "marginTop":I
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09000c

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 377
    .local v2, "previewMargin":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 379
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 381
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 382
    invoke-virtual {v1, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 383
    const/16 v6, 0x14

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 384
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 385
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 387
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-static {v6, v7, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-static {v6, v7, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 389
    :cond_2
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 406
    .end local v2    # "previewMargin":I
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 407
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 391
    .restart local v2    # "previewMargin":I
    :cond_3
    iget v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mLeftMargin:I

    if-lez v6, :cond_4

    move v2, v5

    .end local v2    # "previewMargin":I
    :cond_4
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 394
    .restart local v2    # "previewMargin":I
    :cond_5
    invoke-virtual {v1, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 395
    const/16 v6, 0x15

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 396
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 397
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 399
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-static {v6, v7, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-static {v6, v7, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 401
    :cond_6
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 403
    :cond_7
    iget v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mLeftMargin:I

    if-lez v6, :cond_8

    move v2, v5

    .end local v2    # "previewMargin":I
    :cond_8
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public setIndicatorForSmartMode(ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isSmartModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const/4 p1, 0x1

    .line 528
    :cond_0
    const v3, 0x7f0d0041

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 529
    const v3, 0x7f0d003e

    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 531
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    const v3, 0x7f0d005f

    if-nez p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, v3, v0, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 534
    const v3, 0x7f0d0060

    if-nez p1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0, v3, v0, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 537
    :cond_1
    const v0, 0x7f0d005a

    if-nez p1, :cond_6

    :goto_4
    invoke-virtual {p0, v0, v1, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 538
    return-void

    :cond_2
    move v0, v2

    .line 528
    goto :goto_0

    :cond_3
    move v0, v2

    .line 529
    goto :goto_1

    :cond_4
    move v0, v2

    .line 532
    goto :goto_2

    :cond_5
    move v0, v2

    .line 534
    goto :goto_3

    :cond_6
    move v1, v2

    .line 537
    goto :goto_4
.end method

.method public setPicturesRemaining(J)V
    .locals 1
    .param p1, "remain"    # J

    .prologue
    .line 541
    iput-wide p1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    .line 542
    return-void
.end method

.method public showIndicator()V
    .locals 2

    .prologue
    const v1, 0x7f0d0057

    .line 85
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public slideIndicatorIn(Z)V
    .locals 4
    .param p1, "useAnimation"    # Z

    .prologue
    const v3, 0x7f0d0044

    const/4 v2, 0x1

    .line 111
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 116
    :cond_0
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 117
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 118
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0, v2, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 120
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 123
    iget v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mBattLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p0, v3, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public slideIndicatorOut(Z)V
    .locals 4
    .param p1, "useAnimation"    # Z

    .prologue
    const v3, 0x7f0d0044

    const/4 v2, 0x0

    .line 141
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 146
    :cond_0
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 147
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 149
    const v0, 0x7f0d005a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 151
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 154
    iget v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mBattLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0, v3, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 1
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 353
    invoke-super {p0, p1, p2}, Lcom/lge/camera/controller/IndicatorController;->startRotation(IZ)V

    .line 355
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->rotateRemainTextIndicator(I)V

    .line 358
    :cond_0
    return-void
.end method

.method public updateFlashIndicator(ZLjava/lang/String;)V
    .locals 3
    .param p1, "useLocalSetting"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0041

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 321
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 324
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFocusIndicator()V
    .locals 5

    .prologue
    const v4, 0x7f0d005c

    const/4 v3, 0x1

    .line 251
    iget-boolean v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mInit:Z

    if-nez v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 256
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 261
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 266
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 267
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 263
    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v3, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_1
.end method

.method public updateModeMenuIndicator()V
    .locals 3

    .prologue
    .line 571
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 572
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 573
    const-string v1, ""

    invoke-super {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->updateModeMenuIndicator(Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/IndicatorController;->updateModeMenuIndicator()V

    goto :goto_0
.end method

.method public updateRemainIndicator()V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 411
    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mInit:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isStorageControllerInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 412
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "updateRemainIndicator return: not initialized"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d0060

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 417
    .local v2, "remainIndicator":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d005f

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 418
    .local v1, "icon":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 419
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUS()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isSmartModeOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 420
    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_4
    iget-wide v4, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    const-wide v6, 0x174876e7ffL

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 428
    const-string v4, "99999999999+"

    .line 430
    :cond_5
    iget-wide v4, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 431
    const-string v3, ""

    .line 432
    .local v3, "remainString":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a03a1

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "contentDescripton":Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 434
    .end local v0    # "contentDescripton":Ljava/lang/CharSequence;
    .end local v3    # "remainString":Ljava/lang/String;
    :cond_6
    const-string v4, "%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .restart local v3    # "remainString":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->showCapturedImageCountInRemainIndicator()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->calculateTakenPictures()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_7
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateSceneIndicator(ZLjava/lang/String;)V
    .locals 6
    .param p1, "useLocalSetting"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0d0045

    .line 273
    iget-boolean v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mInit:Z

    if-nez v3, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 279
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 283
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 284
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_3

    .line 285
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 286
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResources()[I

    move-result-object v2

    .line 287
    .local v2, "prefIconResource":[I
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 291
    .end local v2    # "prefIconResource":[I
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v3, v4}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 293
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSizeIndicator()V
    .locals 5

    .prologue
    .line 171
    iget-boolean v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mInit:Z

    if-nez v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d005b

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 176
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 179
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 180
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_2

    .line 181
    const-string v3, "CameraApp"

    const-string v4, "pref is Null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 185
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 209
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 210
    goto :goto_0

    .line 189
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "shotMode":Ljava/lang/String;
    const-string v3, "shotmode_normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "not found"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_hdr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_clear_shot"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_refocus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 200
    :cond_5
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 202
    :cond_6
    const-string v3, "shotmode_continuous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "shotmode_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setContinuousAndPanoramaSizeIcon(Lcom/lge/camera/components/RotateImageView;Lcom/lge/camera/setting/ListPreference;)V

    goto :goto_1
.end method

.method public updateTimerIndicator()V
    .locals 5

    .prologue
    const v4, 0x7f0d005a

    .line 298
    iget-boolean v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mInit:Z

    if-nez v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 302
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 305
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 306
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 308
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 309
    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setContentDescription(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;)V

    goto :goto_0

    .line 311
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateVoiceIndicator(Z)V
    .locals 8
    .param p1, "recog"    # Z

    .prologue
    const v6, 0x7f0200cd

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 451
    iget-boolean v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mInit:Z

    if-nez v3, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0059

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 456
    .local v1, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v1, :cond_0

    .line 460
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v3

    if-nez v3, :cond_2

    .line 461
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 465
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 466
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_6

    .line 467
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 469
    if-eqz p1, :cond_3

    .line 470
    const v3, 0x7f0200ce

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 474
    :goto_1
    invoke-virtual {v1, v7}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 479
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a03a4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0a013a

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 472
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v1, v6}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 476
    :cond_4
    const v3, 0x7f02005d

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 477
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_2

    .line 479
    :cond_5
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 488
    :cond_6
    invoke-virtual {v1, v6}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 489
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
