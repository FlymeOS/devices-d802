.class public Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;
.super Lcom/lge/camera/controller/PreviewController;
.source "CamcorderPreviewController.java"


# instance fields
.field protected mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

.field private mStopRecordingEffectThread:Ljava/lang/Thread;

.field private tryCnt:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 938
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->tryCnt:I

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->makeEffectList()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->tryCnt:I

    return v0
.end method

.method private getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "effectSelection"    # Ljava/lang/String;

    .prologue
    .line 577
    const-string v0, "squeeze"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    .line 579
    :cond_0
    const-string v0, "big nose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 581
    :cond_1
    const-string v0, "big eyes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 583
    :cond_2
    const-string v0, "small eyes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 585
    :cond_3
    const-string v0, "big mouth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 587
    :cond_4
    const-string v0, "small mouth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 588
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 589
    :cond_5
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 590
    const-string v0, "on"

    goto :goto_0

    .line 591
    :cond_6
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 592
    const-string v0, "on"

    goto :goto_0

    .line 594
    :cond_7
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid effect selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkQualityAndStartPreview()V
    .locals 9

    .prologue
    const/16 v7, 0xe

    const/4 v8, 0x7

    const/4 v5, 0x4

    .line 993
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 994
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    if-nez v1, :cond_0

    .line 995
    const-string v5, "CameraApp"

    const-string v6, "size is null"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_0
    return-void

    .line 999
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isDualRecordingActive()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isSmartZoomRecordingActive()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1000
    :cond_1
    const/4 v4, 0x0

    .line 1001
    .local v4, "videoSize":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1002
    .local v3, "size":[I
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1003
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1004
    const-string v4, "1280x960"

    .line 1008
    :goto_1
    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 1010
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    invoke-static {v5, v3}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    .line 1011
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    iget v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    invoke-static {v5, v6}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    .line 1034
    .end local v3    # "size":[I
    .end local v4    # "videoSize":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "profile mProfile size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v7, v7, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v7, v7, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x440

    if-ne v5, v6, :cond_4

    .line 1039
    const/16 v5, 0x438

    iput v5, v1, Landroid/hardware/Camera$Size;->height:I

    .line 1042
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v5, v5, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v6, v6, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1044
    .local v2, "profileRatio":Ljava/lang/Float;
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1046
    .local v0, "previewRatio":Ljava/lang/Float;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v2, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v5

    if-ne v5, v8, :cond_6

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1052
    :cond_6
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setAspectRatio: profileRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", previewRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(F)V

    goto/16 :goto_0

    .line 1006
    .end local v0    # "previewRatio":Ljava/lang/Float;
    .end local v2    # "profileRatio":Ljava/lang/Float;
    .restart local v3    # "size":[I
    .restart local v4    # "videoSize":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 1012
    .end local v3    # "size":[I
    .end local v4    # "videoSize":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isLiveEffectActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1013
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1014
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    invoke-static {v5, v7}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1017
    iput v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    .line 1028
    :goto_3
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    iget v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    invoke-static {v5, v6}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    .line 1029
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v7, v7, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v7, v7, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    invoke-virtual {v5, v6}, Lcom/lge/camera/EffectsRecorder;->setProfile(Lcom/lge/media/CamcorderProfileEx;)V

    goto/16 :goto_2

    .line 1019
    :cond_9
    const-string v5, "CameraApp"

    const-string v6, "Cannot find the profile; CamcorderProfile.QUALITY_960P"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1022
    :cond_a
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v5}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_4
    iput v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    goto :goto_3

    :cond_b
    const/16 v5, 0xa

    goto :goto_4

    .line 1058
    .restart local v0    # "previewRatio":Ljava/lang/Float;
    .restart local v2    # "profileRatio":Ljava/lang/Float;
    :cond_c
    iget v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-nez v5, :cond_d

    .line 1059
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 1061
    :cond_d
    const-string v5, "CameraApp"

    const-string v6, "Call startPreviewEffect in checkQualityAndStartPreview "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->startPreviewEffect()V

    goto/16 :goto_0
.end method

