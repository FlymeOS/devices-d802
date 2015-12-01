.class public Lcom/lge/voiceshutter/library/AudioRecogEngine;
.super Ljava/lang/Object;
.source "AudioRecogEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;
    }
.end annotation


# static fields
.field public static final PCMDump:Z = false

.field private static final RECOG_ERROR_INIT_FAIL_MSG:I = 0xb

.field private static final RECOG_RESULT_CALLBAKC_MSG:I = 0x1

.field private static final RECOG_RESULT_ENGINESTOP_MSG:I = 0x2

.field private static final SAMPLE_RATE:I = 0x3e80

.field public static final VOICE_ENGINE_ENGLISH:I = 0x1

.field public static final VOICE_ENGINE_JAPAN:I = 0x2

.field public static final VOICE_ENGINE_KOREA:I = 0x0

.field private static final VOICE_ENGINE_START:I = 0x1

.field private static final VOICE_ENGINE_STOP:I


# instance fields
.field private mAbortThread:Z

.field private mCallback:Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;

.field private mEngThread:Ljava/lang/Thread;

.field private mEngineState:I

.field private mHandler:Landroid/os/Handler;

.field private mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

.field private mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

.field private mVoiceEngineKind:I

.field private recogResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;
    .param p2, "kind"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mVoiceEngineKind:I

    .line 36
    iput-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mCallback:Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;

    .line 42
    iput-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    .line 43
    iput-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    .line 44
    iput-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngThread:Ljava/lang/Thread;

    .line 45
    iput-boolean v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z

    .line 48
    iput v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngineState:I

    .line 50
    new-instance v0, Lcom/lge/voiceshutter/library/AudioRecogEngine$1;

    invoke-direct {v0, p0}, Lcom/lge/voiceshutter/library/AudioRecogEngine$1;-><init>(Lcom/lge/voiceshutter/library/AudioRecogEngine;)V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mCallback:Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;

    .line 68
    iput v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngineState:I

    .line 69
    iput p2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mVoiceEngineKind:I

    .line 70
    return-void
.end method

.method private Initialize()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 169
    new-instance v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    const/4 v3, 0x6

    const/16 v4, 0x3e80

    const/16 v5, 0x10

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;-><init>(IIII)V

    iput-object v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    .line 175
    iget-object v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    invoke-virtual {v2}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->getRecorderState()Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    move-result-object v2

    sget-object v3, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-ne v2, v3, :cond_0

    .line 177
    iget-object v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    invoke-virtual {v2}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->release()V

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    .line 179
    const-string v2, "CameraApp"

    const-string v3, "Fail to open Audio Recorder"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return v1

    .line 185
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    invoke-virtual {v2}, Lcom/lge/voiceshutter/library/LGKeyRec;->Initialize()V

    .line 187
    iget-object v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    invoke-virtual {v2}, Lcom/lge/voiceshutter/library/LGKeyRec;->Start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_1
    iput-boolean v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z

    .line 197
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;

    invoke-direct {v2, p0}, Lcom/lge/voiceshutter/library/AudioRecogEngine$2;-><init>(Lcom/lge/voiceshutter/library/AudioRecogEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngThread:Ljava/lang/Thread;

    .line 267
    const/4 v1, 0x1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException  mLGR.Initialize() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mCallback:Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/LGKeyRec;
    .locals 1
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/voiceshutter/library/AudioRecogEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/AudioRecogEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Lcom/lge/voiceshutter/library/ISTAudioRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/voiceshutter/library/AudioRecogEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->recogResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/voiceshutter/library/AudioRecogEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/AudioRecogEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->recogResult:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecogEngine-start : mEngineState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVoiceEngineKind = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mVoiceEngineKind:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngineState:I

    if-eq v0, v3, :cond_1

    .line 78
    iput v3, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngineState:I

    .line 80
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/lge/voiceshutter/library/LGKeyRec;

    iget v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mVoiceEngineKind:I

    invoke-direct {v0, v1}, Lcom/lge/voiceshutter/library/LGKeyRec;-><init>(I)V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->Initialize()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const-string v0, "CameraApp"

    const-string v1, "AudioRecogEngine : Fail Voice Shutter engine initialization"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->start()V

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "AudioRecogEngine : Voice Shutter engine Start."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "jaemin.joh"

    const-string v1, "MSG_SHOW_LISTENING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 109
    iget v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngineState:I

    if-ne v1, v2, :cond_3

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngineState:I

    .line 112
    iget-boolean v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z

    if-nez v1, :cond_0

    .line 115
    iput-boolean v2, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mAbortThread:Z

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mEngThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    invoke-virtual {v1}, Lcom/lge/voiceshutter/library/LGKeyRec;->DestroyRecognizer()V

    .line 139
    iput-object v4, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mLGR:Lcom/lge/voiceshutter/library/LGKeyRec;

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    invoke-virtual {v1}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->release()V

    .line 145
    iput-object v4, p0, Lcom/lge/voiceshutter/library/AudioRecogEngine;->mRecorder:Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    .line 148
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "AudioRecogEngine : Voice Shutter engine is stopped."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_3
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecogEngine : InterruptedException in stop():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
