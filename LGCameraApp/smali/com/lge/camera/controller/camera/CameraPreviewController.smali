.class public Lcom/lge/camera/controller/camera/CameraPreviewController;
.super Lcom/lge/camera/controller/PreviewController;
.source "CameraPreviewController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 38
    return-void
.end method

.method private getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "effectSelection"    # Ljava/lang/String;

    .prologue
    .line 425
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "on"

    .line 429
    :goto_0
    return-object v0

    .line 428
    :cond_0
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

    .line 429
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkQualityAndStartPreview()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 588
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 589
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    if-nez v2, :cond_1

    .line 590
    const-string v7, "CameraApp"

    const-string v8, "size is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isDualCameraActive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 595
    const/4 v6, 0x0

    .line 596
    .local v6, "videoSize":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 597
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v6

    .line 599
    :cond_2
    if-eqz v6, :cond_3

    .line 600
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 601
    .local v5, "size":[I
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    invoke-static {v7, v5}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfileType:I

    .line 603
    .end local v5    # "size":[I
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfileType:I

    invoke-static {v7, v8}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    .line 606
    .end local v6    # "videoSize":Ljava/lang/String;
    :cond_4
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPreviewSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profile mProfile size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v9, v9, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v9, v9, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v8, 0x440

    if-ne v7, v8, :cond_5

    .line 611
    const/16 v7, 0x438

    iput v7, v2, Landroid/hardware/Camera$Size;->height:I

    .line 614
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v7, v7, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v8, v8, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 616
    .local v4, "profileRatio":Ljava/lang/Float;
    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 618
    .local v1, "previewRatio":Ljava/lang/Float;
    iget v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    if-nez v7, :cond_9

    .line 619
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 620
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "getSizeOnScreen":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 622
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 624
    .local v3, "previewSizeOnScreen":[I
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPreviewSizeOnScreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    aget v7, v3, v11

    aget v8, v3, v10

    invoke-virtual {p0, v7, v8}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    .line 629
    .end local v3    # "previewSizeOnScreen":[I
    :cond_6
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v12, v10}, Lcom/lge/camera/ControllerFunction;->setPreviewEffectForBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 631
    .end local v0    # "getSizeOnScreen":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v7

    if-eqz v7, :cond_8

    .line 632
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    .line 633
    .restart local v0    # "getSizeOnScreen":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 634
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 636
    .restart local v3    # "previewSizeOnScreen":[I
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPreviewSizeOnScreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    aget v7, v3, v11

    aget v8, v3, v10

    invoke-virtual {p0, v7, v8}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    goto/16 :goto_0

    .line 643
    .end local v0    # "getSizeOnScreen":Ljava/lang/String;
    .end local v3    # "previewSizeOnScreen":[I
    :cond_8
    invoke-virtual {p0, v12, v10}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0

    .line 647
    :cond_9
    const-string v7, "CameraApp"

    const-string v8, "Call startPreviewEffect in checkQualityAndStartPreview "

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreviewEffect()V

    goto/16 :goto_0
.end method

.method protected doOnEffectesError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    const-string v0, "CameraApp"

    const-string v1, "checkMediator() is false"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "ongoing finish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "Error!"

    invoke-static {v0, v1, p1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->closeCamera()V

    .line 570
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    goto :goto_0
.end method

.method protected doOnEffectsUpdate(II)V
    .locals 8
    .param p1, "effectId"    # I
    .param p2, "effectMsg"    # I

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 493
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    const-string v0, "CameraApp"

    const-string v1, "checkMediator() is false"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v0, :cond_2

    .line 498
    const-string v0, "CameraApp"

    const-string v1, "mEffectsCamera is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_2
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

    .line 504
    if-ne p2, v5, :cond_3

    .line 505
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_EFFECTS_STOPPED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v0, v0, Lcom/lge/camera/EffectsCamera;->mCalledFrom:I

    if-ne v0, v7, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkQualityAndStartPreview()V

    .line 509
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_0

    .line 512
    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    .line 513
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------EFFECT_MSG_SURFACE_TEARDOWN :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v2, v2, Lcom/lge/camera/EffectsCamera;->mCalledFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v0, v0, Lcom/lge/camera/EffectsCamera;->mCalledFrom:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_5

    .line 515
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ResetMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 522
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iput v7, v0, Lcom/lge/camera/EffectsCamera;->mCalledFrom:I

    goto :goto_0

    .line 516
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v0, v0, Lcom/lge/camera/EffectsCamera;->mCalledFrom:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_4

    .line 517
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 518
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SwapCamera"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :cond_7
    const/4 v0, 0x5

    if-ne p2, v0, :cond_a

    .line 525
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_PREVIEW_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-eq v0, v5, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 528
    :cond_8
    const-string v0, "CameraApp"

    const-string v1, "return nPreview Done in Recording state"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    :cond_9
    iput-boolean v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mStartPreviewOnGoing:Z

    .line 532
    iput-boolean v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 533
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 534
    const-string v0, "CameraApp"

    const-string v1, "enableInput(true) in onEffectsUpdate"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto/16 :goto_0

    .line 536
    :cond_a
    if-ne p2, v6, :cond_b

    .line 537
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_RECORDING_DONE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    :cond_b
    const/4 v0, 0x6

    if-ne p2, v0, :cond_c

    .line 539
    const-string v0, "CameraApp"

    const-string v1, "-------EFFECT_MSG_ERROR"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->closeCamera()V

    .line 541
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraErrorAndFinish()V

    goto/16 :goto_0

    .line 542
    :cond_c
    if-ne p2, v3, :cond_0

    .line 543
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 544
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 545
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    goto/16 :goto_0
.end method

.method public effectsCameraActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 434
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    const-string v2, "CameraApp"

    const-string v3, "Do not support Dual Camera"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    :goto_0
    return v1

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->readEffectType()I

    move-result v0

    .line 444
    .local v0, "type":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLiveEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mCurrentEffect:Ljava/lang/String;

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
    .line 134
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPIPCameraController()Lcom/lge/camera/controller/camera/PIPCameraController;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    return-object v0
.end method

.method public getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "previewSizeOnDevice":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "shotMode":Ljava/lang/String;
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "not found"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_hdr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_full_continuous"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_front_beauty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_clear_shot"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_refocus"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 91
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 92
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return-object v4

    .line 95
    .restart local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :goto_1
    move-object v4, v2

    .line 119
    goto :goto_0

    .line 96
    :cond_2
    const-string v5, "shotmode_main_beauty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 97
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 99
    .restart local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_3

    .line 100
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v4, ""

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    const-string v4, "CameraApp"

    const-string v5, "extra info4 is null, so normal preview return"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 107
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "extra info4 is not null, so beauty shot preview return"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo4()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 112
    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 113
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_6

    .line 114
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getPreviewSizeOnScreen()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "previewSizeOnScreen":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "shotMode":Ljava/lang/String;
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "not found"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_hdr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_full_continuous"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_front_beauty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_main_beauty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_clear_shot"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shotmode_refocus"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 62
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 63
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return-object v4

    .line 66
    .restart local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :goto_1
    move-object v4, v2

    .line 75
    goto :goto_0

    .line 68
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 69
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_3

    .line 70
    const-string v5, "CameraApp"

    const-string v6, " pref is null "

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public hideSubWindowResizeHandler()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PIPCameraController;->isResizeHandlerShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PIPCameraController;->hideSubWindowResizeHandler()V

    .line 482
    const-string v0, "CameraApp"

    const-string v1, "KMIN - Hide DualRec SubWindow Handler"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    return-void
.end method

.method protected initPIPSubWindow(Ljava/lang/String;)V
    .locals 7
    .param p1, "videoSize"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v1, v2

    .line 233
    .local v1, "subWindowThick":I
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v2, p1}, Lcom/lge/camera/controller/camera/PIPCameraController;->getInitPIPSubWindowPosition(Ljava/lang/String;)[I

    move-result-object v0

    .line 235
    .local v0, "initPosition":[I
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    aget v6, v0, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lge/camera/EffectsCamera;->setPIPSubWindowPosition(IIII)V

    .line 237
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v2, v1}, Lcom/lge/camera/EffectsCamera;->setPIPSubWindowThick(I)V

    .line 240
    .end local v0    # "initPosition":[I
    :cond_0
    return-void
.end method

.method protected initializeEffectsPreview()V
    .locals 11

    .prologue
    const/4 v7, 0x4

    .line 149
    const-string v8, "CameraApp"

    const-string v9, "initializeEffectsPreview"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v8, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v8, :cond_2

    .line 155
    const-string v7, "CameraApp"

    const-string v8, "mEffectsCamera is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v8, v9}, Lcom/lge/camera/EffectsCamera;->setCamera(Landroid/hardware/Camera;)V

    .line 164
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/lge/camera/EffectsCamera;->setCameraFacing(I)V

    .line 166
    iget v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 167
    const/4 v5, 0x0

    .line 168
    .local v5, "videoSize":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 169
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 170
    const-string v5, "1280x960"

    .line 175
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 176
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 177
    .local v4, "size":[I
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    invoke-static {v7, v4}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v7

    iput v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfileType:I

    .line 179
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->initPIPSubWindow(Ljava/lang/String;)V

    .line 188
    .end local v4    # "size":[I
    .end local v5    # "videoSize":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_preview_size_on_device"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 189
    .local v6, "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v6, :cond_a

    .line 190
    invoke-virtual {v6}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "sVideoBitrate":Ljava/lang/String;
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sVideoBitrate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "iVideoBitrate":I
    if-eqz v3, :cond_5

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 196
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v0}, Lcom/lge/camera/EffectsCamera;->setVideoEncodingBitRate(I)V

    .line 202
    .end local v0    # "iVideoBitrate":I
    .end local v3    # "sVideoBitrate":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfileType:I

    invoke-static {v7, v8}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    .line 203
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v9, v9, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v9, v9, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    invoke-virtual {v7, v8}, Lcom/lge/camera/EffectsCamera;->setProfile(Lcom/lge/media/CamcorderProfileEx;)V

    .line 205
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectCameraListener:Lcom/lge/camera/controller/PreviewController$EffectCameraListener;

    invoke-virtual {v7, v8}, Lcom/lge/camera/EffectsCamera;->setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V

    .line 206
    new-instance v1, Lcom/lge/camera/listeners/MediaRecorderListener;

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v1, v7}, Lcom/lge/camera/listeners/MediaRecorderListener;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 207
    .local v1, "listener":Lcom/lge/camera/listeners/MediaRecorderListener;
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v1}, Lcom/lge/camera/EffectsCamera;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 208
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v1}, Lcom/lge/camera/EffectsCamera;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 211
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    .line 213
    .local v2, "rotation":I
    :goto_4
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mEffectsCamera.setOrientationHint("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v2}, Lcom/lge/camera/EffectsCamera;->setOrientationHint(I)V

    .line 216
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mEffectsCamera.setPreviewDisplay width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mSurfaceWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mSurfaceHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mSurfaceWidth:I

    iget v10, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mSurfaceHeight:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/lge/camera/EffectsCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;II)V

    .line 220
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/EffectsCamera;->setEffect(ILjava/lang/Object;)V

    .line 221
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 222
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setPIPMask(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 223
    const-string v7, "CameraApp"

    const-string v8, "setPIPMask returns FALSE"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_6
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setPIPRotate(I)V

    goto/16 :goto_0

    .line 172
    .end local v1    # "listener":Lcom/lge/camera/listeners/MediaRecorderListener;
    .end local v2    # "rotation":I
    .end local v6    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    .restart local v5    # "videoSize":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 183
    .end local v5    # "videoSize":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    invoke-static {v8, v7}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_5
    iput v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mProfileType:I

    goto/16 :goto_2

    :cond_9
    const/16 v7, 0xa

    goto :goto_5

    .line 199
    .restart local v6    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_a
    const-string v7, "CameraApp"

    const-string v8, "videoSizePref is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 211
    .restart local v1    # "listener":Lcom/lge/camera/listeners/MediaRecorderListener;
    :cond_b
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    add-int/lit8 v7, v7, 0x5a

    rem-int/lit16 v2, v7, 0x168

    goto/16 :goto_4
.end method

.method public isDualCameraActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 450
    const-string v2, "CameraApp"

    const-string v3, "Do not support Dual Recording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->readEffectType()I

    move-result v0

    .line 455
    .local v0, "type":I
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected makeEffectList()V
    .locals 7

    .prologue
    .line 124
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "effectList":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectList:Ljava/util/ArrayList;

    .line 127
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 128
    .local v4, "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->putPreviewFrameForGesture([BLandroid/hardware/Camera;)V

    .line 662
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewController;->onResume()V

    .line 46
    return-void
.end method

.method protected readEffectParameter()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 412
    const-string v1, "shotmode_dual_camera"

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current dual camera setting value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "on"

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getEffectSelection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 421
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "Invalid effect selection"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected readEffectType()I
    .locals 6

    .prologue
    .line 364
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 365
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "retValue":I
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 368
    const-string v3, "shotmode_dual_camera"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    const/4 v2, 0x6

    .line 405
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 381
    .end local v2    # "retValue":I
    :cond_3
    const/4 v1, 0x0

    .line 382
    .local v1, "preference":Lcom/lge/camera/setting/ListPreference;
    const/4 v2, 0x0

    .line 383
    .restart local v2    # "retValue":I
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 384
    if-nez v2, :cond_0

    .line 385
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_dual_recording"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_5

    .line 387
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_dual_recording"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "dualSelection":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 389
    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    const/4 v2, 0x6

    goto :goto_0

    .line 392
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 395
    .end local v0    # "dualSelection":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 396
    const-string v3, "recordmode_dual"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    const/4 v2, 0x6

    goto :goto_0

    .line 400
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setLiveEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mCurrentEffect:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public showSubWindowResizeHandler(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 460
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isDualCameraActive()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "shotmode_dual_camera"

    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->getLeftTopX()I

    move-result v0

    .line 465
    .local v0, "x0":I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->getLeftTopY()I

    move-result v2

    .line 466
    .local v2, "y0":I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->getRightBottomX()I

    move-result v1

    .line 467
    .local v1, "x1":I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->getRightBottomY()I

    move-result v3

    .line 469
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

    .line 470
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->isResizeHandlerShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 471
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/PIPCameraController;->showSubWindowResizeHandler()V

    .line 475
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
    .line 654
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->startPIPFrameSubMenuRotation(I)V

    .line 655
    return-void
.end method

.method public startPreviewEffect()V
    .locals 4

    .prologue
    .line 575
    const-string v1, "shotmode_dual_camera"

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 577
    .local v0, "checkCondition":Z
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->startPreviewEffect(Lcom/lge/camera/EffectsBase;Z)V

    .line 578
    return-void
.end method

.method public stopPreviewEffect()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->stopPreviewEffect(Lcom/lge/camera/EffectsBase;)V

    .line 583
    return-void
.end method

.method public updateEffectSelection()Z
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 270
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_4

    .line 272
    :cond_0
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() return:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_1
    :goto_2
    return v5

    :cond_2
    move v3, v5

    .line 272
    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 279
    :cond_4
    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    iput v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectType:I

    .line 280
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    iput-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->readEffectType()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    .line 282
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 284
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() [previous] previousEffectType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectType:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", previousEffectParameter: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectParameter:Ljava/lang/Object;

    if-nez v3, :cond_5

    const-string v3, "null"

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v6, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEffectSelection() [current] mEffectType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", mEffectParameter: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    if-nez v3, :cond_6

    const-string v3, "null"

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    iget v6, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectType:I

    if-ne v3, v6, :cond_7

    .line 292
    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 299
    const-string v3, "CameraApp"

    const-string v4, "effectparameter is same"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 284
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 287
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 304
    :cond_7
    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectType:I

    if-nez v3, :cond_8

    .line 305
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 306
    .local v1, "imageSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_a

    .line 307
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousResolution:Ljava/lang/String;

    .line 308
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup previous resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v1    # "imageSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 316
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 317
    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    if-nez v3, :cond_b

    .line 318
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousResolution:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 319
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set previous resolution :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6, v4}, Lcom/lge/camera/ControllerFunction;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 322
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousResolution:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v4}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v3, v6, v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 329
    :cond_9
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v3, v9}, Lcom/lge/camera/EffectsCamera;->stopPreview(I)V

    move v5, v4

    .line 330
    goto/16 :goto_2

    .line 310
    .restart local v1    # "imageSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_a
    const-string v3, "CameraApp"

    const-string v5, "imageSizePref is null"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 311
    goto/16 :goto_2

    .line 331
    .end local v1    # "imageSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_b
    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectType:I

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    if-eq v3, v8, :cond_d

    :cond_c
    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectType:I

    if-ne v3, v8, :cond_e

    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    if-eqz v3, :cond_e

    .line 334
    :cond_d
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v3, v9}, Lcom/lge/camera/EffectsCamera;->stopPreview(I)V

    .line 337
    :cond_e
    const-string v3, "CameraApp"

    const-string v6, "set to live effect limit"

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setLiveeffectLimit()Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "getSizeOnScreen":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 342
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v2

    .line 343
    .local v2, "previewSizeOnScreen":[I
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

    .line 344
    aget v3, v2, v5

    aget v5, v2, v4

    invoke-virtual {p0, v3, v5}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    .line 347
    .end local v2    # "previewSizeOnScreen":[I
    :cond_f
    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectType:I

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->previousEffectType:I

    if-eqz v3, :cond_11

    iget v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    if-ne v3, v8, :cond_11

    .line 351
    :cond_10
    const-string v3, "CameraApp"

    const-string v5, "#### mCameraDevice.stopPreview"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 353
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->checkQualityAndStartPreview()V

    :goto_5
    move v5, v4

    .line 359
    goto/16 :goto_2

    .line 356
    :cond_11
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    iget v5, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectType:I

    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/lge/camera/EffectsCamera;->setEffect(ILjava/lang/Object;)V

    .line 357
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraPreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_5
.end method
