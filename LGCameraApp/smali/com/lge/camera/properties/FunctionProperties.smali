.class public final Lcom/lge/camera/properties/FunctionProperties;
.super Ljava/lang/Object;
.source "FunctionProperties.java"


# static fields
.field public static final CONTINUOUS_AUTO_FOCUS_NOT_SUPPORTED:I = 0x2

.field public static final CONTINUOUS_AUTO_FOCUS_WITHOUT_ANIMATION:I = 0x1

.field public static final CONTINUOUS_AUTO_FOCUS_WITH_ANIMATION:I

.field public static isSupportVRPanoramaForSameProjectcode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/camera/properties/FunctionProperties;->isSupportVRPanoramaForSameProjectcode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beSupportCafCallbackFromSensor()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public static beSupportMoveCallbackFromSensor()Z
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 147
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCaf(I)I
    .locals 2
    .param p0, "appMode"    # I

    .prologue
    const/4 v0, 0x2

    .line 87
    if-nez p0, :cond_0

    .line 88
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 97
    const/4 v0, 0x0

    .line 108
    :goto_0
    :sswitch_0
    return v0

    .line 100
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch

    .line 100
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getFlashDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 734
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 732
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public static getFunctionFrontCameraBeautyShot()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    :pswitch_1
    return v0

    .line 183
    :pswitch_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getPlanePanoramaGuideAreaRatioHorHor()F
    .locals 1

    .prologue
    .line 1018
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1022
    const v0, 0x3f666666    # 0.9f

    :goto_0
    return v0

    .line 1020
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1018
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public static getPlanePanoramaGuideAreaRatioHorVer()F
    .locals 1

    .prologue
    .line 1028
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 1030
    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public static getVoiceShutterSensitivity()I
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 321
    const/16 v0, 0x14

    :goto_0
    return v0

    .line 313
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_1
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isAutoFocusNullSettingNeededInStartPreview()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 742
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    :goto_0
    return v0

    .line 746
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 749
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 746
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public static isAvailableLiveShot()Z
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 376
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 374
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isCafAnimationSupported(II)Z
    .locals 3
    .param p0, "appMode"    # I
    .param p1, "cameraID"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-ne p1, v0, :cond_0

    .line 127
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/lge/camera/properties/FunctionProperties;->getCaf(I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isCafSupported(II)Z
    .locals 4
    .param p0, "appMode"    # I
    .param p1, "cameraID"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-ne p1, v0, :cond_0

    .line 119
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/lge/camera/properties/FunctionProperties;->getCaf(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isClearShotSupported()Z
    .locals 1

    .prologue
    .line 796
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 826
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 824
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isDateStampSupported()Z
    .locals 1

    .prologue
    .line 671
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public static isFaceDetectionAuto()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 787
    const/4 v0, 0x1

    .line 790
    :cond_0
    :sswitch_0
    return v0

    .line 780
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isFreePanoramaSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 637
    const-string v2, "yes"

    const-string v3, "ro.build.new_function_disabled"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    :goto_0
    return v0

    .line 640
    :cond_0
    sget-boolean v2, Lcom/lge/camera/properties/FunctionProperties;->isSupportVRPanoramaForSameProjectcode:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 641
    goto :goto_0

    .line 643
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 654
    goto :goto_0

    .line 643
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isFrontTouchAESupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isJBModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 72
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isFullFrameContinuousShotSupported()Z
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 481
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 479
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isHDRRecordingNameUsed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 616
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 629
    :goto_0
    :sswitch_0
    return v0

    .line 621
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 616
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_1
        0xd -> :sswitch_1
        0xf -> :sswitch_1
        0x12 -> :sswitch_0
        0x17 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isHideAudiozoomMenu()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 874
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "currentModel":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 882
    :cond_0
    :goto_0
    return v1

    .line 877
    :pswitch_0
    const-string v2, "LGL22"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    const/4 v1, 0x1

    goto :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static isNonZSLMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "currentModel":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 232
    :sswitch_0
    const-string v3, "LG-E970"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LG-E971"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LG-E973"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_1
    move v1, v2

    .line 246
    goto :goto_0

    :sswitch_2
    move v1, v2

    .line 248
    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0xa -> :sswitch_1
        0x12 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isNoneFlashModel()Z
    .locals 1

    .prologue
    .line 716
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 724
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 722
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 716
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1e -> :sswitch_0
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPlanePanoramaPreviewInput()Z
    .locals 1

    .prologue
    .line 974
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 977
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isZslSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const/4 v0, 0x0

    .line 980
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPlanePanoramaSupported()Z
    .locals 1

    .prologue
    .line 1036
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1064
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1062
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1036
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isRefocusShotSupported()Z
    .locals 1

    .prologue
    .line 449
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 453
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 451
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public static isSmartShutterSupported()Z
    .locals 1

    .prologue
    .line 662
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method public static isSuperZoomSupported()Z
    .locals 1

    .prologue
    .line 861
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 868
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 866
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 861
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportAFonCAF()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 160
    const/4 v0, 0x1

    .line 163
    :cond_0
    :sswitch_0
    return v0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportAudiozoom()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 679
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "currentModel":Ljava/lang/String;
    const-string v3, "yes"

    const-string v4, "ro.build.new_function_disabled"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v1

    .line 683
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v1, v2

    .line 695
    goto :goto_0

    .line 685
    :sswitch_1
    const-string v3, "LGL22"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 688
    goto :goto_0

    .line 683
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportBurstShot()Z
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 571
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_CAMERA_BURSTSHOT:Z

    :goto_0
    return v0

    .line 569
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportCameraCleanGuide()Z
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 589
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 587
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportCameraHandGuide()Z
    .locals 1

    .prologue
    .line 851
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 855
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 853
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportEmotionalLED()Z
    .locals 1

    .prologue
    .line 908
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 915
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 912
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 908
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportGuideFlash()Z
    .locals 1

    .prologue
    .line 704
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 710
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 708
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 704
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportHelpSetting()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 832
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "currentModel":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 845
    :cond_0
    :goto_0
    return v1

    .line 836
    :pswitch_0
    const-string v2, "LGL30L"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 838
    const-string v2, "LGL34C"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 840
    const-string v2, "LGL41C"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 843
    const/4 v1, 0x1

    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportLightFrame()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 986
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "currentModel":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 988
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 1013
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    .line 1005
    :pswitch_2
    const-string v3, "VS876"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1008
    goto :goto_0

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportMorphoNightShot()Z
    .locals 1

    .prologue
    .line 921
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportNightShotModeMenu(I)Z
    .locals 3
    .param p0, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 929
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 951
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 945
    goto :goto_0

    .line 948
    :pswitch_2
    if-eq p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 929
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportObjectTracking()Z
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 539
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 537
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 529
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportQClipCustomization()Z
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportRotateSaveImage()Z
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 597
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportShutterButtonBurst()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSmartMode()Z
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 555
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 553
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 545
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportSportShot()Z
    .locals 1

    .prologue
    .line 957
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 968
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 966
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportVoiceShutterAME()Z
    .locals 2

    .prologue
    .line 356
    const-string v0, "AME"

    const-string v1, "ro.build.target_region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AME"

    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVoiceShutterJapanese()Z
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 351
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 349
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportVolumeHotKey()Z
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 276
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportZoomOnRecord()Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedGestureShot()Z
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedRotationWithoutAccelerometer()Z
    .locals 1

    .prologue
    .line 1080
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1084
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1082
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportedTagLocation()Z
    .locals 2

    .prologue
    .line 1070
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "strCountryIso":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    const/4 v1, 0x0

    .line 1074
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportedVideoFlashAuto()Z
    .locals 1

    .prologue
    .line 888
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 902
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 899
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 888
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isTimeMachinShotSupported()Z
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 442
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 440
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isTimeMachineShotSizeAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "size"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v0, "3264x1836"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3264x2448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3200x1920"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    :cond_0
    const/4 v0, 0x0

    .line 499
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTimeMachineShotSizeLimit()Z
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public static isTouchAfSupported(I)Z
    .locals 3
    .param p0, "appMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "currentModel":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 33
    :sswitch_0
    const-string v2, "LG-D227"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LG-D228"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    const/4 v1, 0x0

    goto :goto_0

    .line 27
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isUPlusBox()Z
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 523
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 521
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static isVideoStabilizationSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 412
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 397
    :sswitch_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 395
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isVoiceShutter()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public static isWDRSupported()Z
    .locals 1

    .prologue
    .line 602
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 611
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 609
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 602
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isZslSupported()Z
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 220
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static useCheeseShutterTitle()Z
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 339
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 336
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0x13 -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static useFaceDetectionFromHal()Z
    .locals 1

    .prologue
    .line 758
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 773
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 771
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static useShutterSoundInLiveShot()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    :goto_0
    return v0

    .line 384
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static useTimeCatchShotTitle()Z
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static voiceShutterKind()I
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 302
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 294
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_1
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
