.class public Lcom/lge/media/MediaRecorderEx;
.super Landroid/media/MediaRecorder;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaRecorderEx$LGAudioSource;
    }
.end annotation


# static fields
.field public static final MEDIA_RECORDER_TARS_STATE_INFO:I = 0x3e7

.field public static final OUTPUTFORMAT_AAC_TARS:I = 0x63

.field private static final TAG:Ljava/lang/String; = "LGMediaRecorder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/media/MediaRecorder;-><init>()V

    .line 33
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method private native native_audiozoom()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_changeMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setAudioZoomExceptionCase()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setOutputFileFD(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setParameter(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setRecordAngle(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setRecordZoomEnable(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method


# virtual methods
.method public changeMaxFileSize(J)V
    .locals 3
    .param p1, "subsize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMaxFileSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/lge/media/MediaRecorderEx;->native_changeMaxFileSize(J)V

    .line 200
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/media/MediaRecorder;->finalize()V

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_pause()V

    .line 93
    const-string v0, "LGMediaRecorder"

    const-string v1, "mediarecorder pause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_resume()V

    .line 104
    const-string v0, "LGMediaRecorder"

    const-string v1, "mediarecorder resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public setAudioZoomExceptionCase()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_setAudioZoomExceptionCase()V

    .line 57
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setAudioZoomExceptionCase"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public setAudioZooming()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/media/MediaRecorderEx;->native_audiozoom()V

    .line 46
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setAudioZooming"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public setOutputFileFD(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 130
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediarecorder setOutputFileFD:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/lge/media/MediaRecorderEx;->native_setOutputFileFD(Ljava/io/FileDescriptor;JJ)V

    .line 133
    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 3
    .param p1, "nameValuePair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 116
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "LGMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediarecorder setParameter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/media/MediaRecorderEx;->native_setParameter(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setProfile(Lcom/lge/media/CamcorderProfileEx;)V
    .locals 2
    .param p1, "profile"    # Lcom/lge/media/CamcorderProfileEx;

    .prologue
    .line 144
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->fileFormat:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setOutputFormat(I)V

    .line 145
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameRate:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setVideoFrameRate(I)V

    .line 146
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    iget v1, p1, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/media/MediaRecorderEx;->setVideoSize(II)V

    .line 147
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoBitRate:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setVideoEncodingBitRate(I)V

    .line 148
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->videoCodec:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setVideoEncoder(I)V

    .line 149
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->quality:I

    const/16 v1, 0x3f4

    if-gt v0, v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioCodec:I

    if-ltz v0, :cond_0

    .line 154
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioBitRate:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setAudioEncodingBitRate(I)V

    .line 155
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioChannels:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setAudioChannels(I)V

    .line 156
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioSampleRate:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setAudioSamplingRate(I)V

    .line 157
    iget v0, p1, Lcom/lge/media/CamcorderProfileEx;->audioCodec:I

    invoke-virtual {p0, v0}, Lcom/lge/media/MediaRecorderEx;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public setRecordAngle(I)V
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/lge/media/MediaRecorderEx;->native_setRecordAngle(I)V

    .line 69
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setRecordAngle"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public setRecordZoomEnable(II)V
    .locals 2
    .param p1, "angle"    # I
    .param p2, "zoommode"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/lge/media/MediaRecorderEx;->native_setRecordZoomEnable(II)V

    .line 82
    const-string v0, "LGMediaRecorder"

    const-string v1, "MediaRecorder setRecordZoomEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
