.class public Lcom/lge/hardware/LGCamera$LGParameters;
.super Ljava/lang/Object;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hardware/LGCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LGParameters"
.end annotation


# static fields
.field private static final KEY_BACKLIGHT_CONDITION:Ljava/lang/String; = "backlight-condition"

.field private static final KEY_BEAUTY:Ljava/lang/String; = "beautyshot"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final KEY_FLASH_STATUS:Ljava/lang/String; = "flash-status"

.field private static final KEY_FOCUS_MODE_OBJECT_TRACKING:Ljava/lang/String; = "object-tracking"

.field private static final KEY_HDR_MODE:Ljava/lang/String; = "hdr-mode"

.field private static final KEY_LG_MULTI_WINDOW_FOCUS_AREA:Ljava/lang/String; = "multi-window-focus-area"

.field private static final KEY_LUMINANCE_CONDITION:Ljava/lang/String; = "luminance-condition"

.field private static final KEY_PANORAMA:Ljava/lang/String; = "panorama-shot"

.field private static final KEY_QC_SCENE_DETECT:Ljava/lang/String; = "scene-detect"

.field private static final KEY_SUPERZOOM:Ljava/lang/String; = "superzoom"

.field private static final KEY_ZOOM:Ljava/lang/String; = "zoom"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"


# instance fields
.field backlightCondition:Ljava/lang/String;

.field luminanceCondition:Ljava/lang/String;

.field mCurrentFlash:Ljava/lang/String;

.field mFlashStatus:Ljava/lang/String;

.field mHDRstatus:Ljava/lang/String;

.field mIsBeauty:Ljava/lang/String;

.field mIsCurrentFlash:Z

.field mIsFlashAuto:Z

.field mIsFlashOff:Z

.field mIsFlashOn:Z

.field mIsHDRAuto:Z

.field mIsHDROff:Z

.field mIsHDROn:Z

.field mIsHighBackLight:Z

.field mIsLuminanceEis:Z

.field mIsLuminanceHigh:Z

.field mIsSuperZoomEnabled:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mSuperZoomStatus:I

.field mshotMode:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/hardware/LGCamera;


# direct methods
.method public constructor <init>(Lcom/lge/hardware/LGCamera;)V
    .locals 2

    .prologue
    .line 428
    iput-object p1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->this$0:Lcom/lge/hardware/LGCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {p1}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 431
    const-string v0, "LGCamera"

    const-string v1, "Camera hardware is not opened!. open camera first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {p1}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 435
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 436
    const-string v0, "LGCamera"

    const-string v1, "didn\'t get native parameters."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkBacklightStatus()V
    .locals 3

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHighBackLight:Z

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] HDR_auto BL_high SZ_off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->setHDROnParam()V

    .line 541
    :goto_0
    return-void

    .line 537
    :cond_0
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] BL_low HDR_off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->checkSceneStatus()V

    goto :goto_0
.end method

.method private checkFlashStatus()V
    .locals 2

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsFlashOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsFlashAuto:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsCurrentFlash:Z

    if-eqz v0, :cond_1

    .line 579
    :cond_0
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] flash_on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->setDefaultParam()V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_1
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] flash_off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->checkLuminanceStatus()V

    goto :goto_0
.end method

.method private checkHDRStatus()V
    .locals 3

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHDRAuto:Z

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->checkBacklightStatus()V

    .line 560
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHDROn:Z

    if-eqz v0, :cond_1

    .line 551
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] HDR_on SZ_off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->setHDROnParam()V

    goto :goto_0

    .line 556
    :cond_1
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] HDR_off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->checkSceneStatus()V

    goto :goto_0
.end method

.method private checkLuminanceStatus()V
    .locals 3

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsLuminanceHigh:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsLuminanceEis:Z

    if-eqz v0, :cond_1

    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->checkHDRStatus()V

    .line 574
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->checkSuperZoomStatus()V

    goto :goto_0
.end method

.method private checkSceneStatus()V
    .locals 2

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsLuminanceEis:Z

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "night"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 521
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] EIS Scene_Night"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 525
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] Scene_Auto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSuperZoomStatus()V
    .locals 3

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsSuperZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "superzoom"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 507
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] lumi_low : SZ_on Scene_Auto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "superzoom"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "night"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 514
    const-string v0, "LGCamera"

    const-string v1, "[LGSF] lumi_low : SZ_off Scene_Night"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDefaultParam()V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "superzoom"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "panorama-shot"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private setHDROnParam()V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "hdr-mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "superzoom"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method private setLGParameters()V
    .locals 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    const-string v1, "mode_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 726
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    const-string v1, "mode_burst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->setDefaultParam()V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsBeauty:Ljava/lang/String;

    const-string v1, "mode_beauty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    const-string v1, "mode_beauty=0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "beautyshot"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "LGCamera"

    const-string v1, "[LGSF]Beautyshot : level is 0 and normal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_1
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->checkLuminanceStatus()V

    goto :goto_0

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "beautyshot"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v0, "LGCamera"

    const-string v1, "[LGSF]Beautyshot : level is higher than 0 and  not normal mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    const-string v1, "mode_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "panorama-shot"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "LGCamera"

    const-string v1, "[LGSF]Panorama shot mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    :cond_4
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    const-string v1, "mode_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->checkFlashStatus()V

    goto :goto_0
