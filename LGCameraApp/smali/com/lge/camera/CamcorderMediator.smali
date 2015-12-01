.class public Lcom/lge/camera/CamcorderMediator;
.super Lcom/lge/camera/Mediator;
.source "CamcorderMediator.java"

# interfaces
.implements Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;


# instance fields
.field private final HeatDelay1:J

.field private final HeatDelay2:J

.field protected mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

.field private mBackKeyRecStop:Z

.field private mConnectHeadset:I

.field public mHealDelayCount:I

.field private mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

.field private mMaxVideoDurationInMs:I

.field private mPrevieousVideoAutoReviewValue:Ljava/lang/String;

.field private mPreviousRecordMode:Ljava/lang/String;

.field protected mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

.field private mRequestedSizeLimit:J

.field private mediaUsbConnected:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Camcorder;)V
    .locals 3
    .param p1, "activity"    # Lcom/lge/camera/Camcorder;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/lge/camera/Mediator;-><init>(Lcom/lge/camera/Mediator$ActivityBridge;)V

    .line 66
    iput-boolean v2, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    .line 68
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->HeatDelay1:J

    .line 69
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->HeatDelay2:J

    .line 70
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    .line 71
    const-string v0, "recordmode_normal"

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviousRecordMode:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 264
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    .line 827
    iput-boolean v2, p0, Lcom/lge/camera/CamcorderMediator;->mediaUsbConnected:Z

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->setApplicationMode(I)V

    .line 79
    return-void
.end method

