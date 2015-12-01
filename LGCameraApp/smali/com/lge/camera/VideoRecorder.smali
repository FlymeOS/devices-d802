.class public Lcom/lge/camera/VideoRecorder;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# static fields
.field public static final DEFAULT_DURATION:I = 0x6ddd00

.field public static final MMS:I = 0x1

.field private static final MMS_DURATION:I

.field public static final NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static final VALUE_VIDEO_FPS:I = 0x1e

.field private static final VALUE_VIDEO_FPS_MMS:I = 0xf

.field private static mCameraDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsInitialized:Z

.field private static mIsRecording:Z

.field private static mMaxFileSize:J

.field private static mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

.field private static mOrientationHint:I

.field private static mPurpose:I

.field private static mVideoFile:Lcom/lge/camera/VideoFile;

.field private static maxDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 37
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    .line 38
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 39
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 40
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 41
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    .line 42
    sput v2, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 45
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMMSMaxDuration()I

    move-result v0

    sput v0, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    .line 48
    sput v2, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeMaxFileSize(J)V
    .locals 4
    .param p0, "size"    # J

    .prologue
    .line 492
    const-string v1, "CameraApp"

    const-string v2, "changeMaxFileSize START"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-eqz v1, :cond_0

    .line 495
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "changeMaxFileSize DO"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v1, p0, p1}, Lcom/lge/media/MediaRecorderEx;->changeMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    const-string v2, "changeMaxFileSize END"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Catch Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Catch IllegalStateException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAudioZoomLevelMeter()I
    .locals 4

    .prologue
    .line 485
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Lcom/lge/media/MediaRecorderEx;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3f69008205ff1d82L    # 0.003052

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxFileSize()J
    .locals 2

    .prologue
    .line 457
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    return-wide v0
.end method

.method public static getOrientationHint()I
    .locals 1

    .prologue
    .line 453
    sget v0, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    return v0
.end method

