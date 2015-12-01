.class public Lcom/lge/camera/EffectsRecorder;
.super Lcom/lge/camera/EffectsBase;
.source "EffectsRecorder.java"


# static fields
.field private static final PAUSE_AND_RESUME_INPUT_NAME:Ljava/lang/String; = "pauseNresumeRecording"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inf"    # Lcom/lge/camera/EffectsBase$EffectBaseInterface;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/EffectsBase;-><init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V

    .line 36
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsRecorder created ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public pauseAndResumeRecording(Landroid/filterfw/core/Filter;Z)V
    .locals 3
    .param p1, "recorder"    # Landroid/filterfw/core/Filter;
    .param p2, "pause"    # Z

    .prologue
    .line 143
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    const-string v1, "recorder"

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object p1

    .line 149
    :cond_0
    if-eqz p1, :cond_2

    .line 150
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " #####  recorder.setInputValue pauseNresume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "pauseNresumeRecording"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "recorder is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized startRecording(Z)V
    .locals 10
    .param p1, "beUnmute"    # Z

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 40
    monitor-enter p0

    :try_start_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting recording ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-eq v5, v8, :cond_0

    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-ne v5, v9, :cond_1

    .line 43
    :cond_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRecording cannot be called while "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v5, :cond_2

    .line 48
    const-string v4, "CameraApp"

    const-string v5, "No output file name or descriptor provided!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 53
    :cond_2
    :try_start_2
    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-nez v5, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/EffectsRecorder;->startPreview()V

    .line 57
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v5

    const-string v6, "recorder"

    invoke-virtual {v5, v6}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 58
    .local v1, "recorder":Landroid/filterfw/core/Filter;
    if-eqz v1, :cond_6

    .line 59
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v5, :cond_7

    .line 60
    const-string v5, "outputFileDescriptor"

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :goto_1
    if-eqz p1, :cond_8

    .line 68
    const-string v5, "audioSource"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :goto_2
    const-string v5, "recordingProfile"

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v5, "orientationHint"

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-wide v6, p0, Lcom/lge/camera/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_9

    .line 86
    .local v0, "captureTimeLapse":Z
    :goto_3
    if-eqz v0, :cond_a

    .line 87
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lcom/lge/camera/EffectsRecorder;->mCaptureRate:D

    div-double v2, v4, v6

    .line 88
    .local v2, "timeBetweenFrameCapture":D
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v2

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .end local v2    # "timeBetweenFrameCapture":D
    :goto_4
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_4

    .line 95
    const-string v4, "infoListener"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v4, :cond_5

    .line 98
    const-string v4, "errorListener"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_5
    const-string v4, "maxFileSize"

    iget-wide v6, p0, Lcom/lge/camera/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " #####  effect.maxDurationMs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mMaxDurationMs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMaxFileSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/lge/camera/EffectsRecorder;->mMaxFileSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v6, v6, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v6, v6, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v4, "maxDurationMs"

    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/EffectsRecorder;->pauseAndResumeRecording(Landroid/filterfw/core/Filter;Z)V

    .line 108
    const-string v4, "CameraApp"

    const-string v5, " #####  recorder.setInputValue recording true"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v4, "recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .end local v0    # "captureTimeLapse":Z
    :cond_6
    const/4 v4, 0x4

    iput v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    goto/16 :goto_0

    .line 62
    :cond_7
    const-string v5, "outputFile"

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 71
    :cond_8
    const-string v5, "audioSource"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v5, "outputFormat"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v5, "videoEncoder"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v5, "videoEncoderBitrate"

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mVideoBitrate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v5, "width"

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v6, v6, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v5, "height"

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v6, v6, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    move v0, v4

    .line 85
    goto/16 :goto_3

    .line 91
    .restart local v0    # "captureTimeLapse":Z
    :cond_a
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method public declared-synchronized stopRecording()V
    .locals 4

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop recording ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget v1, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 131
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "recorder"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 132
    .local v0, "recorder":Landroid/filterfw/core/Filter;
    if-eqz v0, :cond_0

    .line 133
    const-string v1, "CameraApp"

    const-string v2, " #####  recorder.setInputValue recording false"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/camera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v0    # "recorder":Landroid/filterfw/core/Filter;
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :pswitch_1
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "StopRecording called when recording not active!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 127
    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