.method private isAudiozoomExceptionOrientation(Z)Z
    .locals 4
    .param p1, "checkRotation"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1270
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAudiozoomExceptionOrientation : video state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v1

    if-nez v1, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return v0

    .line 1275
    :cond_1
    if-eqz p1, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getOrientationDegree()I

    move-result v2

    const/16 v3, 0x5a

    invoke-static {v1, v2, v3}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getOrientationDegree()I

    move-result v2

    const/16 v3, 0x10e

    invoke-static {v1, v2, v3}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 8
    .param p1, "pg"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 335
    if-eqz p1, :cond_3

    .line 336
    const-string v6, "key_preview_size_on_device"

    invoke-virtual {p1, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 337
    .local v4, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_3

    .line 338
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 339
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 341
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 342
    .local v5, "size":Ljava/lang/String;
    const/4 v3, 0x0

    .line 343
    .local v3, "isMMSSize":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 344
    aget-object v6, v1, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 346
    if-eqz v3, :cond_0

    .line 347
    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0a0166

    invoke-virtual {p0, v7}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 349
    const v6, 0x7f0a015d

    invoke-virtual {p0, v6}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 343
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_1
    aget-object v6, v0, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0a0167

    invoke-virtual {p0, v7}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 352
    const v6, 0x7f0a015f

    invoke-virtual {p0, v6}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 359
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "entryValues":[Ljava/lang/CharSequence;
    .end local v2    # "i":I
    .end local v3    # "isMMSSize":Z
    .end local v4    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v5    # "size":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public changeLiveSnapshotMaxFileSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camcorder/RecordingController;->changeMaxFileSize(J)V

    .line 1390
    :cond_0
    return-void
.end method

.method public checkCamcorderStop(IZ)Z
    .locals 5
    .param p1, "repeatCount"    # I
    .param p2, "useBackKey"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 948
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v2

    iget-object v0, v2, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 950
    .local v0, "effectsRecorder":Lcom/lge/camera/EffectsRecorder;
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->isRecording()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/lge/camera/EffectsRecorder;->getState()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 955
    :cond_1
    if-nez p1, :cond_2

    .line 956
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordedLengthTooShort()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 957
    const-string v2, "CameraApp"

    const-string v3, "Ignore stop recording request. It\'s too short."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .end local v0    # "effectsRecorder":Lcom/lge/camera/EffectsRecorder;
    :cond_2
    :goto_0
    return v1

    .line 959
    .restart local v0    # "effectsRecorder":Lcom/lge/camera/EffectsRecorder;
    :cond_3
    const-string v2, "com.lge.camera.command.StopRecording"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 964
    .end local v0    # "effectsRecorder":Lcom/lge/camera/EffectsRecorder;
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v2

    if-eqz v2, :cond_5

    .line 965
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoRecorder is not in idle state. Ignore key:useBackKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", video state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkFaceDetectionNoUI()Z
    .locals 1

    .prologue
    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method public checkShotModeForZoomInOut()Z
    .locals 2

    .prologue
    .line 1334
    const-string v1, "key_video_record_mode"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "videoRecordMode":Ljava/lang/String;
    const-string v1, "recordmode_live_effect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "recordmode_dual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "recordmode_smart_zoom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1338
    :cond_0
    const/4 v1, 0x0

    .line 1340
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkSlowMotionMode()Z
    .locals 4

    .prologue
    .line 1317
    const-string v3, "key_preview_size_on_device"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CamcorderMediator;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1318
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    const-string v2, "off"

    .line 1320
    .local v2, "sVideoFps":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1321
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    .line 1322
    const-string v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1323
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1324
    .local v0, "iVideoFps":I
    const/16 v3, 0x78

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->checkShotModeForZoomInOut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1325
    const/4 v3, 0x1

    .line 1329
    .end local v0    # "iVideoFps":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public checkSupportVideoSize(Landroid/net/Uri;)Z
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 476
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "resolution"

    aput-object v0, v2, v11

    .line 477
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 478
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v9, ""

    .line 479
    .local v9, "resolution":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 481
    if-nez v6, :cond_0

    .line 482
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cursor is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 487
    if-nez v9, :cond_1

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 505
    :goto_0
    return v0

    .line 491
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x78

    :try_start_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 492
    .local v10, "w":I
    const/16 v0, 0x78

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 494
    .local v8, "h":I
    const/16 v0, 0x500

    if-gt v10, v0, :cond_2

    const/16 v0, 0x2d0

    if-le v8, v0, :cond_3

    .line 503
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    .line 497
    .end local v8    # "h":I
    .end local v10    # "w":I
    :catch_0
    move-exception v7

    .line 498
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v1, "Exception "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    move v0, v12

    .line 505
    goto :goto_0

    .line 501
    :catch_1
    move-exception v0

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public checkUpdateThumbnail()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1099
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1104
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton() return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 125
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 128
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 131
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 134
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/RecordingController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    .line 137
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    .line 140
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    .line 143
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-super {p0}, Lcom/lge/camera/Mediator;->createControllers()V

    .line 146
    return-void
.end method

.method protected createPreviewController()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 173
    return-void
.end method

.method public doAttach()V
    .locals 6

    .prologue
    .line 370
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v1, "resultIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 380
    .local v2, "savedVideoUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v3}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewUri()Landroid/net/Uri;

    move-result-object v2

    .line 381
    iput-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mSavedVideoUri:Landroid/net/Uri;

    .line 382
    if-eqz v2, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->hasSaveURI()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->doAttachSaveUri()V

    .line 385
    const/4 v0, -0x1

    .line 397
    .local v0, "resultCode":I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/lge/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 398
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 399
    return-void

    .line 387
    .end local v0    # "resultCode":I
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attached file uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v0, -0x1

    .line 391
    .restart local v0    # "resultCode":I
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 394
    .end local v0    # "resultCode":I
    :cond_1
    const-string v3, "CameraApp"

    const-string v4, "attached file uri is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method public doCamcorderContinuousFocusCallback(Z)V
    .locals 7
    .param p1, "focusedState"    # Z

    .prologue
    const/16 v3, 0xf0

    .line 921
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### onCotinuousFocus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    if-eqz p1, :cond_2

    .line 933
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->setFocusState(I)V

    .line 937
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->updateFocusStateIndicator()V

    .line 939
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 940
    .local v6, "rand":Ljava/util/Random;
    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x280

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/CamcorderMediator;->startObjectTrackingFocus(IIIII)V

    goto :goto_0

    .line 935
    .end local v6    # "rand":Ljava/util/Random;
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->setFocusState(I)V

    goto :goto_1
.end method

.method public doTouchbyAF(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 814
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mApplicationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    if-eqz v0, :cond_2

    .line 815
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->recordingControllerShow()V

    .line 817
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mCameraMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->isSmartZoomFocusViewShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/FocusController;->startFocusByTouchPress(II)V

    .line 825
    :cond_2
    return-void
.end method

.method public finishLiveSnapshotSaver()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->finish()V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    .line 652
    :cond_0
    return-void
.end method

.method public getAudiozoomController()Lcom/lge/camera/controller/camcorder/AudiozoomController;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    return-object v0
.end method

.method public getAudiozoomStart()Z
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getAudiozoomStart()Z

    move-result v0

    return v0
.end method

.method public getAudiozoomStartInRecording()Z
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getAudioZoomStartInRecording()Z

    move-result v0

    return v0
.end method

.method public getAudiozoomvalue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getmAudiozoomvalue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackKeyRecStop()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    return v0
.end method

.method public getEffectRecorderPausing()Z
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEffectRecorderPausing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    return-object v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    return-object v0
.end method

.method public getHeadsetstate()I
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    return v0
.end method

.method public bridge synthetic getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    return-object v0
.end method

.method public getIsFileSizeLimitReached()Z
    .locals 1

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getIsFileSizeLimitReached()Z

    move-result v0

    return v0
.end method

.method public getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-nez v0, :cond_0

    .line 510
    const/4 v10, 0x0

    .line 548
    :goto_0
    return-object v10

    .line 513
    :cond_0
    const-wide/16 v2, -0x1

    .line 514
    .local v2, "id":J
    if-eqz p1, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 516
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB start id is %d, and uri is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 522
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB end: uri not valid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v10, 0x0

    goto :goto_0

    .line 525
    :cond_2
    const/4 v10, 0x0

    .line 527
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 530
    .local v8, "filePath":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 531
    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 547
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB stop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 538
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v7

    .line 540
    .local v7, "degree":I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 542
    .local v9, "thumb":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v7, v1}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 543
    goto :goto_1

    .line 544
    .end local v7    # "degree":I
    .end local v9    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1
.end method

.method public getMaxVideoDurationInMs()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    return v0
.end method

.method public getMediaUSBConnectAtStartRecord()Z
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/lge/camera/CamcorderMediator;->mediaUsbConnected:Z

    return v0
.end method

.method public bridge synthetic getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    return-object v0
.end method

.method public getPreviousRecordModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviousRecordMode:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->getCount()I

    move-result v0

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    return-object v0
.end method

.method public getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    return-object v0
.end method

.method public getRecordingDurationLimit()J
    .locals 2

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingSizeLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestedVideoSizeLimit()J
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    return-wide v0
.end method

.method public getSelectedQuickFunctionMenuKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->getSelectedMenuKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShotModeMenuController()Lcom/lge/camera/controller/ShotModeMenuController;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getShotModeMenuController()Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    move-result-object v0

    return-object v0
.end method

.method public getShotModeMenuController()Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartrecordingdegree()I
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getStartrecordingdegree()I

    move-result v0

    return v0
.end method

.method public getVideoFile()Lcom/lge/camera/VideoFile;
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFileSize()J
    .locals 2

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasSaveURI()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideAudiozoomready()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1226
    const-string v0, "CameraApp"

    const-string v1, "===> Hide Audiozoom ready image"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->removeMessages(I)V

    .line 1231
    :cond_0
    return-void
.end method

.method public hideOsd()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 163
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->hideFocus()Z

    .line 164
    return-void
.end method

.method public hideOsdByForce()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    .line 168
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->hideFocus()Z

    .line 169
    return-void
.end method

.method public hideRecoridngStopButton()V
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->hideRecoridngStopButton()V

    .line 569
    :cond_0
    return-void
.end method

.method public initControllers()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/lge/camera/Mediator;->initControllers()V

    .line 151
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->initController()V

    .line 152
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->initController()V

    .line 153
    return-void
.end method

.method public isAttachIntent()Z
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isAttachMode()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    .line 403
    .local v2, "pg":Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v4

    .line 406
    :cond_1
    const-string v5, "key_preview_size_on_device"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 407
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "videoSize":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutionsLength(Landroid/content/ContentResolver;)I

    move-result v5

    if-nez v5, :cond_3

    .line 413
    const/4 v0, 0x0

    .line 423
    .local v0, "isMmsVideoSetting":Z
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "isMmsVideoSetting":Z
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isLiveEffectActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 416
    const/4 v0, 0x0

    .restart local v0    # "isMmsVideoSetting":Z
    goto :goto_1

    .line 418
    .end local v0    # "isMmsVideoSetting":Z
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "isMmsVideoSetting":Z
    goto :goto_1
.end method

.method public isAudiozoom_ExceptionCase(Z)Z
    .locals 7
    .param p1, "checkRotation"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1241
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return v4

    .line 1244
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getHeadsetstate()I

    move-result v1

    .line 1245
    .local v1, "headsetState":I
    iget-object v5, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->getStartrecordingdegree()I

    move-result v3

    .line 1246
    .local v3, "nStartdegree":I
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 1248
    .local v2, "isMMS":Z
    const-string v5, "key_preview_size_on_device"

    invoke-virtual {p0, v5}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "currentVideoSize":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isLiveEffectActive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isDualRecordingActive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isSmartZoomRecordingActive()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "176x144"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "320x240"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/lge/camera/CamcorderMediator;->isAudiozoomExceptionOrientation(Z)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_2

    const/16 v5, 0x10e

    if-eq v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->checkSlowMotionMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1261
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    goto :goto_0

    .line 1266
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isAvailableResumeVideo()Z
    .locals 1

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isAvailableResumeVideo()Z

    move-result v0

    return v0
.end method

.method public isMMSIntent()Z
    .locals 6

    .prologue
    .line 432
    const/4 v3, 0x0

    .line 433
    .local v3, "isMMScalling":Z
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 434
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "callingPackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 437
    const-string v4, "MMSAttach"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 438
    const/4 v3, 0x1

    .line 440
    :cond_0
    const-string v4, "intentFrom"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "intentFrom":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 442
    const-string v4, "MMSAttach"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    const/4 v3, 0x1

    .line 450
    .end local v2    # "intentFrom":Ljava/lang/String;
    :cond_1
    const-string v4, "com.android.mms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    const/4 v3, 0x1

    .line 453
    :cond_2
    return v3
.end method

.method public isMMSRecording()Z
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

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

.method public isPlayRingMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCallPlayRingMode? = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v1, "playRing"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "playRing"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 459
    goto :goto_0

    :cond_1
    move v2, v3

    .line 460
    goto :goto_1
.end method

.method public isRecordedLengthTooShort()Z
    .locals 1

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordedLengthTooShort()Z

    move-result v0

    return v0
.end method

.method public isRecordingControllerInit()Z
    .locals 1

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isRecordingControllerInit()Z

    move-result v0

    return v0
.end method

.method public isStopRecordingByMountedAction()Z
    .locals 1

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isStopRecordingByMountedAction()Z

    move-result v0

    return v0
.end method

.method public needProgressBar()Z
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->createControllers()V

    .line 178
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onCreate()V

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iput-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    .line 257
    iput-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    .line 259
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onDestroy()V

    .line 260
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 231
    const-string v0, "CameraApp"

    const-string v1, "onPause()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/PreviewController;->setEffectRecorderPausing(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->onPause()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->onPause()V

    .line 240
    :cond_1
    const-string v0, "key_light"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CamcorderMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraId()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->setBackgroundColorBlack()V

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->finishLiveSnapshotSaver()V

    .line 246
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopReceivingLocationUpdates()V

    .line 247
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopHeatingwarning()V

    .line 249
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onPause()V

    .line 250
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/lge/camera/util/ImageSavers;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/lge/camera/util/ImageSavers;-><init>(Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;I)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    .line 184
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onResume()V

    .line 186
    const-string v0, "key_light"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CamcorderMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->setBackgroundColorWhite()V

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    :cond_1
    const-string v0, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 227
    :goto_1
    return-void

    .line 188
    :cond_2
    const-string v0, "key_light"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CamcorderMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->setBackgroundColorBlack()V

    goto :goto_0

    .line 195
    :cond_3
    const-string v0, "off"

    const-string v1, "key_video_auto_review"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "not found"

    const-string v1, "key_video_auto_review"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    :cond_4
    const-string v0, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_5
    const-string v0, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->doAttach()V

    .line 207
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    goto :goto_1

    .line 211
    :cond_7
    new-instance v0, Lcom/lge/camera/CamcorderMediator$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/CamcorderMediator$1;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public pauseRecording()V
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->pauseRecording()V

    .line 1010
    return-void
.end method

.method public postviewRequestInit()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 910
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 914
    const/4 v0, 0x1

    .line 916
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readVideoIntentExtras()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 271
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 273
    .local v0, "extraVideoQuality":I
    const-string v4, "CameraApp"

    const-string v5, "extra video quality request: %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v0    # "extraVideoQuality":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 277
    .local v1, "getExBundle":Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 278
    const-string v4, "CameraApp"

    const-string v5, "intent.getExtras() is null. assume no limit."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-wide v8, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 287
    :goto_0
    const-string v4, "CameraApp"

    const-string v5, "reduced safe filesize limit: %d"

    new-array v6, v11, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 293
    .local v3, "seconds":I
    const-string v4, "CameraApp"

    const-string v5, "duration limit: %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v4, "kr.co.tictocplus"

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    const/4 v3, 0x0

    .line 297
    :cond_1
    mul-int/lit16 v4, v3, 0x3e8

    iput v4, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    .line 304
    .end local v3    # "seconds":I
    :cond_2
    return-void

    .line 281
    :cond_3
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 282
    const-string v4, "CameraApp"

    const-string v5, "requested file size limit: %d"

    new-array v6, v11, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v4, "output"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/lge/camera/CamcorderMediator;->mSaveUri:Landroid/net/Uri;

    .line 285
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requested file uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/CamcorderMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public recordingControllerHide()V
    .locals 1

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hide()V

    .line 985
    return-void
.end method

.method public recordingControllerShow()V
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 980
    return-void
.end method

.method public restoreAutoReviewValue()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1361
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore previous AutoReviewValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_video_auto_review"

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1373
    :cond_0
    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->resumeRecording()V

    .line 1015
    return-void
.end method

.method public resumeUpdateReordingTime()V
    .locals 1

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->resumeUpdateReordingTime()V

    .line 1040
    return-void
.end method

.method public saveAndAddImageForImageSavers(Lcom/lge/camera/util/SaveRequest;)V
    .locals 24
    .param p1, "sr"    # Lcom/lge/camera/util/SaveRequest;

    .prologue
    .line 694
    const/16 v20, 0x0

    .line 695
    .local v20, "ret":Z
    const-string v18, ""

    .line 696
    .local v18, "fileName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 699
    .local v19, "path":Ljava/lang/String;
    :try_start_0
    const-string v4, "CameraApp"

    const-string v5, "imageHandler.addImage-start "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v19

    .line 703
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v4

    const-string v5, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_scene_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentStorage()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/lge/camera/util/SaveRequest;->isBurstFirst:Z

    invoke-virtual/range {v4 .. v11}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 714
    .end local v18    # "fileName":Ljava/lang/String;
    .local v7, "fileName":Ljava/lang/String;
    :try_start_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "savePicture >  sr.fileName :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    if-nez v7, :cond_4

    .line 717
    const-string v4, "CameraApp"

    const-string v5, "error get file name!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 718
    const/16 v20, 0x0

    .line 741
    :cond_0
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imageHandler.addImage-end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    if-eqz v20, :cond_3

    .line 744
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/lge/camera/CamcorderMediator;->mSavedFileName:Ljava/lang/String;

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 746
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 749
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 752
    :cond_2
    new-instance v21, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v21, "savedFile":Ljava/io/File;
    if-eqz v21, :cond_3

    .line 754
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 755
    .local v22, "savedFileSize":J
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeMaxFileSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CamcorderMediator;->changeLiveSnapshotMaxFileSize(J)V

    .line 760
    .end local v21    # "savedFile":Ljava/io/File;
    .end local v22    # "savedFileSize":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/lge/camera/util/SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v8}, Lcom/lge/camera/controller/PreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 763
    return-void

    .line 720
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/CamcorderMediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/lge/camera/util/SaveRequest;->dateTaken:J

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ".jpg"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lge/camera/util/SaveRequest;->data:[B

    move-object/from16 v0, p1

    iget v15, v0, Lcom/lge/camera/util/SaveRequest;->degree:I

    const-string v4, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "shotmode_full_continuous"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v11, v19

    invoke-virtual/range {v5 .. v16}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BIZ)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_0

    .line 734
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 737
    .end local v7    # "fileName":Ljava/lang/String;
    .restart local v18    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v7, v18

    .line 738
    .end local v18    # "fileName":Ljava/lang/String;
    .restart local v7    # "fileName":Ljava/lang/String;
    .local v17, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v4, "CameraApp"

    const-string v5, "Exception while compressing liveSnapshot image."

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 737
    .end local v17    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v17

    goto :goto_1
.end method

.method public saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z
    .locals 6
    .param p1, "jpegData"    # [B
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "degree"    # I
    .param p4, "isSetLastThumb"    # Z
    .param p5, "isBurstFirst"    # Z

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/ImageSavers;->addImage([BLandroid/graphics/Bitmap;IZZ)Z

    move-result v3

    .line 668
    :goto_0
    return v3

    .line 667
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "ImageSave is null!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public savePicture([BLandroid/graphics/Bitmap;)Z
    .locals 21
    .param p1, "data"    # [B
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 574
    const/16 v20, 0x0

    .line 575
    .local v20, "ret":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 576
    .local v16, "dateTaken":J
    const-string v2, "CameraApp"

    const-string v3, "Camcorder savePicture()-start "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/16 v19, 0x0

    .line 578
    .local v19, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/CamcorderMediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v19

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getDeviceDegree()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/camera/CamcorderMediator;->mImageRotationDegree:I

    .line 582
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v15

    .line 583
    .local v15, "CarrierCode":I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder savePicture()-CarrierCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v5, 0x0

    .line 587
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_scene_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentStorage()I

    move-result v5

    .end local v5    # "fileName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 598
    .restart local v5    # "fileName":Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePicture >  fileName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    if-nez v5, :cond_0

    .line 601
    const-string v2, "CameraApp"

    const-string v3, "error get file name!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const/4 v2, 0x0

    .line 644
    :goto_0
    return v2

    .line 606
    :cond_0
    :try_start_0
    const-string v2, "CameraApp"

    const-string v3, "imageHandler.addImage-start "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CamcorderMediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".jpg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/CamcorderMediator;->mImageRotationDegree:I

    const-string v2, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "shotmode_full_continuous"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-wide/from16 v6, v16

    move-object/from16 v9, v19

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    invoke-virtual/range {v3 .. v14}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BIZ)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 623
    const/16 v20, 0x1

    .line 629
    :cond_1
    :goto_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageHandler.addImage-end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    if-eqz v20, :cond_3

    .line 632
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/camera/CamcorderMediator;->mSavedFileName:Ljava/lang/String;

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 634
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 637
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/CamcorderMediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 641
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 643
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder savePicture()-end, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    .line 644
    goto/16 :goto_0

    .line 625
    :catch_0
    move-exception v18

    .line 626
    .local v18, "ex":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Exception while compressing liveSnapshot image."

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public setAudioZoomGuideViewLayout(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "marginLeft"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudioZoomGuideViewLayout(III)V

    .line 1223
    :cond_0
    return-void
.end method

.method public setAudiozoomStart(Z)V
    .locals 1
    .param p1, "mAudiozoomStart"    # Z

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudiozoomStart(Z)V

    .line 1128
    return-void
.end method

.method public setAudiozoomStartInRecording(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudioZoomStartInRecording(Z)V

    .line 1138
    return-void
.end method

.method public setAudiozoombuttonstate()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setAudiozoombuttonstate()V

    .line 1201
    return-void
.end method

.method public setAudiozoomvalue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setmAudiozoomvalue(Ljava/lang/String;)V

    .line 1217
    return-void
.end method

.method public setBackKeyRecStop(Z)V
    .locals 0
    .param p1, "con"    # Z

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    .line 469
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camcorder/RecordingController;->setEndTime(J)V

    .line 1035
    return-void
.end method

.method public setForced_audiozoom(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setForced_audiozoom(Z)V

    .line 1238
    :cond_0
    return-void
.end method

.method public setHeadsetstate(I)V
    .locals 3
    .param p1, "Connect"    # I

    .prologue
    const/4 v2, 0x2

    .line 834
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    :goto_0
    return-void

    .line 837
    :cond_0
    iput p1, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    .line 838
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    if-ne v0, v2, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 843
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mConnectHeadset:I

    if-ne v0, v2, :cond_2

    .line 844
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopAudiozoom()V

    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->setAudiozoombuttonstate()V

    goto :goto_0
.end method

.method public setIsFileSizeLimitReached(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->setIsFileSizeLimitReached(Z)V

    .line 1055
    return-void
.end method

.method public setPreviousAutoReviewValue()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1345
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    const-string v0, "key_video_auto_review"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    .line 1350
    const-string v0, "key_video_auto_review"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/CamcorderMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1351
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Because of guest mode and gallery not exist, so previous AutoReview value is saved. Saved value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mPrevieousVideoAutoReviewValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_0
    return-void
.end method

.method public setPreviousRecordModeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "strRecordMode"    # Ljava/lang/String;

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator;->mPreviousRecordMode:Ljava/lang/String;

    .line 1118
    return-void
.end method

.method public setRecIndicatorLayout(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftMargin"    # I

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecIndicatorLayout(III)V

    .line 1085
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
    .line 683
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lge/camera/util/SaveRequest;->exifData:[B

    .line 684
    iput-object p2, p1, Lcom/lge/camera/util/SaveRequest;->data:[B

    .line 685
    iput-object p3, p1, Lcom/lge/camera/util/SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/lge/camera/util/SaveRequest;->dateTaken:J

    .line 687
    iput p4, p1, Lcom/lge/camera/util/SaveRequest;->degree:I

    .line 688
    iput-boolean p5, p1, Lcom/lge/camera/util/SaveRequest;->isSetLastThumb:Z

    .line 689
    iput-boolean p6, p1, Lcom/lge/camera/util/SaveRequest;->isBurstFirst:Z

    .line 690
    return-void
.end method

.method public setScaleWidthHeight(F)V
    .locals 1
    .param p1, "scaleWidthHeight"    # F

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->setScaleWidthHeight(F)V

    .line 990
    return-void
.end method

.method public setStartrecordingdegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->setStartrecordingdegree(I)V

    .line 1205
    return-void
.end method

.method public setVideoFlash(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1289
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v2, "key_flash"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    .local v0, "flashMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isFinishingActivity()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1294
    if-eqz p1, :cond_5

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1296
    :cond_2
    const-string v2, "off"

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1297
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedVideoFlashAuto()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1299
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->isLowLuminance(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1300
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1307
    :goto_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 1302
    :cond_3
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1305
    :cond_4
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1310
    :cond_5
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public showControllerForHideSettingMenu(ZZ)V
    .locals 3
    .param p1, "checkShowAll"    # Z
    .param p2, "showAll"    # Z

    .prologue
    .line 888
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v1, :cond_4

    .line 889
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->recordingControllerShow()V

    .line 891
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->showFocus()Z

    .line 894
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->needProgressBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 895
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->recordingControllerShow()V

    .line 898
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isDualRecordingActive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isDualCameraActive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 899
    :cond_3
    const-string v1, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 906
    :cond_4
    :goto_0
    return-void

    .line 900
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isLiveEffectActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 901
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 902
    .local v0, "isOpen":Landroid/os/Bundle;
    const-string v1, "menu_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 903
    const-string v1, "com.lge.camera.command.ShowLiveEffectSubMenuDrawer"

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showHeatingwarning()V
    .locals 6

    .prologue
    .line 800
    const-string v2, "CameraApp"

    const-string v3, "===> ShowHeatingwarning"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getIsCharging()Z

    move-result v2

    if-nez v2, :cond_0

    .line 811
    :goto_0
    return-void

    .line 805
    :cond_0
    const v2, 0x7f0a026f

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "notifyMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V

    .line 808
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 809
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 810
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v2, v0}, Lcom/lge/camera/util/MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public showOsd()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->showQuickFunctionController()V

    .line 157
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->showIndicatorController()V

    .line 158
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->showFocus()Z

    .line 159
    return-void
.end method

.method public showRecoridngStopButton()V
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 555
    :cond_0
    new-instance v0, Lcom/lge/camera/CamcorderMediator$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/CamcorderMediator$2;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 563
    :cond_1
    return-void
.end method

.method public showRequestedSizeLimit()V
    .locals 10

    .prologue
    const v9, 0x7f0a024e

    const/16 v8, 0x3c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    const-string v1, ""

    .line 312
    .local v1, "notifyMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-wide v2, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 315
    invoke-virtual {p0, v9}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->toastLong(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not provided this language in AT&T :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, v9}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 327
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->toastLong(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    .line 329
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not provided this language in AT&T :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAudioZoomContollerRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomController()Lcom/lge/camera/controller/camcorder/AudiozoomController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->startRotation(I)V

    .line 1025
    return-void
.end method

.method public startAudiozoom()V
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->startAudiozoom()V

    .line 1142
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/VideoFile;->setAudiozoomcontent(I)V

    .line 1143
    return-void
.end method

.method public startHeatingwarning()V
    .locals 6

    .prologue
    .line 767
    const-string v3, "CameraApp"

    const-string v4, "===> StartHeatingwarning"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 771
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v2, Landroid/os/Message;->what:I

    .line 773
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 774
    const-wide/32 v0, 0x2bf20

    .line 782
    .local v0, "delay":J
    :goto_0
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    .line 783
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> delay :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v3, p0, Lcom/lge/camera/CamcorderMediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/lge/camera/util/MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 785
    return-void

    .line 775
    .end local v0    # "delay":J
    :cond_0
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    if-nez v3, :cond_1

    .line 776
    const-wide/32 v0, 0x927c0

    .restart local v0    # "delay":J
    goto :goto_0

    .line 778
    .end local v0    # "delay":J
    :cond_1
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 779
    const-wide/16 v0, 0x0

    .restart local v0    # "delay":J
    goto :goto_0
.end method

.method public startRecording()V
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRecording()V

    .line 995
    return-void
.end method

.method public startRecordingControllerRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRotation(I)V

    .line 1020
    return-void
.end method

.method public stopAudiozoom()V
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->stopAudiozoom()V

    .line 1197
    return-void
.end method

.method public stopHeatingwarning()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 789
    const-string v0, "CameraApp"

    const-string v1, "===> StopHeatingwarning"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, v2}, Lcom/lge/camera/util/MainHandler;->removeMessages(I)V

    .line 793
    :cond_0
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    if-eqz v0, :cond_1

    .line 794
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/CamcorderMediator;->mHealDelayCount:I

    .line 796
    :cond_1
    return-void
.end method

.method public stopRecording(Z)V
    .locals 1
    .param p1, "isFromMountedAction"    # Z

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecording(Z)V

    .line 1005
    return-void
.end method

.method public stopRecordingByPausing()V
    .locals 1

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecordingByPausing()V

    .line 1090
    return-void
.end method

.method public switchCameraId(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    const/4 v5, 0x0

    .line 856
    iget-boolean v2, p0, Lcom/lge/camera/CamcorderMediator;->mPausing:Z

    if-eqz v2, :cond_0

    .line 884
    :goto_0
    return-void

    .line 859
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCameraId()-start, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0, p1}, Lcom/lge/camera/CamcorderMediator;->setCameraId(I)V

    .line 862
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 864
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 866
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v1

    .line 867
    .local v1, "sPreview":Lcom/lge/camera/components/CameraPreview;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 869
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopPreview()V

    .line 870
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->closeCamera()V

    .line 872
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v2}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 876
    :cond_1
    invoke-virtual {p0, v5}, Lcom/lge/camera/CamcorderMediator;->enableInput(Z)V

    .line 880
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 881
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 883
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchCameraId()-end, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAudiozoom(ZI)V
    .locals 8
    .param p1, "updateangle"    # Z
    .param p2, "zoomvalue"    # I

    .prologue
    const/16 v4, 0xb4

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 1146
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    if-nez p1, :cond_4

    .line 1150
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getOrientationDegree()I

    move-result v6

    .line 1151
    .local v6, "degree":I
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->setAudiozoombuttonstate()V

    .line 1152
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x5a

    invoke-static {v0, v6, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x10e

    invoke-static {v0, v6, v2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1154
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1155
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 1158
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    invoke-virtual {v0, v7, v1, v3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuEnable(IZZ)V

    .line 1159
    const v0, 0x7f020465

    invoke-virtual {p0, v7, v0}, Lcom/lge/camera/CamcorderMediator;->changeButtonResource(II)V

    .line 1162
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1163
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/ZoomController;->hideSettingZoomControl(Z)V

    .line 1164
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopAudiozoom()V

    .line 1165
    const v0, 0x7f0a033c

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->toast(Ljava/lang/String;)V

    .line 1190
    .end local v6    # "degree":I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getHeadsetstate()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mAudiozoomController:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->updateAudiozoomvalue(ZI)V

    goto :goto_0

    .line 1168
    .restart local v6    # "degree":I
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getAudiozoomStartInRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getStartrecordingdegree()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6, v1}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getStartrecordingdegree()I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v6, v4}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1175
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1176
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 1179
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 1181
    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/CamcorderMediator;->startObjectTrackingFocus(IIIII)V

    .line 1184
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->startAudiozoom()V

    .line 1185
    const v0, 0x7f020466

    invoke-virtual {p0, v7, v0}, Lcom/lge/camera/CamcorderMediator;->changeButtonResource(II)V

    goto :goto_1
.end method

.method public waitSaveImageThreadDone()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/util/ImageSavers;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageSavers;->waitDone()V

    .line 658
    :cond_0
    return-void
.end method