.method public static init(Lcom/lge/camera/ControllerFunction;)Lcom/lge/media/MediaRecorderEx;
    .locals 19
    .param p0, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 118
    const/4 v6, 0x0

    .line 120
    .local v6, "pref":Lcom/lge/camera/setting/ListPreference;
    const-string v14, "CameraApp"

    const-string v15, "Camcorder(MediaRecorder) init()-start"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-boolean v14, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-nez v14, :cond_a

    .line 123
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->checkSurfaceHolder()Z

    move-result v14

    if-nez v14, :cond_0

    .line 124
    const-string v14, "CameraApp"

    const-string v15, "Surface holder is null. Wait for surface changed."

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v14, 0x0

    .line 306
    :goto_0
    return-object v14

    .line 128
    :cond_0
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-nez v14, :cond_1

    .line 129
    const-string v14, "CameraApp"

    const-string v15, "Camcorder new MediaRecorder()"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v14, Lcom/lge/media/MediaRecorderEx;

    invoke-direct {v14}, Lcom/lge/media/MediaRecorderEx;-><init>()V

    sput-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    .line 133
    :cond_1
    new-instance v14, Ljava/lang/ref/WeakReference;

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v14, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 134
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera;

    .line 135
    .local v2, "camera":Landroid/hardware/Camera;
    if-eqz v2, :cond_b

    .line 136
    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 140
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v14, v2}, Lcom/lge/media/MediaRecorderEx;->setCamera(Landroid/hardware/Camera;)V

    .line 142
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v7

    .line 143
    .local v7, "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    if-eqz v7, :cond_2

    .line 144
    const-string v14, "key_video_audio_recording"

    invoke-virtual {v7, v14}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 147
    :cond_2
    if-eqz v6, :cond_c

    const-string v14, "mute"

    invoke-virtual {v6}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 148
    const-string v14, "CameraApp"

    const-string v15, "AUDIO is mute"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_1
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoSource(I)V

    .line 155
    sget v14, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    .line 156
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setOutputFormat(I)V

    .line 161
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordLocation()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 162
    .local v5, "loc":Landroid/location/Location;
    :goto_3
    if-eqz v5, :cond_3

    .line 163
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/lge/media/MediaRecorderEx;->setLocation(FF)V

    .line 166
    :cond_3
    const/4 v13, 0x0

    .line 167
    .local v13, "videoSize":Ljava/lang/String;
    const/4 v11, 0x0

    .line 168
    .local v11, "size":[I
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 169
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v13

    .line 172
    :cond_4
    if-eqz v13, :cond_f

    .line 173
    invoke-static {v13}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v11

    .line 174
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x0

    aget v15, v11, v15

    const/16 v16, 0x1

    aget v16, v11, v16

    invoke-virtual/range {v14 .. v16}, Lcom/lge/media/MediaRecorderEx;->setVideoSize(II)V

    .line 175
    const-string v14, "CameraApp"

    const-string v15, "setVideoSize width = %d , hegiht = %d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget v18, v11, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x1

    aget v18, v11, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_4
    if-eqz v7, :cond_5

    .line 182
    const-string v14, "key_preview_size_on_device"

    invoke-virtual {v7, v14}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 185
    :cond_5
    const-string v10, "off"

    .line 186
    .local v10, "sVideoFps":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 187
    invoke-virtual {v6}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v10

    .line 190
    :cond_6
    const/4 v4, 0x0

    .line 192
    .local v4, "iVideoBitrate":I
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v14

    invoke-static {v14, v11}, Lcom/lge/camera/properties/MultimediaProperties;->getProfileQulity(I[I)I

    move-result v9

    .line 193
    .local v9, "quality":I
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v14

    invoke-static {v14, v9}, Lcom/lge/camera/properties/MultimediaProperties;->getBitrate(II)I

    move-result v8

    .line 195
    .local v8, "profileBitrate":I
    const-string v14, "CameraApp"

    const-string v15, "VideoRecorder-Init : Preference bitrate is larger than profile bitrate."

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VideoRecorder-Init : Preference bitrate = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Profile bitrate = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move v4, v8

    .line 200
    sget v14, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    .line 201
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const v15, 0x1f400

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoEncodingBitRate(I)V

    .line 202
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 203
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/16 v15, 0x1e

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoFrameRate(I)V

    .line 221
    :goto_5
    if-eqz v7, :cond_7

    .line 222
    const-string v14, "key_video_audio_recording"

    invoke-virtual {v7, v14}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 224
    :cond_7
    if-eqz v6, :cond_13

    const-string v14, "mute"

    invoke-virtual {v6}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 225
    const-string v14, "CameraApp"

    const-string v15, "AUDIO REC OFF -> Audio Encorder NOT SET"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_6
    sget v14, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16

    .line 247
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMmsVideoEncodingType()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoEncoder(I)V

    .line 257
    :goto_7
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    sget-wide v16, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/lge/media/MediaRecorderEx;->setMaxFileSize(J)V

    .line 259
    sget v14, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_19

    .line 260
    const v14, 0x6ddd00

    sput v14, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 261
    sget v14, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->needProgressBar()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 263
    :cond_8
    sget v14, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    sput v14, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 275
    :cond_9
    :goto_8
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    sget v15, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setMaxDuration(I)V

    .line 276
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 277
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    sget v15, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setOrientationHint(I)V

    .line 279
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v12

    .line 280
    .local v12, "videoFile":Lcom/lge/camera/VideoFile;
    if-eqz v12, :cond_1b

    invoke-virtual {v12}, Lcom/lge/camera/VideoFile;->isInitialized()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 281
    sput-object v12, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 282
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v12}, Lcom/lge/camera/VideoFile;->getFileExternalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setOutputFile(Ljava/lang/String;)V

    .line 285
    :try_start_0
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v14}, Lcom/lge/media/MediaRecorderEx;->prepare()V

    .line 286
    const-string v14, "CameraApp"

    const-string v15, "Media recorder initialized."

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v14, 0x1

    sput-boolean v14, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 288
    const-string v14, "CameraApp"

    const-string v15, "RECORDER_INIT_DONE"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    .end local v2    # "camera":Landroid/hardware/Camera;
    .end local v4    # "iVideoBitrate":I
    .end local v5    # "loc":Landroid/location/Location;
    .end local v7    # "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    .end local v8    # "profileBitrate":I
    .end local v9    # "quality":I
    .end local v10    # "sVideoFps":Ljava/lang/String;
    .end local v11    # "size":[I
    .end local v12    # "videoFile":Lcom/lge/camera/VideoFile;
    .end local v13    # "videoSize":Ljava/lang/String;
    :cond_a
    :goto_9
    const-string v14, "CameraApp"

    const-string v15, "Camcorder(MediaRecorder) init()-end"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    goto/16 :goto_0

    .line 138
    .restart local v2    # "camera":Landroid/hardware/Camera;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 150
    .restart local v7    # "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    :cond_c
    const-string v14, "CameraApp"

    const-string v15, "AUDIO is unmute"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioSource(I)V

    goto/16 :goto_1

    .line 158
    :cond_d
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setOutputFormat(I)V

    goto/16 :goto_2

    .line 161
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 178
    .restart local v5    # "loc":Landroid/location/Location;
    .restart local v11    # "size":[I
    .restart local v13    # "videoSize":Ljava/lang/String;
    :cond_f
    const-string v14, "CameraApp"

    const-string v15, "error!! videoSize is null"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 205
    .restart local v4    # "iVideoBitrate":I
    .restart local v8    # "profileBitrate":I
    .restart local v9    # "quality":I
    .restart local v10    # "sVideoFps":Ljava/lang/String;
    :cond_10
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoFrameRate(I)V

    goto/16 :goto_5

    .line 208
    :cond_11
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "recordmode_normal"

    const-string v15, "key_video_record_mode"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const-string v14, "off"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 213
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoFrameRate(I)V

    .line 214
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v14

    invoke-static {v14}, Lcom/lge/camera/properties/MultimediaProperties;->getHFRBitrate(I)I

    move-result v4

    .line 218
    :goto_a
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v14, v4}, Lcom/lge/media/MediaRecorderEx;->setVideoEncodingBitRate(I)V

    goto/16 :goto_5

    .line 216
    :cond_12
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/16 v15, 0x1e

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoFrameRate(I)V

    goto :goto_a

    .line 227
    :cond_13
    sget v14, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_15

    .line 228
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMmsAudioEncodingType()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioEncoder(I)V

    .line 230
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMmsAudioEncodingType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_14

    .line 231
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const v15, 0xbb80

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioEncodingBitRate(I)V

    .line 232
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioChannels(I)V

    .line 233
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/16 v15, 0x1f40

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioSamplingRate(I)V

    .line 243
    :cond_14
    :goto_b
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 236
    :cond_15
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioEncoder(I)V

    .line 237
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 238
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const v15, 0xbb80

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioEncodingBitRate(I)V

    .line 239
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioChannels(I)V

    .line 240
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/16 v15, 0x5622

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setAudioSamplingRate(I)V

    goto :goto_b

    .line 249
    :cond_16
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v14

    if-eqz v14, :cond_17

    .line 250
    const-string v14, "CameraApp"

    const-string v15, "setVideoEncoder => MediaRecorderEX.VideoEncoder.MPEG_4_SP"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoEncoder(I)V

    goto/16 :goto_7

    .line 253
    :cond_17
    sget-object v14, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/lge/media/MediaRecorderEx;->setVideoEncoder(I)V

    goto/16 :goto_7

    .line 264
    :cond_18
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    .line 265
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v14

    long-to-int v14, v14

    sput v14, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    goto/16 :goto_8

    .line 268
    :cond_19
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1a

    .line 269
    invoke-interface/range {p0 .. p0}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v14

    long-to-int v14, v14

    sput v14, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    goto/16 :goto_8

    .line 271
    :cond_1a
    const v14, 0x6ddd00

    sput v14, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    goto/16 :goto_8

    .line 289
    .restart local v12    # "videoFile":Lcom/lge/camera/VideoFile;
    :catch_0
    move-exception v3

    .line 290
    .local v3, "exception":Ljava/lang/IllegalStateException;
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IllegalStateException in init recorder prepare : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_9

    .line 295
    .end local v3    # "exception":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 296
    .local v3, "exception":Ljava/io/IOException;
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "recorder prepare error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "prepare failed ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_9

    .line 301
    .end local v3    # "exception":Ljava/io/IOException;
    :cond_1b
    const-string v14, "CameraApp"

    const-string v15, "Video file not ready!"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_9
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    return v0
.end method