.method protected doOnEffectesError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 6
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    const-string v2, "CameraApp"

    const-string v3, "checkMediator() is false"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 839
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "ongoing finish"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :cond_2
    instance-of v2, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v2, :cond_3

    .line 844
    const-string v2, "CameraApp"

    const-string v3, "Problem recoding video file. Removing incomplete file."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :cond_3
    if-eqz p2, :cond_5

    .line 849
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    .local v1, "videoFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 851
    .local v0, "nVideoFileMinSize":I
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentRecordingTime()J

    move-result-wide v2

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    .line 852
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 853
    const-string v2, "CameraApp"

    const-string v3, "Short recording time! Not Error!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    if-eqz v2, :cond_5

    .line 857
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v2, v2, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v3, v3, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    mul-int/2addr v2, v3

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    mul-int v0, v2, v3

    .line 859
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 860
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Short recording time! Not Error!! file soon delete! -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 870
    .end local v0    # "nVideoFileMinSize":I
    .end local v1    # "videoFile":Ljava/io/File;
    :cond_5
    const-string v2, "CameraApp"

    const-string v3, "Error during recording!"

    invoke-static {v2, v3, p1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 871
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->closeCamera()V

    .line 872
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    goto/16 :goto_0
.end method

.method protected doOnEffectsUpdate(II)V
    .locals 8
    .param p1, "effectId"    # I
    .param p2, "effectMsg"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 747
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    const-string v0, "CameraApp"

    const-string v1, "checkMediator() is false"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEffectRecorderPausing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 752
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ongoing finish effectMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mEffectRecordingDoneLatch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-eq p2, v5, :cond_3

    if-eq p2, v7, :cond_3

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_4

    .line 758
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 760
    :cond_4
    if-ne p2, v5, :cond_0

    .line 761
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto :goto_0

    .line 766
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v0, :cond_6

    .line 767
    const-string v0, "CameraApp"

    const-string v1, "mEffectsRecorder is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_6
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate: id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    if-ne p2, v6, :cond_7

    .line 774
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_EFFECTS_STOPPED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->checkQualityAndStartPreview()V

    .line 778
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto/16 :goto_0

    .line 781
    :cond_7
    const/4 v0, 0x7

    if-ne p2, v0, :cond_c

    .line 782
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------EFFECT_MSG_SURFACE_TEARDOWN :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v2, v2, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_9

    .line 784
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ResetMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    .line 792
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/16 v1, 0x64

    iput v1, v0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    goto/16 :goto_0

    .line 786
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v0, v0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_8

    .line 787
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 788
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 790
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SwapCamera"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 794
    :cond_c
    const/4 v0, 0x5

    if-ne p2, v0, :cond_f

    .line 795
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_PREVIEW_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-eq v0, v6, :cond_d

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v5, :cond_e

    .line 798
    :cond_d
    const-string v0, "CameraApp"

    const-string v1, "return nPreview Done in Recording state"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    :cond_e
    iput-boolean v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStartPreviewOnGoing:Z

    .line 802
    iput-boolean v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 803
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 804
    const-string v0, "CameraApp"

    const-string v1, "enableInput(true) in onEffectsUpdate"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto/16 :goto_0

    .line 806
    :cond_f
    if-ne p2, v5, :cond_11

    .line 807
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_RECORDING_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_10

    .line 809
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 811
    :cond_10
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto/16 :goto_0

    .line 812
    :cond_11
    if-ne p2, v7, :cond_12

    .line 813
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_ERROR"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->closeCamera()V

    .line 815
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a03aa

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 817
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 818
    :cond_12
    if-ne p2, v3, :cond_0

    .line 819
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 820
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 821
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    goto/16 :goto_0
.end method

.method public effectsCamcorderActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v2

    .line 607
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v0

    .line 612
    .local v0, "type":I
    if-eqz v0, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getLiveEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCurrentEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveEffectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPIPRecordingController()Lcom/lge/camera/controller/camcorder/PIPRecordingController;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    return-object v0
.end method

.method public getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, "previewSizeOnDevice":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_preview_size_on_device"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "prefVideoSize":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    move-object v3, v2

    .end local v2    # "prefVideoSize":Ljava/lang/String;
    :goto_0
    move-object v4, v3

    .line 105
    :goto_1
    return-object v4

    .line 89
    .restart local v2    # "prefVideoSize":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "mmsResolutions":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-nez v4, :cond_2

    .line 92
    :cond_1
    move-object v3, v2

    goto :goto_0

    .line 94
    :cond_2
    const/4 v4, 0x0

    aget-object v3, v0, v4

    goto :goto_0

    .line 98
    .end local v0    # "mmsResolutions":[Ljava/lang/String;
    .end local v2    # "prefVideoSize":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_preview_size_on_device"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 99
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_4

    .line 100
    const-string v4, "CameraApp"

    const-string v5, " pref is null "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v4, 0x0

    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getPreviewSizeOnScreen()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, "previewSizeOnScreen":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_preview_size_on_device"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 50
    .local v0, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 51
    const-string v4, "CameraApp"

    const-string v5, " pref is null "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-object v3

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "prefVideoSizeIndex":I
    if-gez v1, :cond_1

    .line 56
    const/4 v1, 0x0

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "prefVideoSizeIndex":I
    :goto_1
    move-object v3, v2

    .line 79
    goto :goto_0

    .line 60
    .end local v0    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_preview_size_on_device"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 61
    .restart local v0    # "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_3

    .line 62
    const-string v4, "CameraApp"

    const-string v5, " pref is null "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isLiveEffectActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    invoke-static {v3}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveEffectPreviewOnDevice(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isDualRecordingActive()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isSmartZoomRecordingActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 70
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 71
    const-string v2, "1280x960"

    goto :goto_1

    .line 73
    :cond_6
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 76
    :cond_7
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getPreviousEffectType()I
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    return v0
.end method

.method public hideSmartZoomFocusView()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isSmartZoomFocusViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->hideSmartZoomFocusView()V

    .line 692
    const-string v0, "CameraApp"

    const-string v1, "Hide smart zoom focus view"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_0
    return-void
.end method

.method public hideSubWindowResizeHandler()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isResizeHandlerShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->hideSubWindowResizeHandler()V

    .line 674
    const-string v0, "CameraApp"

    const-string v1, "KMIN - Hide DualRec SubWindow Handler"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    return-void
.end method

.method protected initPIPSubWindow(Ljava/lang/String;)V
    .locals 7
    .param p1, "videoSize"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v1, v2

    .line 243
    .local v1, "subWindowThick":I
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v2, p1}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getInitPIPSubWindowPosition(Ljava/lang/String;)[I

    move-result-object v0

    .line 245
    .local v0, "initPosition":[I
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v0, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lge/camera/EffectsRecorder;->setPIPSubWindowPosition(IIII)V

    .line 247
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v2, v1}, Lcom/lge/camera/EffectsRecorder;->setPIPSubWindowThick(I)V

    .line 250
    .end local v0    # "initPosition":[I
    :cond_0
    return-void
.end method

.method public initSmartZoomFocusView()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->initSmartZoomFocusView()V

    .line 738
    :cond_0
    return-void
.end method

.method protected initializeEffectsPreview()V
    .locals 11

    .prologue
    const/16 v9, 0xe

    const/4 v10, 0x7

    const/4 v6, 0x4

    .line 140
    const-string v7, "CameraApp"

    const-string v8, "initializeEffectsPreview"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v7, :cond_2

    .line 146
    const-string v6, "CameraApp"

    const-string v7, "mEffectsRecorder is null"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7, v8}, Lcom/lge/camera/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 155
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/lge/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 157
    iget v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-ne v7, v10, :cond_b

    .line 159
    :cond_3
    const/4 v5, 0x0

    .line 160
    .local v5, "videoSize":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 161
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 162
    const-string v5, "1280x960"

    .line 167
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 168
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 169
    .local v4, "size":[I
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v4}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    .line 171
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->initPIPSubWindow(Ljava/lang/String;)V

    .line 190
    .end local v4    # "size":[I
    .end local v5    # "videoSize":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v4, 0x0

    .line 191
    .restart local v4    # "size":[I
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v5

    .line 192
    .restart local v5    # "videoSize":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 193
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 195
    :cond_6
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v4}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v2

    .line 196
    .local v2, "quality":I
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v2}, Lcom/lge/camera/properties/MultimediaProperties;->getBitrate(II)I

    move-result v1

    .line 197
    .local v1, "profileBitrate":I
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v1}, Lcom/lge/camera/EffectsRecorder;->setVideoEncodingBitRate(I)V

    .line 199
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    invoke-static {v6, v7}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    .line 200
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "profile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v8, v8, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v8, v8, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    invoke-virtual {v6, v7}, Lcom/lge/camera/EffectsRecorder;->setProfile(Lcom/lge/media/CamcorderProfileEx;)V

    .line 202
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    invoke-virtual {v6, v7}, Lcom/lge/camera/EffectsRecorder;->setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V

    .line 203
    new-instance v0, Lcom/lge/camera/listeners/MediaRecorderListener;

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v0, v6}, Lcom/lge/camera/listeners/MediaRecorderListener;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 204
    .local v0, "listener":Lcom/lge/camera/listeners/MediaRecorderListener;
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v0}, Lcom/lge/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 205
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v0}, Lcom/lge/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 208
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    .line 210
    .local v3, "rotation":I
    :goto_3
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mEffectsRecorder.setOrientationHint("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v3}, Lcom/lge/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 213
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mEffectsRecorder.setPreviewDisplay width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mSurfaceWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mSurfaceHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v8, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mSurfaceWidth:I

    iget v9, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mSurfaceHeight:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/lge/camera/EffectsRecorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 217
    iget v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-ne v6, v10, :cond_7

    .line 219
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 220
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const-string v7, "2104x1560"

    invoke-virtual {v6, v7}, Lcom/lge/camera/EffectsRecorder;->setTextureSize(Ljava/lang/String;)V

    .line 229
    :cond_7
    :goto_4
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    .line 231
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 232
    :cond_8
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->setPIPMask(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 233
    const-string v6, "CameraApp"

    const-string v7, "setPIPMask returns FALSE"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_9
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->setPIPRotate(I)V

    goto/16 :goto_0

    .line 164
    .end local v0    # "listener":Lcom/lge/camera/listeners/MediaRecorderListener;
    .end local v1    # "profileBitrate":I
    .end local v2    # "quality":I
    .end local v3    # "rotation":I
    .end local v4    # "size":[I
    :cond_a
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 175
    .end local v5    # "videoSize":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 176
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6, v9}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 179
    iput v9, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    goto/16 :goto_2

    .line 181
    :cond_c
    const-string v6, "CameraApp"

    const-string v7, "Cannot find the profile; CamcorderProfile.QUALITY_960P"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 184
    :cond_d
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    invoke-static {v7, v6}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v7

    if-eqz v7, :cond_e

    :goto_5
    iput v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfileType:I

    goto/16 :goto_2

    :cond_e
    const/16 v6, 0xa

    goto :goto_5

    .line 208
    .restart local v0    # "listener":Lcom/lge/camera/listeners/MediaRecorderListener;
    .restart local v1    # "profileBitrate":I
    .restart local v2    # "quality":I
    .restart local v4    # "size":[I
    .restart local v5    # "videoSize":Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v6

    add-int/lit8 v6, v6, 0x5a

    rem-int/lit16 v3, v6, 0x168

    goto/16 :goto_3

    .line 224
    .restart local v3    # "rotation":I
    :cond_10
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const-string v7, "2104x1184"

    invoke-virtual {v6, v7}, Lcom/lge/camera/EffectsRecorder;->setTextureSize(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public initializeRecordingEffect(Ljava/lang/String;JIJ)V
    .locals 6
    .param p1, "filepath_name"    # Ljava/lang/String;
    .param p2, "mMaxFileSize"    # J
    .param p4, "mMaxDurationTime"    # I
    .param p5, "freeSpace"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 888
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    invoke-virtual {v0, v1}, Lcom/lge/camera/EffectsRecorder;->setProfile(Lcom/lge/media/CamcorderProfileEx;)V

    .line 890
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lge/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 891
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 892
    cmp-long v0, p2, v4

    if-nez v0, :cond_1

    .line 893
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sub-long p2, p5, v0

    .line 895
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMediaRecoderLimitSize()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 896
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMediaRecoderLimitSize()J

    move-result-wide p2

    .line 898
    :cond_0
    cmp-long v0, p2, v4

    if-gez v0, :cond_1

    .line 899
    sget-wide p2, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p2, p3}, Lcom/lge/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 904
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p4}, Lcom/lge/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 906
    :cond_2
    return-void