.end method


# virtual methods
.method public getMultiWindowFocusAreas()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 841
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "multi-window-focus-area"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "area":Ljava/lang/String;
    :try_start_0
    # getter for: Lcom/lge/hardware/LGCamera;->sSplitAreaMethod:Ljava/lang/Object;
    invoke-static {}, Lcom/lge/hardware/LGCamera;->access$100()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/lge/util/ProxyUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-object v2

    .line 844
    :catch_0
    move-exception v1

    .line 845
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LGCamera"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "Param"    # Ljava/lang/String;
    .param p2, "Status"    # Ljava/lang/String;

    .prologue
    .line 478
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, 0x1

    .line 482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public setNightandHDRorAuto(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p1, "Param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "modeType"    # Ljava/lang/String;
    .param p3, "recording_flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 601
    iput-object p1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 603
    iput-object p2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    .line 604
    const-string v0, "mode_beauty"

    .line 607
    .local v0, "beautyShot":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->setDefaultParam()V

    .line 611
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->this$0:Lcom/lge/hardware/LGCamera;

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 612
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 715
    :goto_0
    return-object v2

    .line 618
    :cond_0
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "zoom"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "temp":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 620
    iput v3, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mSuperZoomStatus:I

    .line 625
    :goto_1
    iget v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mSuperZoomStatus:I

    const/16 v4, 0x3c

    if-le v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsSuperZoomEnabled:Z

    .line 627
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "luminance-condition"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->luminanceCondition:Ljava/lang/String;

    .line 629
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->luminanceCondition:Ljava/lang/String;

    const-string v4, "high"

    invoke-virtual {p0, v2, v4}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsLuminanceHigh:Z

    .line 630
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->luminanceCondition:Ljava/lang/String;

    const-string v4, "eis"

    invoke-virtual {p0, v2, v4}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsLuminanceEis:Z

    .line 633
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "backlight-condition"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->backlightCondition:Ljava/lang/String;

    .line 634
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->backlightCondition:Ljava/lang/String;

    const-string v4, "high"

    invoke-virtual {p0, v2, v4}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHighBackLight:Z

    .line 637
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "flash-mode"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mFlashStatus:Ljava/lang/String;

    .line 638
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mFlashStatus:Ljava/lang/String;

    const-string v4, "off"

    invoke-virtual {p0, v2, v4}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsFlashOff:Z

    .line 646
    iget-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHighBackLight:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsLuminanceHigh:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsSuperZoomEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsFlashOff:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    const-string v4, "mode_normal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 648
    const-string v2, "LGCamera"

    const-string v3, "[LGSF] return1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->this$0:Lcom/lge/hardware/LGCamera;

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 650
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_0

    .line 623
    :cond_1
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "zoom"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mSuperZoomStatus:I

    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 625
    goto/16 :goto_2

    .line 671
    :cond_3
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "hdr-mode"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mHDRstatus:Ljava/lang/String;

    .line 673
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "flash-status"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mCurrentFlash:Ljava/lang/String;

    .line 675
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_4

    .line 676
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsBeauty:Ljava/lang/String;

    .line 688
    :cond_4
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mFlashStatus:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {p0, v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsFlashOn:Z

    .line 689
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mFlashStatus:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {p0, v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsFlashAuto:Z

    .line 690
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mHDRstatus:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHDROff:Z

    .line 691
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mHDRstatus:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {p0, v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHDROn:Z

    .line 692
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mHDRstatus:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {p0, v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHDRAuto:Z

    .line 694
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mCurrentFlash:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {p0, v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->getParamStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsCurrentFlash:Z

    .line 707
    iget-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsHighBackLight:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsLuminanceHigh:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsSuperZoomEnabled:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsFlashOff:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mshotMode:Ljava/lang/String;

    const-string v3, "mode_normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 709
    :cond_5
    invoke-direct {p0}, Lcom/lge/hardware/LGCamera$LGParameters;->setLGParameters()V

    .line 714
    :goto_3
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->this$0:Lcom/lge/hardware/LGCamera;

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 715
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_0

    .line 712
    :cond_6
    const-string v2, "LGCamera"

    const-string v3, "[LGSF] return2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setObjectTracking(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "object-tracking"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 460
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->this$0:Lcom/lge/hardware/LGCamera;

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 461
    return-void
.end method

.method public setSceneDetectMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "scene-detect"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public setSuperZoom(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p1, "Param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 767
    iput-object p1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 769
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "zoom"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "temp":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 772
    iput v1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mSuperZoomStatus:I

    .line 778
    :goto_0
    iget v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mSuperZoomStatus:I

    const/16 v3, 0x3c

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsSuperZoomEnabled:Z

    .line 779
    iget-boolean v1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mIsSuperZoomEnabled:Z

    if-eqz v1, :cond_2

    .line 780
    iget-object v1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "superzoom"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_1
    iget-object v1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->this$0:Lcom/lge/hardware/LGCamera;

    # getter for: Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/lge/hardware/LGCamera;->access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 786
    iget-object v1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v1

    .line 775
    :cond_1
    iget-object v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "zoom"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mSuperZoomStatus:I

    goto :goto_0

    .line 783
    :cond_2
    iget-object v1, p0, Lcom/lge/hardware/LGCamera$LGParameters;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "superzoom"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