.method public static pause()V
    .locals 3

    .prologue
    .line 349
    const-string v1, "CameraApp"

    const-string v2, "Camcorder pause()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    const-string v1, "CameraApp"

    const-string v2, "Model not supported pause and resume."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 354
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-eqz v1, :cond_1

    .line 356
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "##### video recording start - mMediaRecorder.pause()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v1}, Lcom/lge/media/MediaRecorderEx;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "Camcorder pause()-end."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    .line 359
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 360
    const-string v1, "CameraApp"

    const-string v2, "error recording pause"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v1, :cond_2

    .line 362
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V

    .line 364
    :cond_2
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v1}, Lcom/lge/media/MediaRecorderEx;->release()V

    goto :goto_1
.end method

.method public static declared-synchronized release()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 394
    const-class v3, Lcom/lge/camera/VideoRecorder;

    monitor-enter v3

    :try_start_0
    const-string v2, "CameraApp"

    const-string v4, "Camcorder release()-start"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v2, :cond_2

    .line 396
    sget-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 398
    :try_start_1
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->stop()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_2
    const-string v2, "CameraApp"

    const-string v4, "Release MediaRecorder start"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v2}, Lcom/lge/media/MediaRecorderEx;->release()V

    .line 417
    const/4 v2, 0x0

    sput-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    .line 418
    const-string v2, "CameraApp"

    const-string v4, "Release MediaRecorder end"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v2, "CameraApp"

    const-string v4, "UNLOCK CAMERA"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_4

    .line 424
    .end local v1    # "e":Ljava/lang/Exception;
    .local v0, "camera":Landroid/hardware/Camera;
    :goto_1
    if-eqz v0, :cond_1

    .line 425
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 427
    const-string v2, "CameraApp"

    const-string v4, "### mCameraDevice.reconnect()"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    :cond_1
    :goto_2
    :try_start_4
    const-string v2, "CameraApp"

    const-string v4, "camera reconnected"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x0

    sput-object v2, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 441
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 442
    const-string v2, "CameraApp"

    const-string v4, "Camcorder release()-end"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 443
    monitor-exit v3

    return-void

    .line 399
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catch_0
    move-exception v1

    .line 400
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "CameraApp"

    const-string v4, "[VideoRecorder::release()] stop Exception !!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v2, :cond_0

    .line 403
    const-string v2, "CameraApp"

    const-string v4, "[VideoRecorder::release()] videoFile delete !!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v2}, Lcom/lge/camera/VideoFile;->deleteFile()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 409
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_6
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v2}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 410
    :catch_1
    move-exception v1

    .line 411
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v2, "CameraApp"

    const-string v4, "[VideoRecorder::release()] stop Exception !!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 422
    :cond_4
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera;

    move-object v0, v2

    goto :goto_1

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :catch_2
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCameraDevice.get().lock() or reconnect() RuntimeException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 433
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 434
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method public static resume()V
    .locals 3

    .prologue
    .line 371
    const-string v1, "CameraApp"

    const-string v2, "Camcorder resume()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    const-string v1, "CameraApp"

    const-string v2, "Model not supported pause and resume."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 377
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-eqz v1, :cond_1

    .line 379
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "##### video recording resume - mMediaRecorder.resume()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v1}, Lcom/lge/media/MediaRecorderEx;->resume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "Camcorder resume()-end."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    .line 382
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 383
    const-string v1, "CameraApp"

    const-string v2, "error recording pause"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v1, :cond_2

    .line 385
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V

    .line 387
    :cond_2
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v1}, Lcom/lge/media/MediaRecorderEx;->release()V

    goto :goto_1