.end method

.method public isDualRecordingActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    const-string v2, "CameraApp"

    const-string v3, "Do not support Dual Recording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    return v1

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v0

    .line 624
    .local v0, "type":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLiveEffectActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    const-string v2, "CameraApp"

    const-string v3, "Do not support Live Effect"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    :goto_0
    return v1

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v0

    .line 635
    .local v0, "type":I
    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSmartZoomRecordingActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 643
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 644
    const-string v2, "CameraApp"

    const-string v3, "Do not support Smart Zoom Recording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_0
    :goto_0
    return v1

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v0

    .line 649
    .local v0, "type":I
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected makeEffectList()V
    .locals 7

    .prologue
    .line 115
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "effectList":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectList:Ljava/util/ArrayList;

    .line 118
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 119
    .local v4, "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewController;->onResume()V

    .line 111
    return-void
.end method

.method public pauseAndResumeRecording(Z)V
    .locals 3
    .param p1, "pause"    # Z

    .prologue
    .line 931
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 932
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsRecorder: pause/resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/EffectsRecorder;->pauseAndResumeRecording(Landroid/filterfw/core/Filter;Z)V

    .line 935
    :cond_0
    return-void
.end method

.method protected readEffectParameter()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-object v2

    .line 483
    :cond_1
    const/4 v1, 0x0

    .line 484
    .local v1, "flag":Z
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 486
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_live_effect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 487
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_live_effect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "effectSelection":Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current liveeffect type :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    if-eqz v0, :cond_2

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 491
    :cond_2
    const/4 v1, 0x1

    .line 506
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_dual_recording"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 507
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_dual_recording"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current dual recording setting value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    if-eqz v0, :cond_3

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 511
    :cond_3
    const/4 v1, 0x1

    .line 517
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_smart_zoom"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 518
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_smart_zoom"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current smart zoom setting value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    if-eqz v0, :cond_5

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 522
    :cond_5
    const/4 v1, 0x1

    .line 528
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 529
    const-string v3, "recordmode_dual"

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 531
    const-string v2, "recordmode_live_effect"

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "recordmode_smart_zoom"

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 534
    :cond_7
    const-string v2, "off"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 493
    :cond_8
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 496
    .end local v0    # "effectSelection":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getLiveEffect()Ljava/lang/String;

    move-result-object v0

    .line 497
    .restart local v0    # "effectSelection":Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current liveeffect type (record mode exists) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    if-eqz v0, :cond_a

    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 500
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 502
    :cond_b
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 513
    :cond_c
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 524
    :cond_d
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 537
    :cond_e
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current dual recording setting value (record mode exists) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "on"

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v2, "on"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 540
    :cond_f
    const-string v3, "recordmode_smart_zoom"

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 542
    const-string v2, "recordmode_dual"

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "recordmode_live_effect"

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 545
    :cond_10
    const-string v2, "off"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 548
    :cond_11
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current smart zoom setting value (record mode exists) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "on"

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v2, "on"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 551
    :cond_12
    const-string v3, "recordmode_live_effect"

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 553
    const-string v2, "recordmode_dual"

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "recordmode_smart_zoom"

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 556
    :cond_13
    const-string v2, "off"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 559
    :cond_14
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current live effect setting value (record mode exists) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCurrentEffect:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCurrentEffect:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 565
    :cond_15
    if-nez v1, :cond_0

    .line 569
    const-string v3, "CameraApp"

    const-string v4, "Invalid effect selection, preference is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    .end local v0    # "effectSelection":Ljava/lang/String;
    :cond_16
    const-string v3, "CameraApp"

    const-string v4, "Invalid effect selection, getPreferenceGroup is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected readEffectType()I
    .locals 8

    .prologue
    .line 397
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 398
    const/4 v4, 0x0

    .line 470
    :cond_0
    :goto_0
    return v4

    .line 400
    :cond_1
    const/4 v3, 0x0

    .line 401
    .local v3, "preference":Lcom/lge/camera/setting/ListPreference;
    const/4 v4, 0x0

    .line 402
    .local v4, "retValue":I
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 403
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, "effectSelection":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 406
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_live_effect"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-nez v4, :cond_3

    .line 417
    const-string v5, "off"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 418
    const/4 v4, 0x0

    .line 424
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 425
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_dual_recording"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 426
    if-eqz v3, :cond_9

    .line 427
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_dual_recording"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "dualSelection":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 429
    const-string v5, "on"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 430
    const/4 v4, 0x5

    .line 447
    .end local v0    # "dualSelection":Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v4, :cond_0

    .line 448
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_zoom"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 449
    if-eqz v3, :cond_c

    .line 450
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_zoom"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "modeSelection":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 452
    const-string v5, "on"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 453
    const/4 v4, 0x7

    goto :goto_0

    .line 407
    .end local v2    # "modeSelection":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 408
    const-string v5, "recordmode_live_effect"

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 410
    const/4 v4, 0x1

    goto :goto_1

    .line 413
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getLiveEffect()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 420
    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    .line 432
    .restart local v0    # "dualSelection":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 435
    .end local v0    # "dualSelection":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 436
    const-string v5, "recordmode_dual"

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 438
    const/4 v4, 0x5

    goto :goto_3

    .line 440
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 455
    .restart local v2    # "modeSelection":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 458
    .end local v2    # "modeSelection":Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 459
    const-string v5, "recordmode_smart_zoom"

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 461
    const/4 v4, 0x7

    goto/16 :goto_0

    .line 463
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public setLiveEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCurrentEffect:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setPrevResolutionWithStoredValue()V
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPreviousResolutionFront:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    .line 730
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTORE: previousResolution = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPreviousResolutionBack:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPreviousResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    .line 708
    return-void
