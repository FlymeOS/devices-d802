.class public final Lcom/lge/camera/listeners/MediaRecorderListener;
.super Ljava/lang/Object;
.source "MediaRecorderListener.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private mGet:Lcom/lge/camera/ControllerFunction;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 33
    iput-object p1, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/listeners/MediaRecorderListener;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/listeners/MediaRecorderListener;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 7
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v0, :cond_1

    .line 95
    const-string v0, "CameraApp"

    const-string v1, "mGet interface is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "MediaRecorder onError-what:%d, extra:%d, bPopup:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eq p2, v5, :cond_2

    if-eq p2, v6, :cond_2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 106
    :cond_2
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 107
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;Z)V

    .line 108
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/AudioUtil;->setVibrationMute(Landroid/content/Context;Z)V

    .line 109
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 110
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 111
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetScreenTimeout()V

    .line 113
    const/16 v0, -0x3ef

    if-ne p3, v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentRecordingTime()J

    move-result-wide v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 116
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Short recording time error!! time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentRecordingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/listeners/MediaRecorderListener$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/listeners/MediaRecorderListener$1;-><init>(Lcom/lge/camera/listeners/MediaRecorderListener;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->setShowCameraErrorPopup(Z)V

    goto/16 :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 10
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 37
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaRecorder onInfo what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / extra = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    const/16 v6, 0x3eb

    if-ne p2, v6, :cond_0

    .line 40
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->resumeUpdateReordingTime()V

    .line 44
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getIsFileSizeLimitReached()Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v6, 0x320

    if-eq p2, v6, :cond_1

    const/16 v6, 0x321

    if-ne p2, v6, :cond_3

    .line 47
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->setIsFileSizeLimitReached(Z)V

    .line 49
    const/16 v6, 0x321

    if-ne p2, v6, :cond_2

    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v6

    if-nez v6, :cond_2

    .line 51
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isStorageFull()Z

    move-result v6

    if-nez v6, :cond_5

    .line 52
    const-string v6, "CameraApp"

    const-string v7, "MediaRecorder max filesize reached"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-double v2, v6

    .line 56
    .local v2, "mFileSize":D
    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v4, v2, v6

    .line 60
    .local v4, "mStringSize":D
    const/4 v0, 0x0

    .line 61
    .local v0, "FILE_MAX_SIZE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 64
    .local v1, "round":Ljava/math/BigDecimal;
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_4

    .line 65
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " GB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v7, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0a024a

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->toastLong(Ljava/lang/String;)V

    .line 87
    .end local v0    # "FILE_MAX_SIZE":Ljava/lang/String;
    .end local v1    # "round":Ljava/math/BigDecimal;
    .end local v2    # "mFileSize":D
    .end local v4    # "mStringSize":D
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "com.lge.camera.command.UpdateRecordingTime"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "com.lge.camera.command.StopRecording"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 91
    :cond_3
    return-void

    .line 70
    .restart local v0    # "FILE_MAX_SIZE":Ljava/lang/String;
    .restart local v1    # "round":Ljava/math/BigDecimal;
    .restart local v2    # "mFileSize":D
    .restart local v4    # "mStringSize":D
    :cond_4
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, v6

    .line 71
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    .end local v0    # "FILE_MAX_SIZE":Ljava/lang/String;
    .end local v1    # "round":Ljava/math/BigDecimal;
    .end local v2    # "mFileSize":D
    .end local v4    # "mStringSize":D
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v7, p0, Lcom/lge/camera/listeners/MediaRecorderListener;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0a0081

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->toastLong(Ljava/lang/String;)V

    goto :goto_1
.end method