.end method

.method public static setAudiozoom(II)V
    .locals 1
    .param p0, "zoomAngle"    # I
    .param p1, "mode"    # I

    .prologue
    .line 467
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v0, :cond_0

    .line 468
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0, p0, p1}, Lcom/lge/media/MediaRecorderEx;->setRecordZoomEnable(II)V

    .line 470
    :cond_0
    return-void
.end method

.method public static setAudiozoomException()V
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v0, :cond_0

    .line 480
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Lcom/lge/media/MediaRecorderEx;->setAudioZoomExceptionCase()V

    .line 482
    :cond_0
    return-void
.end method

.method public static setAudiozoommetadata()V
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Lcom/lge/media/MediaRecorderEx;->setAudioZooming()V

    .line 464
    :cond_0
    return-void
.end method

.method public static setErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)Z
    .locals 1
    .param p0, "l"    # Landroid/media/MediaRecorder$OnErrorListener;

    .prologue
    .line 59
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0, p0}, Lcom/lge/media/MediaRecorderEx;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)Z
    .locals 1
    .param p0, "l"    # Landroid/media/MediaRecorder$OnInfoListener;

    .prologue
    .line 68
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0, p0}, Lcom/lge/media/MediaRecorderEx;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMaxDuration(Z)V
    .locals 1
    .param p0, "isMMS"    # Z

    .prologue
    .line 114
    if-eqz p0, :cond_0

    sget v0, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    :goto_0
    sput v0, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 115
    return-void

    .line 114
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setMaxFileSize(JJI)Z
    .locals 6
    .param p0, "maxFileSize"    # J
    .param p2, "freeSpace"    # J
    .param p4, "storage"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    sput-wide p0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 87
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 88
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sub-long v0, p2, v0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 90
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMediaRecoderLimitSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMediaRecoderLimitSize()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 94
    :cond_0
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 95
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 97
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " freeSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    .line 104
    :cond_1
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 105
    sput-wide p2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 108
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " freeSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setOrientationHint(I)V
    .locals 0
    .param p0, "degree"    # I

    .prologue
    .line 446
    if-gez p0, :cond_0

    .line 447
    const/4 p0, 0x0

    .line 449
    :cond_0
    sput p0, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    .line 450
    return-void
