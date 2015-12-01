.class public final Lcom/lge/camera/properties/MultimediaProperties;
.super Ljava/lang/Object;
.source "MultimediaProperties.java"


# static fields
.field public static final CAMCORDERPROFILE_QUALITY960P:I = 0xe

.field public static DUALREC_DEFAULT_VIDEO_SIZE:Ljava/lang/String; = null

.field public static DUALREC_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String; = null

.field public static final DUAL_MODE_VIDEO_FRAMERATE_RANGE_MAX:I = 0x7530

.field public static final DUAL_MODE_VIDEO_FRAMERATE_RANGE_MIN:I = 0x7530

.field public static final EFFECTS_ENFORCED_SIZE_FOR_UVGA:Ljava/lang/String; = "1280x960"

.field public static final IMAGE_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final LIVEEFFECT_RESOLUTION_LIMITS_STARNDARD:[Ljava/lang/String;

.field private static final LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_2:[Ljava/lang/String;

.field private static final LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_3:[Ljava/lang/String;

.field public static final MEDIA_EJECT:Ljava/lang/String; = "eject"

.field public static final MEDIA_RECORDER_ERROR_RESOURCE:I = 0x2

.field public static final MEDIA_RECORDER_INFO_PROGRESS_TIME_DURATION:I = 0x3eb

.field public static final MEDIA_RECORDER_INFO_PROGRESS_TIME_STATUS:I = 0x324

.field public static final MEDIA_RECORDER_INFO_TOTAL_DURATION:I = 0x325

.field public static PIP_MOVE_ALLOWED_ONLY_IN_EDIT_MODE:Z = false

.field public static PIP_SUBWINDOW_INIT_POSITION:I = 0x0

.field public static PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z = false

.field public static PIP_TOGGLE_ALLOWED_IN_EDIT_MODE:Z = false

.field public static final SAFE_ATTACH_FILE_MIN_SIZE:J = 0x7800L

.field public static SMARTZOOM_DEFAULT_VIDEO_SIZE:Ljava/lang/String; = null

.field public static SMARTZOOM_FOCUS_MODE:I = 0x0

.field public static final SMARTZOOM_PREVIEWSIZE_SET_ON_DEVICE:Ljava/lang/String; = "2104x1184"

.field public static final SMARTZOOM_PREVIEWSIZE_SET_ON_DEVICE_FOR_UVGA:Ljava/lang/String; = "2104x1560"

.field public static SMARTZOOM_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String; = null

.field public static final VALUE_VIDEO_FRAMERATE_FHD_FORNVIDIA:I = 0x5dc0

.field public static final VALUE_VIDEO_FRAMERATE_FORMTK_MIN:I = 0x4e20

.field public static final VALUE_VIDEO_FRAMERATE_MMS_RANGE:I = 0x3a98

.field public static final VALUE_VIDEO_FRAMERATE_NORMAL_RANGE_MAX:I = 0x7530

.field public static final VALUE_VIDEO_FRAMERATE_VARIABLE_RANGE_MIN:I = 0x2710

.field public static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/mp4"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "720x480"

    aput-object v1, v0, v2

    const-string v1, "720x480"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_STARNDARD:[Ljava/lang/String;

    .line 246
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "720x480"

    aput-object v1, v0, v2

    const-string v1, "640x480"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_2:[Ljava/lang/String;

    .line 251
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "1280x960"

    aput-object v1, v0, v2

    const-string v1, "1280x960"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_3:[Ljava/lang/String;

    .line 378
    sput-boolean v2, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z

    .line 379
    sput v5, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUBWINDOW_INIT_POSITION:I

    .line 380
    sput-boolean v2, Lcom/lge/camera/properties/MultimediaProperties;->PIP_MOVE_ALLOWED_ONLY_IN_EDIT_MODE:Z

    .line 381
    sput-boolean v3, Lcom/lge/camera/properties/MultimediaProperties;->PIP_TOGGLE_ALLOWED_IN_EDIT_MODE:Z

    .line 434
    const-string v0, "1280x720,720x480"

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String;

    .line 435
    const-string v0, "1280x720"

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    .line 532
    const-string v0, "1280x720,720x480"

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String;

    .line 533
    const-string v0, "1280x720"

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    .line 534
    sput v5, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitrate(II)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 484
    invoke-static {p0, p1}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v0

    .line 486
    .local v0, "profile":Lcom/lge/media/CamcorderProfileEx;
    if-eqz v0, :cond_0

    .line 487
    iget v1, v0, Lcom/lge/media/CamcorderProfileEx;->videoBitRate:I

    .line 489
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static final getCameraFrameRateBurstShotModeRangeMin()I
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x3a98

    return v0
.end method

.method public static final getCameraFrameRateIAModeRangeMin()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x1770

    return v0
.end method

.method public static final getCameraFrameRateNightModeRangeMin()I
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    const/16 v0, 0x1770

    :goto_0
    return v0

    .line 181
    :pswitch_0
    const/16 v0, 0x1b58

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public static final getCameraFrameRateNormalRangeMax()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x7530

    return v0
.end method

.method public static final getCameraFrameRateNormalRangeMin()I
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 152
    const/16 v0, 0x2710

    :goto_0
    return v0

    .line 141
    :sswitch_0
    const/16 v0, 0x1770

    goto :goto_0

    .line 143
    :sswitch_1
    const/16 v0, 0x1388

    goto :goto_0

    .line 146
    :sswitch_2
    const/16 v0, 0x1f40

    goto :goto_0

    .line 148
    :sswitch_3
    const/16 v0, 0x2328

    goto :goto_0

    .line 150
    :sswitch_4
    const/16 v0, 0x3a98

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_2
        0xf -> :sswitch_2
        0x13 -> :sswitch_1
        0x17 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileVideoSize"    # Ljava/lang/String;

    .prologue
    .line 389
    move-object v0, p0

    .line 390
    .local v0, "retSize":Ljava/lang/String;
    const-string v1, "1920x1080"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const-string v0, "1920x1088"

    .line 393
    :cond_0
    return-object v0
.end method

.method public static final getFrontCameraFrameRateNightModeRangeMin()I
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 197
    const/16 v0, 0x1388

    :goto_0
    return v0

    .line 193
    :sswitch_0
    const/16 v0, 0xfa0

    goto :goto_0

    .line 195
    :sswitch_1
    const/16 v0, 0x2710

    goto :goto_0

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public static final getFrontCameraFrameRateNormalRangeMin()I
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 168
    const/16 v0, 0x2710

    :goto_0
    return v0

    .line 162
    :sswitch_0
    const/16 v0, 0xfa0

    goto :goto_0

    .line 164
    :sswitch_1
    const/16 v0, 0x1388

    goto :goto_0

    .line 166
    :sswitch_2
    const/16 v0, 0x2ee0

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x13 -> :sswitch_1
        0x17 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getHFRBitrate(I)I
    .locals 4
    .param p0, "cameraId"    # I

    .prologue
    const v2, 0x1c9c380

    .line 493
    const/16 v1, 0x7d4

    .line 494
    .local v1, "quality":I
    invoke-static {p0, v1}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v2

    .line 498
    :cond_1
    invoke-static {p0, v1}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v0

    .line 499
    .local v0, "profile":Lcom/lge/media/CamcorderProfileEx;
    if-eqz v0, :cond_0

    .line 500
    iget v2, v0, Lcom/lge/media/CamcorderProfileEx;->videoBitRate:I

    goto :goto_0
.end method

.method public static getLiveEffectDiscoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 373
    const-string v0, "file:///system/media/video/Disco.480p.mp4"

    return-object v0
.end method

.method public static getLiveEffectInSpacePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 357
    const-string v0, "file:///system/media/video/AndroidInSpace.480p.mp4"

    return-object v0
.end method

.method public static getLiveEffectPreviewOnDevice(I)Ljava/lang/String;
    .locals 1
    .param p0, "cam_mode"    # I

    .prologue
    .line 257
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "320x214"

    .line 293
    :goto_0
    return-object v0

    .line 259
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "480x320"

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isWVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 262
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectResolutionLimitVariation2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    if-nez p0, :cond_2

    const-string v0, "720x480"

    goto :goto_0

    :cond_2
    const-string v0, "640x480"

    goto :goto_0

    .line 265
    :cond_3
    const-string v0, "720x480"

    goto :goto_0

    .line 266
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQHDmodel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectResolutionLimitVariation2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    if-nez p0, :cond_5

    const-string v0, "810x540"

    goto :goto_0

    :cond_5
    const-string v0, "720x540"

    goto :goto_0

    .line 270
    :cond_6
    const-string v0, "810x540"

    goto :goto_0

    .line 271
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 272
    const-string v0, "1024x682"

    goto :goto_0

    .line 273
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHDmodel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 275
    const-string v0, "1072x714"

    goto :goto_0

    .line 277
    :cond_9
    const-string v0, "1080x720"

    goto :goto_0

    .line 278
    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isWXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 279
    const-string v0, "1080x720"

    goto :goto_0

    .line 280
    :cond_b
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 281
    const-string v0, "1280x960"

    goto :goto_0

    .line 282
    :cond_c
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFHDmodel()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 283
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 284
    const-string v0, "1608x1072"

    goto :goto_0

    .line 286
    :cond_d
    const-string v0, "1620x1080"

    goto :goto_0

    .line 287
    :cond_e
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUWXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 289
    const-string v0, "1686x1124"

    goto/16 :goto_0

    .line 291
    :cond_f
    const-string v0, "1800x1200"

    goto/16 :goto_0

    .line 293
    :cond_10
    const-string v0, "1620x1080"

    goto/16 :goto_0
.end method

.method public static getLiveEffectSunSetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 365
    const-string v0, "file:///system/media/video/Sunset.480p.mp4"

    return-object v0
.end method

.method public static getLiveeffectResolutions(I)Ljava/lang/String;
    .locals 2
    .param p0, "cam_mode"    # I

    .prologue
    .line 299
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectResolutionLimitVariation2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_2:[Ljava/lang/String;

    aget-object v1, v1, p0

    .line 306
    :goto_0
    return-object v1

    .line 303
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    sget-object v1, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_3:[Ljava/lang/String;

    aget-object v1, v1, p0

    goto :goto_0

    .line 306
    :cond_1
    sget-object v1, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_STARNDARD:[Ljava/lang/String;

    aget-object v1, v1, p0

    goto :goto_0
.end method

.method public static getMMSMaxDuration()I
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 125
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 121
    :sswitch_0
    const v0, 0xea60

    goto :goto_0

    .line 123
    :sswitch_1
    const/16 v0, 0x7530

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMediaRecoderLimitSize()J
    .locals 2

    .prologue
    .line 113
    const-wide v0, 0xffffffffL

    .line 114
    .local v0, "limitsize":J
    return-wide v0
.end method

.method public static getMinRecordingTime()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x7d0

    return v0
.end method

.method public static getMmsAudioEncodingType()I
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 98
    .local v0, "encodingType":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 101
    :pswitch_0
    const/4 v0, 0x3

    .line 102
    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static getMmsVideoEncodingType()I
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x3

    .line 80
    .local v0, "encodingType":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 88
    const/4 v0, 0x3

    .line 91
    :goto_0
    return v0

    .line 84
    :sswitch_0
    const/4 v0, 0x2

    .line 85
    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static getProfileQulity(I[I)I
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "size"    # [I

    .prologue
    const/4 v4, 0x1

    .line 447
    const/4 v1, 0x7

    .line 448
    .local v1, "quality":I
    const/4 v0, 0x1

    .line 449
    .local v0, "height":I
    if-eqz p1, :cond_0

    .line 450
    aget v2, p1, v4

    const/16 v3, 0x870

    if-ne v2, v3, :cond_1

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    const/16 v1, 0x8

    .line 480
    :cond_0
    :goto_0
    return v1

    .line 454
    :cond_1
    aget v2, p1, v4

    const/16 v3, 0x438

    if-eq v2, v3, :cond_2

    aget v2, p1, v4

    const/16 v3, 0x440

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    const/4 v1, 0x6

    goto :goto_0

    .line 458
    :cond_3
    aget v2, p1, v4

    const/16 v3, 0x3c0

    if-ne v2, v3, :cond_4

    const/16 v2, 0xe

    invoke-static {p0, v2}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    const/16 v1, 0xe

    goto :goto_0

    .line 462
    :cond_4
    aget v2, p1, v4

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_5

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 465
    const/4 v1, 0x5

    goto :goto_0

    .line 466
    :cond_5
    aget v2, p1, v4

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_6

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 469
    const/4 v1, 0x4

    goto :goto_0

    .line 470
    :cond_6
    aget v2, p1, v4

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_7

    const/4 v2, 0x7

    invoke-static {p0, v2}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 473
    const/4 v1, 0x7

    goto :goto_0

    .line 474
    :cond_7
    aget v2, p1, v4

    const/16 v3, 0x90

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileVideoSize"    # Ljava/lang/String;

    .prologue
    .line 509
    move-object v0, p0

    .line 510
    .local v0, "retSize":Ljava/lang/String;
    const-string v1, "1920x1080"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    const-string v0, "1920x1088"

    .line 513
    :cond_0
    return-object v0
.end method

.method public static getStartRecordingSoundDelay()I
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "postfix"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 62
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v0, "video/3gpp"

    .line 73
    :goto_0
    return-object v0

    .line 58
    :sswitch_0
    const-string v0, "video/3gpp"

    .line 59
    goto :goto_0

    .line 68
    :cond_0
    const-string v0, "video/mp4"

    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static isAvailableLiveeffectResolution(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "sizeValue"    # Ljava/lang/String;
    .param p1, "cam_mode"    # I

    .prologue
    .line 313
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "model":Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectResolutionLimitVariation2(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    sget-object v2, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_2:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 324
    .local v0, "liveeffectResolutions":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const/4 v2, 0x1

    .line 327
    :goto_1
    return v2

    .line 317
    .end local v0    # "liveeffectResolutions":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    sget-object v2, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_3:[Ljava/lang/String;

    aget-object v0, v2, p1

    .restart local v0    # "liveeffectResolutions":Ljava/lang/String;
    goto :goto_0

    .line 321
    .end local v0    # "liveeffectResolutions":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_STARNDARD:[Ljava/lang/String;

    aget-object v0, v2, p1

    .restart local v0    # "liveeffectResolutions":Ljava/lang/String;
    goto :goto_0

    .line 327
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isDualCameraSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 417
    const-string v1, "yes"

    const-string v2, "ro.build.new_function_disabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :goto_0
    return v0

    .line 420
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 428
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 420
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

.method public static isDualRecordingSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 398
    const-string v1, "yes"

    const-string v2, "ro.build.new_function_disabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    :goto_0
    return v0

    .line 401
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 409
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 401
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

.method public static isHighFramRateVideoSupported()Z
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 549
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 547
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isLiveEffectResolutionLimitVariation2(Ljava/lang/String;)Z
    .locals 2
    .param p0, "model"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const-string v0, "VS876"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AS876"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const-string v0, "LG-D405"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LG-D415"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LG-D415BK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LG-D405n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LG-D405TR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LG-D405h"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LG-MS415"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LG-D410"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    :cond_1
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiveEffectSupported()Z
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 232
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 230
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x11 -> :sswitch_0
        0x13 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPauseAndResumeSupported()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public static isSmartZoomSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    const-string v1, "yes"

    const-string v2, "ro.build.new_function_disabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    :goto_0
    return v0

    .line 521
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 526
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method
