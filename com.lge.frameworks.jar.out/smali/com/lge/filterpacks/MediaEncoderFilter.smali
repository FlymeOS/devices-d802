.class public Lcom/lge/filterpacks/MediaEncoderFilter;
.super Landroid/filterfw/core/Filter;
.source "MediaEncoderFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;
    }
.end annotation


# static fields
.field private static final NO_AUDIO_SOURCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaEncoderFilter"


# instance fields
.field private mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private mCaptureTimeLapse:Z

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private mIsRecStart:Z

.field private mLastTimeLapseFrameRealTimestampNs:J

.field private mLogVerbose:Z

.field private mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

.field private mNumFramesEncoded:I

.field private mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private mPauseResumeRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "pauseNresumeRecording"
    .end annotation
.end field

.field private mProfile:Lcom/lge/media/CamcorderProfileEx;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private mRecordingActive:Z

.field private mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private mTimestampNs:J

.field private mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private mVideoEncoderBitrate:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoderBitrate"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 219
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecording:Z

    .line 66
    new-instance v4, Ljava/lang/String;

    const-string v5, "/sdcard/MediaEncoderOut.mp4"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    .line 70
    iput-object v7, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    .line 76
    const/4 v4, -0x1

    iput v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mAudioSource:I

    .line 83
    iput-object v7, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 90
    iput-object v7, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 96
    iput-object v7, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;

    .line 103
    iput v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mOrientationHint:I

    .line 110
    iput-object v7, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    .line 115
    iput v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mWidth:I

    .line 120
    iput v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mHeight:I

    .line 125
    const/16 v4, 0x1e

    iput v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFps:I

    .line 131
    const/4 v4, 0x2

    iput v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mOutputFormat:I

    .line 137
    const/4 v4, 0x2

    iput v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mVideoEncoder:I

    .line 143
    const v4, 0x1e8480

    iput v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mVideoEncoderBitrate:I

    .line 158
    iput-wide v10, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMaxFileSize:J

    .line 164
    iput v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMaxDurationMs:I

    .line 170
    iput-wide v10, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 174
    iput-boolean v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mPauseResumeRecording:Z

    .line 186
    iput-boolean v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    .line 187
    iput-wide v10, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimestampNs:J

    .line 188
    iput-wide v10, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 189
    iput v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 192
    iput-boolean v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 198
    iput-boolean v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mIsRecStart:Z

    .line 220
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 221
    .local v0, "bl":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 222
    .local v1, "br":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 223
    .local v2, "tl":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 224
    .local v3, "tr":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Quad;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 226
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    .line 228
    return-void
.end method