.end method

.method public static setVideoSize(I)Z
    .locals 1
    .param p0, "purpose"    # I

    .prologue
    .line 78
    sput p0, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public static start()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 310
    const-string v1, "CameraApp"

    const-string v2, "Camcorder start()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "##### video recording start - mMediaRecorder.start()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v1}, Lcom/lge/media/MediaRecorderEx;->start()V

    .line 316
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 327
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder start()-end, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    return v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 319
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error recording start : +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sput-boolean v4, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    goto :goto_0

    .line 321
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    const-string v1, "CameraApp"

    const-string v2, "error recording start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sput-boolean v4, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    goto :goto_0
.end method

.method public static stop()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    const-string v0, "CameraApp"

    const-string v3, "Camcorder stop()-start"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "CameraApp"

    const-string v3, "##### video recording stop - mMediaRecorder.stop()"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0, v4}, Lcom/lge/media/MediaRecorderEx;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 336
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0, v4}, Lcom/lge/media/MediaRecorderEx;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 337
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Lcom/lge/media/MediaRecorderEx;->stop()V

    .line 338
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    .line 339
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Lcom/lge/media/MediaRecorderEx;->reset()V

    .line 340
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 342
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V

    .line 344
    :cond_0
    const-string v3, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder stop()-end, return "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 344
    goto :goto_0

    :cond_2
    move v1, v2

    .line 345
    goto :goto_1
.end method

.method public static updateAudiozoom(I)V
    .locals 1
    .param p0, "zoomAngle"    # I

    .prologue
    .line 473
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0, p0}, Lcom/lge/media/MediaRecorderEx;->setRecordAngle(I)V

    .line 476
    :cond_0
    return-void
.end method
