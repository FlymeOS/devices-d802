.class public final Lcom/lge/camera/properties/ProjectVariables;
.super Ljava/lang/Object;
.source "ProjectVariables.java"


# static fields
.field public static final ACTION_CAMERA_HIGH_TEMP_WARN:Ljava/lang/String; = "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

.field public static final FUNCTION_FRONT_CAMERA_FACE_BEAUTY_SHOT:I = 0x1

.field public static final FUNCTION_FRONT_CAMERA_NORMAL:I = 0x0

.field public static final INITIAL_UI_DELAY:I = 0x64

.field public static final KEYCODE_QCLIP_HOT_KEY:I

.field public static final QUICK_FUNCTION_COUNT:I = 0x5

.field public static bEnterSetting:Z = false

.field public static final keepDuration:J = 0xbb8L

.field public static mCaptureStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 143
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getQClipHotkey()I

    move-result v0

    sput v0, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_QCLIP_HOT_KEY:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static beSupportEulaPopup()Z
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 318
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 316
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static displayMessageIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 67
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static displayVisualVoiceMailIndicator()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static getContinuousShotTime()I
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 77
    :pswitch_0
    const/16 v0, 0x12c

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getGestureZoomFactor()I
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getQClipHotkey()I
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0xa5

    return v0
.end method

.method public static getSettingListHeight()I
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUWXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getSettingMenuBoarderHeight()I
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    .line 242
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isWVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    const/4 v0, 0x2

    goto :goto_0

    .line 245
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static final getThermFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 410
    :cond_0
    const-string v0, "/sys/devices/platform/msm_ssbi.0/pm8921-core/pm8xxx-adc/xo_therm"

    :goto_0
    return-object v0

    .line 405
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 407
    :cond_1
    const-string v0, "/sys/class/hwmon/hwmon1/device/xo_therm_pu2"

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static getUseDCFRule()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseNewNamingRule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    :goto_0
    :pswitch_0
    return v0

    .line 229
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUseDeviceKeepForChangeMode()Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQCTChipset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasWrongPreviewWhileChangingFullHD()Z
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 135
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 116
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
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

.method public static hasWrongPreviewWhilePauseBug()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQCTChipset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAppliedBurstPlayer()Z
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 549
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 547
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public static isCheckUSBConfig()Z
    .locals 1

    .prologue
    .line 477
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public static isDebugNotSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "logServiceEnable":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 287
    :goto_0
    return v1

    .line 273
    :pswitch_1
    const-string v3, "persist.service.main.enable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 280
    if-nez v0, :cond_0

    .line 281
    const-string v2, "CameraApp"

    const-string v3, "####### logServiceEnable = 0 : Log service is disable. Please set log service to enable for debug. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_0
    const-string v1, "CameraApp"

    const-string v3, "####### logServiceEnable = 1 : Log service is enable. You can debug log messages. "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 287
    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
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

.method public static isDisableCheckModifyParameters()Z
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEnterCameraDuringCall()Z
    .locals 1

    .prologue
    .line 434
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public static isHwTuning()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public static isPostviewDeviceOpenModel()Z
    .locals 1

    .prologue
    .line 442
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public static isRemoveOrgFile()Z
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 462
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStopPreviewAfterRecordStop()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCameraKey()Z
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportClearView()Z
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHDMI_MHL()Z
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 175
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 157
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
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

.method public static isSupportHardKeyborad()Z
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHeat_detection()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportKDDICleanView()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 521
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 523
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportManualAntibanding()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 186
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportPushContorl()Z
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 344
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 324
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
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
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

.method public static isSupportRecordingModePopUp()Z
    .locals 2

    .prologue
    .line 450
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 451
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 453
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedAutoReview()Z
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 505
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 503
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static isUPlusRMSCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 485
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 486
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 494
    :goto_0
    :pswitch_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isUseFlashTemperature()Z
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 416
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 418
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseNewNamingRule()Z
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 538
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 536
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static reduceBrightnessCamcorderMode()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public static showCapturedImageCountInRemainIndicator()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public static stopGalleryCacheduringCameraApp()Z
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public static temperatureCheckMethod()I
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x4

    const/4 v0, 0x2

    .line 369
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 393
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 371
    :sswitch_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 373
    const/4 v0, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 387
    :sswitch_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x12 -> :sswitch_1
        0x17 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static useBackLightControl()Z
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public static useContinuousSound()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public static useHideQFLWhenSettingMenuDisplay()Z
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useJpegPictureCallbackError()Z
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 206
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static useToggleSwitcher()Z
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public static useTurnOffAnimation()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method