.end method

.method public setSmartZoomFocusViewPosition(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 698
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isSmartZoomFocusViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->setSmartZoomFocusViewPosition(II)V

    .line 701
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartZoomFocusViewPosition: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    return-void
.end method

.method public showSmartZoomFocusView()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isResizeHandlerShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->showSmartZoomFocusView()V

    .line 683
    const-string v0, "CameraApp"

    const-string v1, "Show smart zoom focus view"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    return-void
.end method

.method public showSubWindowResizeHandler(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isDualRecordingActive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->isSmartZoomRecordingActive()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v4, :cond_1

    .line 656
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getLeftTopX()I

    move-result v0

    .line 657
    .local v0, "x0":I
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getLeftTopY()I

    move-result v2

    .line 658
    .local v2, "y0":I
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getRightBottomX()I

    move-result v1

    .line 659
    .local v1, "x1":I
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->getRightBottomY()I

    move-result v3

    .line 661
    .local v3, "y1":I
    int-to-float v4, v0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-lez v4, :cond_1

    int-to-float v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 662
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->isResizeHandlerShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 663
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->showSubWindowResizeHandler()V

    .line 667
    .end local v0    # "x0":I
    .end local v1    # "x1":I
    .end local v2    # "y0":I
    .end local v3    # "y1":I
    :cond_1
    return-void
.end method

.method public startPIPFrameSubMenuRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->startPIPFrameSubMenuRotation(I)V

    .line 1076
    return-void
.end method

.method public startPreviewEffect()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->startPreviewEffect(Lcom/lge/camera/EffectsBase;Z)V

    .line 878
    return-void
.end method

.method public startRecordingEffect()V
    .locals 5

    .prologue
    .line 910
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 918
    const/4 v0, 0x1

    .line 919
    .local v0, "beUnmute":Z
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_audio_recording"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 920
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 921
    const-string v2, "unmute"

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 924
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecordingEffect() unmute?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v2, v0}, Lcom/lge/camera/EffectsRecorder;->startRecording(Z)V

    goto :goto_0
.end method

.method public stopPreviewEffect()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->stopPreviewEffect(Lcom/lge/camera/EffectsBase;)V

    .line 883
    return-void
.end method

.method public stopRecordingEffect()V
    .locals 2

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "CameraApp"

    const-string v1, "stopRecordingEffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->tryCnt:I

    .line 945
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    .line 971
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 973
    :cond_0
    return-void
.end method

.method public storePreviousResolution(Ljava/lang/String;)V
    .locals 3
    .param p1, "prevResolution"    # Ljava/lang/String;

    .prologue
    .line 712
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STORE: previousResolution = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const/4 p1, 0x0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 717
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPreviousResolutionBack:Ljava/lang/String;

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mPreviousResolutionFront:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateEffectSelection()Z
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x5

    const/4 v8, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 280
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    const-string v3, "CameraApp"

    const-string v4, "Do not support liveeffect"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    return v5

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_4

    .line 287
    :cond_1
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() return:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 294
    :cond_4
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() [previous] mEffectType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", mEffectParameter: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v3, :cond_6

    const-string v3, "null"

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    iput v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    .line 299
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 301
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectType()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    .line 302
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 303
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() [current] mEffectType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", mEffectParameter: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v3, :cond_7

    const-string v3, "null"

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-ne v3, v8, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 309
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->disableObjectTrackingForSmartZoom()V

    .line 312
    :cond_5
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    iget v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-ne v3, v6, :cond_a

    .line 313
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-nez v3, :cond_8

    .line 314
    const-string v3, "CameraApp"

    const-string v4, "mEffectType is none"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 303
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 317
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 318
    const-string v3, "CameraApp"

    const-string v4, "effectparameter is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :cond_9
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 324
    const-string v3, "CameraApp"

    const-string v4, "effectparameter is same"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_a
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-nez v3, :cond_b

    .line 330
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 331
    .local v2, "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_d

    .line 332
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    .line 333
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup previous resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v2    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_b
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 342
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 343
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-nez v3, :cond_e

    .line 344
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 345
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set previous resolution :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6, v4}, Lcom/lge/camera/ControllerFunction;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 348
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousResolution:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v4}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 352
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6, v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 353
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setLimitationToLiveeffect(Z)V

    .line 356
    :cond_c
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v3, v10}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    move v5, v4

    .line 357
    goto/16 :goto_0

    .line 336
    .restart local v2    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_d
    const-string v3, "CameraApp"

    const-string v5, "videoSizePref is null"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 337
    goto/16 :goto_0

    .line 358
    .end local v2    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_e
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-eq v3, v9, :cond_11

    :cond_f
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-eq v3, v8, :cond_11

    :cond_10
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-eq v3, v9, :cond_11

    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-ne v3, v8, :cond_12

    .line 362
    :cond_11
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v3, v10}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    .line 364
    :cond_12
    const-string v3, "CameraApp"

    const-string v6, "set to live effect limit"

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setLiveeffectLimit()Ljava/lang/String;

    .line 367
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "getSizeOnScreen":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 369
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 370
    .local v1, "previewSizeOnScreen":[I
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewSizeOnScreen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    aget v3, v1, v5

    aget v5, v1, v4

    invoke-virtual {p0, v3, v5}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->changePreviewModeOnUiThread(II)V

    .line 374
    .end local v1    # "previewSizeOnScreen":[I
    :cond_13
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-eqz v3, :cond_14

    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-eq v3, v9, :cond_15

    :cond_14
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-ne v3, v8, :cond_16

    .line 379
    :cond_15
    const-string v3, "CameraApp"

    const-string v5, "#### mCameraDevice.stopPreview"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 381
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->checkQualityAndStartPreview()V

    :goto_5
    move v5, v4

    .line 392
    goto/16 :goto_0

    .line 384
    :cond_16
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    iget v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/lge/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    .line 385
    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    if-ne v3, v4, :cond_17

    iget v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectType:I

    iget v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->previousEffectType:I

    if-ne v3, v5, :cond_17

    .line 387
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 388
    const-string v3, "CameraApp"

    const-string v5, "enableInput(true) in updateEffectSelection"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_17
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_5
.end method

.method public waitStopRecordingEffectThreadDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    const-string v1, "CameraApp"

    const-string v2, "Wait for stop effectRecording done.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 981
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mStopRecordingEffectThread:Ljava/lang/Thread;

    .line 982
    const-string v1, "CameraApp"

    const-string v2, "Stop effectRecording done.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join stop recording thread!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