.method private startRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 376
    iget-boolean v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v5, :cond_0

    const-string v5, "MediaEncoderFilter"

    const-string v8, "Starting recording"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    new-instance v2, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v5, 0x2

    const/4 v8, 0x3

    invoke-direct {v2, v5, v8}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 381
    .local v2, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 384
    iget v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mWidth:I

    if-lez v5, :cond_3

    iget v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mHeight:I

    if-lez v5, :cond_3

    move v4, v6

    .line 387
    .local v4, "widthHeightSpecified":Z
    :goto_0
    iget-object v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    .line 388
    iget-object v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v3, v5, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    .line 389
    .local v3, "width":I
    iget-object v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v1, v5, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    .line 394
    .local v1, "height":I
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 395
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    const/16 v8, 0x65

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v2, v8, v10, v11}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 400
    new-instance v5, Lcom/lge/media/MediaRecorderEx;

    invoke-direct {v5}, Lcom/lge/media/MediaRecorderEx;-><init>()V

    iput-object v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    .line 401
    invoke-direct {p0}, Lcom/lge/filterpacks/MediaEncoderFilter;->updateMediaRecorderParams()V

    .line 404
    :try_start_0
    iget-object v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v5}, Lcom/lge/media/MediaRecorderEx;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 419
    iput-boolean v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mIsRecStart:Z

    .line 420
    iget-boolean v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v5, :cond_1

    const-string v5, "MediaEncoderFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MediaEncoderFilter set mPauseResumeRecording = false / mPauseResumeRecording = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mPauseResumeRecording:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    iget-object v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v5}, Lcom/lge/media/MediaRecorderEx;->start()V

    .line 424
    iget-boolean v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v5, :cond_2

    const-string v5, "MediaEncoderFilter"

    const-string v8, "Open: registering surface from Mediarecorder"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v5

    iget-object v8, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v5

    iput v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSurfaceId:I

    .line 427
    iput v7, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 428
    iput-boolean v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    .line 429
    return-void

    .end local v1    # "height":I
    .end local v3    # "width":I
    .end local v4    # "widthHeightSpecified":Z
    :cond_3
    move v4, v7

    .line 384
    goto :goto_0

    .line 391
    .restart local v4    # "widthHeightSpecified":Z
    :cond_4
    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mWidth:I

    .line 392
    .restart local v3    # "width":I
    iget v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mHeight:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .line 407
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 408
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unknown Exception inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private stopRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 518
    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "MediaEncoderFilter"

    const-string v3, "Stopping recording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iput-boolean v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    .line 521
    iput v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 522
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 528
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "MediaEncoderFilter"

    const-string v3, "Unregistering surface %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSurfaceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    iget v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSurfaceId:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 531
    :try_start_0
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v2}, Lcom/lge/media/MediaRecorderEx;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    iput-boolean v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mIsRecStart:Z

    .line 538
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v2}, Lcom/lge/media/MediaRecorderEx;->release()V

    .line 539
    iput-object v7, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    .line 541
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 542
    iput-object v7, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 547
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;

    if-eqz v2, :cond_2

    .line 548
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;

    invoke-interface {v2}, Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;->onRecordingDone()V

    .line 550
    :cond_2
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/lge/filterpacks/MediaRecorderStopException;

    const-string v3, "MediaRecorder.stop() failed!"

    invoke-direct {v2, v3, v0}, Lcom/lge/filterpacks/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updateMediaRecorderParams()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 292
    iget-wide v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 293
    const/4 v0, 0x2

    .line 294
    .local v0, "GRALLOC_BUFFER":I
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setVideoSource(I)V

    .line 295
    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mCaptureTimeLapse:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mAudioSource:I

    if-eq v2, v6, :cond_0

    .line 296
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mAudioSource:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setAudioSource(I)V

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    if-eqz v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v2, v2, Lcom/lge/media/CamcorderProfileEx;->videoFrameRate:I

    iput v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFps:I

    .line 302
    iget v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mAudioSource:I

    if-eq v2, v6, :cond_2

    .line 303
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget-object v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setProfile(Lcom/lge/media/CamcorderProfileEx;)V

    .line 328
    :goto_1
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mOrientationHint:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setOrientationHint(I)V

    .line 329
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget-object v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 330
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget-object v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 331
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_5

    .line 332
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget-object v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 337
    :goto_2
    :try_start_0
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget-wide v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMaxFileSize:J

    invoke-virtual {v2, v4, v5}, Lcom/lge/media/MediaRecorderEx;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_3
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMaxDurationMs:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setMaxDuration(I)V

    .line 348
    return-void

    .line 292
    .end local v0    # "GRALLOC_BUFFER":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 306
    .restart local v0    # "GRALLOC_BUFFER":I
    :cond_2
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mOutputFormat:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setOutputFormat(I)V

    .line 307
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mVideoEncoder:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setVideoEncoder(I)V

    .line 310
    iget v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mWidth:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mHeight:I

    if-lez v2, :cond_3

    .line 311
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mWidth:I

    iget v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/media/MediaRecorderEx;->setVideoSize(II)V

    .line 313
    :cond_3
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mVideoEncoderBitrate:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setVideoEncodingBitRate(I)V

    .line 314
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFps:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setVideoFrameRate(I)V

    goto :goto_1

    .line 320
    :cond_4
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mOutputFormat:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setOutputFormat(I)V

    .line 321
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mVideoEncoder:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setVideoEncoder(I)V

    .line 322
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mWidth:I

    iget v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/media/MediaRecorderEx;->setVideoSize(II)V

    .line 324
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mVideoEncoderBitrate:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setVideoEncodingBitRate(I)V

    .line 326
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFps:I

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setVideoFrameRate(I)V

    goto/16 :goto_1

    .line 334
    :cond_5
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    iget-object v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lge/media/MediaRecorderEx;->setOutputFile(Ljava/lang/String;)V

    goto :goto_2

    .line 338
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaEncoderFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting maxFileSize on MediaRecorder unsuccessful! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private updateSourceRegion()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 281
    .local v0, "flippedRegion":Landroid/filterfw/geometry/Quad;
    iget-object v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 282
    iget-object v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 283
    iget-object v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 284
    iget-object v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 285
    iget-object v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 286
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/lge/filterpacks/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 559
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const-string v0, "recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    const-string v0, "inputRegion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/lge/filterpacks/MediaEncoderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/lge/filterpacks/MediaEncoderFilter;->updateSourceRegion()V

    goto :goto_0

    .line 253
    :cond_3
    const-string v0, "pauseNresumeRecording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mIsRecStart:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 254
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "MediaEncoderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseNresumeRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mPauseResumeRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_4
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mPauseResumeRecording:Z

    if-eqz v0, :cond_6

    .line 256
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_5

    const-string v0, "MediaEncoderFilter"

    const-string v1, "MediaEncoderFilter call mMediaRecorder.pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Lcom/lge/media/MediaRecorderEx;->pause()V

    goto :goto_0

    .line 260
    :cond_6
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "MediaEncoderFilter"

    const-string v1, "MediaEncoderFilter call mMediaRecorder.resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_7
    iget-object v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Lcom/lge/media/MediaRecorderEx;->resume()V

    goto :goto_0

    .line 269
    :cond_8
    invoke-virtual {p0}, Lcom/lge/filterpacks/MediaEncoderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change recording parameters when the filter is recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/lge/filterpacks/MediaEncoderFilter;->updateSourceRegion()V

    .line 369
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/lge/filterpacks/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 370
    :cond_1
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    .line 360
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 480
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string v2, "videoframe"

    invoke-virtual {p0, v2}, Lcom/lge/filterpacks/MediaEncoderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 483
    .local v1, "input":Landroid/filterfw/core/Frame;
    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecording:Z

    if-eqz v2, :cond_0

    .line 484
    invoke-direct {p0, p1}, Lcom/lge/filterpacks/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 487
    :cond_0
    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecording:Z

    if-nez v2, :cond_1

    .line 488
    invoke-direct {p0, p1}, Lcom/lge/filterpacks/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 491
    :cond_1
    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v2, :cond_3

    .line 512
    :cond_2
    :goto_0
    return-void

    .line 493
    :cond_3
    iget-boolean v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_4

    .line 494
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/lge/filterpacks/MediaEncoderFilter;->skipFrameAndModifyTimestamp(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    :goto_1
    iget v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mSurfaceId:I

    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 505
    iget-object v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 508
    iget-wide v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 510
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 511
    iget v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mNumFramesEncoded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mNumFramesEncoded:I

    goto :goto_0

    .line 498
    :cond_4
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimestampNs:J

    goto :goto_1
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 236
    const-string v0, "videoframe"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/filterpacks/MediaEncoderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 238
    return-void
.end method

.method public skipFrameAndModifyTimestamp(J)Z
    .locals 11
    .param p1, "timestampNs"    # J

    .prologue
    const-wide/32 v8, 0x3b9aca00

    const/4 v0, 0x0

    .line 436
    iget v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mNumFramesEncoded:I

    if-nez v1, :cond_1

    .line 437
    iput-wide p1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 438
    iput-wide p1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimestampNs:J

    .line 439
    iget-boolean v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: FIRST frame, last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    iget v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mNumFramesEncoded:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    iget-wide v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_3

    .line 453
    iget-boolean v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaEncoderFilter"

    const-string v1, "timelapse: skipping intermediate frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 460
    :cond_3
    iget-boolean v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v1, :cond_4

    const-string v1, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: encoding frame, Timestamp t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_4
    iput-wide p1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 464
    iget-wide v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimestampNs:J

    iget v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFps:I

    int-to-long v4, v1

    div-long v4, v8, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimestampNs:J

    .line 465
    iget-boolean v1, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timelapse: encoding frame, setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delta t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFps:I

    int-to-long v4, v3

    div-long v4, v8, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mMediaRecorder:Lcom/lge/media/MediaRecorderEx;

    invoke-virtual {v0}, Lcom/lge/media/MediaRecorderEx;->release()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/lge/filterpacks/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 575
    :cond_1
    return-void
.end method
