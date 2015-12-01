.class public Lcom/lge/camera/EffectsBase;
.super Ljava/lang/Object;
.source "EffectsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/EffectsBase$EffectsListener;,
        Lcom/lge/camera/EffectsBase$EffectBaseInterface;
    }
.end annotation


# static fields
.field public static final EFFECT_ALL:I = 0x4

.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_DUAL_CAMERA:I = 0x6

.field public static final EFFECT_DUAL_RECORD:I = 0x5

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_ERROR:I = 0x6

.field public static final EFFECT_MSG_PREVIEW_DONE:I = 0x5

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SURFACE_TEARDOWN:I = 0x7

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_SMART_ZOOM_RECORD:I = 0x7

.field public static final EFFECT_STOP_CALL_FROM_RESET_MENU:I = 0x65

.field public static final EFFECT_STOP_CALL_FROM_SWAP_CAMCORDER:I = 0x66

.field public static final EFFECT_STOP_CALL_NORMAL:I = 0x64

.field public static final NUM_OF_GF_EFFECTS:I = 0x6

.field private static final PAUSE_AND_RESUME_INPUT_NAME:Ljava/lang/String; = "pauseNresumeRecording"

.field protected static final STATE_CONFIGURE:I = 0x0

.field protected static final STATE_PREVIEW:I = 0x3

.field public static final STATE_RECORD:I = 0x4

.field protected static final STATE_RELEASED:I = 0x5

.field protected static final STATE_STARTING_PREVIEW:I = 0x2

.field protected static final STATE_WAITING_FOR_SURFACE:I = 0x1

.field protected static sContext:Landroid/content/Context;

.field private static sGet:Lcom/lge/camera/EffectsBase$EffectBaseInterface;

.field public static sLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

.field public static sLearningDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

.field public static sPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

.field public static sSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

.field public static sSetBitmapDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;


# instance fields
.field private isPausing:Z

.field public mCalledFrom:I

.field protected mCameraDevice:Landroid/hardware/Camera;

.field protected mCameraFacing:I

.field protected mCaptureRate:D

.field protected mCurrentEffect:I

.field private mDualRecorderSourceReadyCallback:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

.field protected mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

.field protected mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field protected mFd:Ljava/io/FileDescriptor;

.field protected mGraphEnv:Landroid/filterfw/GraphEnvironment;

.field protected mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field protected mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mMaxDurationMs:I

.field protected mMaxFileSize:J

.field protected mOldRunner:Landroid/filterfw/core/GraphRunner;

.field protected mOrientationHint:I

.field protected mOutputFile:Ljava/lang/String;

.field protected mPIP_SubWindow_Height:I

.field protected mPIP_SubWindow_Thick:I

.field protected mPIP_SubWindow_Width:I

.field protected mPIP_SubWindow_X:I

.field protected mPIP_SubWindow_Y:I

.field protected mPreviewHeight:I

.field protected mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mPreviewWidth:I

.field protected mProfile:Lcom/lge/media/CamcorderProfileEx;

.field private mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;

.field protected mRunner:Landroid/filterfw/core/GraphRunner;

.field protected mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field protected mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

.field protected mState:I

.field protected mTargetZoomAreaHeight:I

.field protected mTargetZoomAreaWidth:I

.field protected mTextureHeight:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;

.field protected mTextureWidth:I

.field protected mVideoBitrate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 509
    new-instance v0, Lcom/lge/camera/EffectsBase$1;

    invoke-direct {v0}, Lcom/lge/camera/EffectsBase$1;-><init>()V

    sput-object v0, Lcom/lge/camera/EffectsBase;->sLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    .line 518
    new-instance v0, Lcom/lge/camera/EffectsBase$2;

    invoke-direct {v0}, Lcom/lge/camera/EffectsBase$2;-><init>()V

    sput-object v0, Lcom/lge/camera/EffectsBase;->sLearningDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

    .line 525
    new-instance v0, Lcom/lge/camera/EffectsBase$3;

    invoke-direct {v0}, Lcom/lge/camera/EffectsBase$3;-><init>()V

    sput-object v0, Lcom/lge/camera/EffectsBase;->sPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    .line 531
    new-instance v0, Lcom/lge/camera/EffectsBase$4;

    invoke-direct {v0}, Lcom/lge/camera/EffectsBase$4;-><init>()V

    sput-object v0, Lcom/lge/camera/EffectsBase;->sSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    .line 539
    new-instance v0, Lcom/lge/camera/EffectsBase$5;

    invoke-direct {v0}, Lcom/lge/camera/EffectsBase$5;-><init>()V

    sput-object v0, Lcom/lge/camera/EffectsBase;->sSetBitmapDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inf"    # Lcom/lge/camera/EffectsBase$EffectBaseInterface;

    .prologue
    const/high16 v6, 0x43200000    # 160.0f

    const/high16 v5, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/EffectsBase;->mCaptureRate:D

    .line 105
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/EffectsBase;->mMaxFileSize:J

    .line 107
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mMaxDurationMs:I

    .line 108
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    .line 109
    const v0, 0x1e8480

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mVideoBitrate:I

    .line 111
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    .line 112
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 119
    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 120
    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 132
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    .line 134
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    .line 136
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    .line 137
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    .line 138
    const/16 v0, 0xa0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    .line 139
    const/16 v0, 0x5a

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    .line 140
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    .line 145
    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 147
    iput-boolean v2, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    .line 842
    new-instance v0, Lcom/lge/camera/EffectsBase$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsBase$6;-><init>(Lcom/lge/camera/EffectsBase;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mDualRecorderSourceReadyCallback:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

    .line 990
    new-instance v0, Lcom/lge/camera/EffectsBase$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsBase$7;-><init>(Lcom/lge/camera/EffectsBase;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 1138
    new-instance v0, Lcom/lge/camera/EffectsBase$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsBase$8;-><init>(Lcom/lge/camera/EffectsBase;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;

    .line 1248
    new-instance v0, Lcom/lge/camera/EffectsBase$9;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsBase$9;-><init>(Lcom/lge/camera/EffectsBase;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 183
    sput-object p1, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    .line 184
    sput-object p2, Lcom/lge/camera/EffectsBase;->sGet:Lcom/lge/camera/EffectsBase$EffectBaseInterface;

    .line 185
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    .line 187
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    .line 192
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    .line 220
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    .line 221
    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    .line 199
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    .line 208
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    goto :goto_0

    .line 212
    :cond_2
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    .line 215
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/lge/camera/EffectsBase$EffectBaseInterface;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/lge/camera/EffectsBase;->sGet:Lcom/lge/camera/EffectsBase$EffectBaseInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/EffectsBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/EffectsBase;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/camera/EffectsBase;->awaitLatch()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/EffectsBase;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/EffectsBase;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/camera/EffectsBase;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/EffectsBase;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/camera/EffectsBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/EffectsBase;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lge/camera/EffectsBase;->countDownLatch()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/camera/EffectsBase;)Lcom/lge/camera/EffectsBase$EffectsListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/EffectsBase;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/EffectsBase;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/EffectsBase;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lge/camera/EffectsBase;->raiseError(Ljava/lang/Exception;)V

    return-void
.end method

.method private awaitLatch()V
    .locals 5

    .prologue
    .line 1392
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e1":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Latch fail : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private countDownLatch()V
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1405
    :cond_0
    return-void
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 13
    .param p1, "forceReset"    # Z

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 626
    monitor-enter p0

    :try_start_0
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----  START: initializeEffect() - Reset anyway? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    if-nez p1, :cond_0

    iget v7, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    iget v8, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v7, v8, :cond_e

    .line 628
    :cond_0
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initializing effect. Preview size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Effect is changed from mCurrentEffect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to mEffect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget v7, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v7, v1, :cond_1

    iget v7, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v7, v12, :cond_1

    .line 635
    const-string v7, "CameraApp"

    const-string v8, "Re-initialize FilterFramework before starting initializeEffect()"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 637
    .local v0, "backupEffect":I
    invoke-direct {p0}, Lcom/lge/camera/EffectsBase;->initializeFilterFramework()V

    .line 638
    iput v0, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 642
    .end local v0    # "backupEffect":I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_6

    move v4, v6

    .line 643
    .local v4, "orientation":I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v6

    .line 645
    .local v3, "jpegRotationDegree":I
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v7, :cond_3

    .line 646
    iget v7, p0, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    if-nez v7, :cond_8

    .line 647
    .local v1, "cameraId":I
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v5, "landscape"

    .line 649
    .local v5, "screenOrientation":Ljava/lang/String;
    :goto_3
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_a

    .line 650
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x18

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurface"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "cameraId"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "pipPosX"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "pipPosY"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "pipWidth"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "pipHeight"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "pipRectThick"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "orientationDegree"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "setBitmapDoneListener"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    sget-object v9, Lcom/lge/camera/EffectsBase;->sSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "screenOrientation"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 679
    :cond_2
    :goto_4
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_b

    .line 680
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x20

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurface"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "textureWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mTextureWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "textureHeight"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mTextureHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "pipPosX"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "pipPosY"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "pipWidth"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "pipHeight"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "pipRectThick"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "objectWidth"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "objectHeight"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "initObjectX"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    sget v9, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_X:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "initObjectY"

    aput-object v9, v7, v8

    const/16 v8, 0x1b

    sget v9, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_Y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1c

    const-string v9, "setBitmapDoneListener"

    aput-object v9, v7, v8

    const/16 v8, 0x1d

    sget-object v9, Lcom/lge/camera/EffectsBase;->sSetBitmapDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;

    aput-object v9, v7, v8

    const/16 v8, 0x1e

    const-string v9, "screenOrientation"

    aput-object v9, v7, v8

    const/16 v8, 0x1f

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 704
    .end local v1    # "cameraId":I
    .end local v5    # "screenOrientation":Ljava/lang/String;
    :cond_3
    :goto_5
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v6, v11, :cond_4

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-ne v6, v10, :cond_5

    .line 706
    :cond_4
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 709
    :cond_5
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    packed-switch v6, :pswitch_data_0

    .line 723
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown effect ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .end local v3    # "jpegRotationDegree":I
    .end local v4    # "orientation":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 642
    :cond_6
    const/16 v4, 0x5a

    goto/16 :goto_0

    .line 643
    .restart local v4    # "orientation":I
    :cond_7
    const/16 v3, 0x10e

    goto/16 :goto_1

    .restart local v3    # "jpegRotationDegree":I
    :cond_8
    move v1, v6

    .line 646
    goto/16 :goto_2

    .line 647
    .restart local v1    # "cameraId":I
    :cond_9
    :try_start_1
    const-string v5, "portrait"

    goto/16 :goto_3

    .line 663
    .restart local v5    # "screenOrientation":Ljava/lang/String;
    :cond_a
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v6, v12, :cond_2

    .line 664
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x1a

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurface"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "cameraId"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "pipPosX"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "pipPosY"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "pipWidth"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "pipHeight"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "pipRectThick"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "orientationDegree"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "jpegRotationDegree"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "setBitmapDoneListener"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    sget-object v9, Lcom/lge/camera/EffectsBase;->sSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "screenOrientation"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 698
    :cond_b
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurface"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "orientation"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 711
    .end local v1    # "cameraId":I
    .end local v5    # "screenOrientation":Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    sget-object v7, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    const v8, 0x7f06000d

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    .line 725
    :goto_6
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 727
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v6, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 728
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget v7, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->getRunner(II)Landroid/filterfw/core/GraphRunner;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 730
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-nez v6, :cond_c

    .line 731
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error, mGraphEnv.getRunner is null, mGraphId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    .end local v3    # "jpegRotationDegree":I
    .end local v4    # "orientation":I
    :goto_7
    monitor-exit p0

    return-void

    .line 714
    .restart local v3    # "jpegRotationDegree":I
    .restart local v4    # "orientation":I
    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    sget-object v7, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    const v8, 0x7f06000c

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    goto :goto_6

    .line 717
    :pswitch_3
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    sget-object v7, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    const v8, 0x7f06000b

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    goto :goto_6

    .line 720
    :pswitch_4
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    sget-object v7, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    const v8, 0x7f06000f

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    goto :goto_6

    .line 735
    :cond_c
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 736
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New runner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Old runner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v6, v11, :cond_d

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-ne v6, v10, :cond_e

    .line 741
    :cond_d
    const-string v6, "CameraApp"

    const-string v7, "### EffectsBase mCameraDevice.stopPreview()"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    :try_start_3
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 745
    const-string v6, "CameraApp"

    const-string v7, "### EffectsBase mCameraDevice.setPreviewTexture(null)"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 749
    :try_start_4
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_e

    .line 750
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 751
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mOldRunner.stop() is called in initializeEffect(): mOldRunner = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .end local v3    # "jpegRotationDegree":I
    .end local v4    # "orientation":I
    :cond_e
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setEffectInputValue()V

    .line 759
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setFaceDetectOrientation()V

    .line 760
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setRecordingOrientation()V

    .line 761
    const-string v6, "CameraApp"

    const-string v7, "-----  END: initializeEffect()"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 746
    .restart local v3    # "jpegRotationDegree":I
    .restart local v4    # "orientation":I
    :catch_0
    move-exception v2

    .line 747
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unable to connect camera to effect input"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 549
    const-string v4, "CameraApp"

    const-string v5, "----- START: initializeFilterFramework()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    if-eqz v4, :cond_0

    .line 551
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 553
    :cond_0
    new-instance v4, Landroid/filterfw/GraphEnvironment;

    invoke-direct {v4}, Landroid/filterfw/GraphEnvironment;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 554
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v4}, Landroid/filterfw/GraphEnvironment;->createGLEnvironment()V

    .line 556
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----- Effects framework initializing. profile size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v6, v6, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v6, v6, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, "frameWidth":I
    const/4 v0, 0x0

    .line 561
    .local v0, "frameHeight":I
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v1, v4, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    .line 562
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v0, v4, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    .line 564
    const/4 v3, 0x0

    .line 565
    .local v3, "textureWidth":I
    const/4 v2, 0x0

    .line 566
    .local v2, "textureHeight":I
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 567
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v3, v4, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    .line 568
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v2, v4, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    .line 574
    :goto_0
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v4, v10, :cond_3

    .line 576
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mDualRecorderSourceReadyCallback:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 578
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0x10

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "recordingWidth"

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "recordingHeight"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "textureWidth"

    aput-object v7, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "textureHeight"

    aput-object v6, v5, v11

    const/4 v6, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "recordingProfile"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "learningDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    sget-object v7, Lcom/lge/camera/EffectsBase;->sLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "previewFrameListener"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    sget-object v7, Lcom/lge/camera/EffectsBase;->sPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "recordingDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 615
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v4, :cond_1

    .line 616
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 617
    const-string v4, "CameraApp"

    const-string v5, "mRunner.stop() is called in initializeFilterFramework()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 620
    const/4 v4, -0x1

    iput v4, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    .line 621
    iput v8, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 622
    const-string v4, "CameraApp"

    const-string v5, "----- END: initializeFilterFramework()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void

    .line 570
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v3, v4, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    .line 571
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v2, v4, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    goto/16 :goto_0

    .line 587
    :cond_3
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v4, v11, :cond_4

    .line 588
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mDualRecorderSourceReadyCallback:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 590
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "recordingWidth"

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "recordingHeight"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "textureWidth"

    aput-object v7, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "textureHeight"

    aput-object v6, v5, v11

    const/4 v6, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "learningDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    sget-object v7, Lcom/lge/camera/EffectsBase;->sLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "previewFrameListener"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    sget-object v7, Lcom/lge/camera/EffectsBase;->sPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 597
    :cond_4
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 598
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    const-string v6, "recordingWidth"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "recordingHeight"

    aput-object v7, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "recordingProfile"

    aput-object v6, v5, v11

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "learningDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    sget-object v7, Lcom/lge/camera/EffectsBase;->sLearningDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "recordingDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 606
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    const-string v6, "recordingWidth"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "recordingHeight"

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "recordingProfile"

    aput-object v6, v5, v11

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "learningDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "recordingDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mRecordingDoneListener:Lcom/lge/filterpacks/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public static isEffectSupported(I)Z
    .locals 2
    .param p0, "effectId"    # I

    .prologue
    const/4 v0, 0x0

    .line 165
    packed-switch p0, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 167
    :pswitch_1
    const-string v0, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 170
    :pswitch_2
    const-string v1, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v1}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v1}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :pswitch_3
    const-string v0, "com.lge.filterpacks.DualRecorderFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1340
    const-string v0, "CameraApp"

    const-string v1, "Error!! raiseError()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/camera/EffectsBase$11;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/EffectsBase$11;-><init>(Lcom/lge/camera/EffectsBase;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1352
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    const-string v0, "CameraApp"

    const-string v1, "EffectsBase close "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    .line 226
    sput-object v2, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    .line 227
    sput-object v2, Lcom/lge/camera/EffectsBase;->sGet:Lcom/lge/camera/EffectsBase$EffectBaseInterface;

    .line 228
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 229
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 231
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 235
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 237
    :cond_1
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 238
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 239
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    .line 240
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    .line 241
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 242
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;

    .line 243
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mFd:Ljava/io/FileDescriptor;

    .line 244
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    .line 245
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 246
    return-void
.end method

.method public enable3ALocks(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    .prologue
    .line 1243
    invoke-virtual {p0, p1}, Lcom/lge/camera/EffectsBase;->tryEnable3ALocks(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_0
    return-void
.end method

.method public getIsOnPausing()Z
    .locals 3

    .prologue
    .line 1413
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effect pausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-boolean v0, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    return v0
.end method

.method public getOrientationHint()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    return v0
.end method

.method protected isConfigureLandscape()Z
    .locals 1

    .prologue
    .line 1384
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1385
    sget-object v0, Lcom/lge/camera/EffectsBase;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    .line 1387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOnPausing(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1408
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set effect pausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iput-boolean p1, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    .line 1410
    return-void
.end method

.method public pauseAndResumeRecording(Landroid/filterfw/core/Filter;Z)V
    .locals 3
    .param p1, "recorder"    # Landroid/filterfw/core/Filter;
    .param p2, "pause"    # Z

    .prologue
    .line 1368
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    if-nez p1, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    const-string v1, "recorder"

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object p1

    .line 1374
    :cond_0
    if-eqz p1, :cond_2

    .line 1375
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

    .line 1376
    const-string v0, "pauseNresumeRecording"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1381
    :cond_1
    :goto_0
    return-void

    .line 1378
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "recorder is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 1309
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsBase Releasing-start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1318
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    .line 1321
    const-string v0, "CameraApp"

    const-string v1, "EffectsBase Releasing-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    monitor-exit p0

    return-void

    .line 1315
    :pswitch_0
    const/16 v0, 0x64

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/EffectsBase;->stopPreview(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1311
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessage(II)V
    .locals 3
    .param p1, "effect"    # I
    .param p2, "msg"    # I

    .prologue
    .line 1325
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage() effect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isPausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/camera/EffectsBase$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/EffectsBase$10;-><init>(Lcom/lge/camera/EffectsBase;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1337
    :goto_0
    return-void

    .line 1334
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: do nothing - mEffectsListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/Camera;

    .prologue
    .line 253
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 256
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamera cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public setCameraFacing(I)V
    .locals 3
    .param p1, "facing"    # I

    .prologue
    .line 478
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 479
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    .line 484
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setRecordingOrientation()V

    goto :goto_0
.end method

.method public setCaptureRate(D)V
    .locals 3
    .param p1, "fps"    # D

    .prologue
    .line 324
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 325
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureRate cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCaptureRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iput-wide p1, p0, Lcom/lge/camera/EffectsBase;->mCaptureRate:D

    goto :goto_0
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .param p1, "effect"    # I
    .param p2, "effectParameter"    # Ljava/lang/Object;

    .prologue
    .line 365
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 367
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    const-string v1, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEffect: effect ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", parameter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    .line 377
    iput-object p2, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    .line 379
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 381
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsBase;->initializeEffect(Z)V

    goto :goto_0

    .line 371
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected setEffectInputValue()V
    .locals 4

    .prologue
    .line 765
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-nez v2, :cond_1

    .line 766
    const-string v2, "CameraApp"

    const-string v3, "mRunner is null !!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    iget v2, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 772
    :pswitch_0
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    const-string v3, "goofyrenderer"

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 773
    .local v1, "goofyFilter":Landroid/filterfw/core/Filter;
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 775
    .local v0, "effectValue":I
    :goto_1
    if-eqz v1, :cond_0

    .line 776
    const-string v2, "currentEffect"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    .end local v0    # "effectValue":I
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/EffectsBase$EffectsListener;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    .line 393
    return-void
.end method

.method protected setFaceDetectOrientation()V
    .locals 6

    .prologue
    .line 396
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 397
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "rotate"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 398
    .local v2, "rotateFilter":Landroid/filterfw/core/Filter;
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "metarotate"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 399
    .local v0, "metaRotateFilter":Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    .line 402
    .local v3, "rotation":I
    :goto_0
    const-string v4, "rotation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    rsub-int v4, v3, 0x168

    rem-int/lit16 v1, v4, 0x168

    .line 404
    .local v1, "reverseDegrees":I
    const-string v4, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    .end local v0    # "metaRotateFilter":Landroid/filterfw/core/Filter;
    .end local v1    # "reverseDegrees":I
    .end local v2    # "rotateFilter":Landroid/filterfw/core/Filter;
    .end local v3    # "rotation":I
    :cond_0
    return-void

    .line 400
    .restart local v0    # "metaRotateFilter":Landroid/filterfw/core/Filter;
    .restart local v2    # "rotateFilter":Landroid/filterfw/core/Filter;
    :cond_1
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    add-int/lit16 v4, v4, 0x10e

    rem-int/lit16 v3, v4, 0x168

    goto :goto_0
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 3
    .param p1, "maxDurationMs"    # I

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 315
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxDuration cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMaxDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mMaxDurationMs:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 3
    .param p1, "maxFileSize"    # J

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 300
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxFileSize cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMaxFileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iput-wide p1, p0, Lcom/lge/camera/EffectsBase;->mMaxFileSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 3
    .param p1, "errorListener"    # Landroid/media/MediaRecorder$OnErrorListener;

    .prologue
    .line 501
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 502
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoListener cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 506
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    goto :goto_0
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 3
    .param p1, "infoListener"    # Landroid/media/MediaRecorder$OnInfoListener;

    .prologue
    .line 492
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 493
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoListener cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    goto :goto_0
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 466
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 467
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationHint cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    .line 473
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setFaceDetectOrientation()V

    .line 474
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setRecordingOrientation()V

    goto :goto_0
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 283
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 284
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileDescriptor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mOutputFile:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mFd:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "outputFile"    # Ljava/lang/String;

    .prologue
    .line 273
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 274
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outpufile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mOutputFile:Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mFd:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public setPIPSubWindowPosition(IIII)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 1355
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    .line 1356
    iput p2, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    .line 1357
    sub-int v0, p3, p1

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    .line 1358
    sub-int v0, p4, p2

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    .line 1359
    return-void
.end method

.method public setPIPSubWindowThick(I)V
    .locals 0
    .param p1, "thick"    # I

    .prologue
    .line 1362
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    .line 1363
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;II)V
    .locals 3
    .param p1, "previewSurfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    .line 335
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 336
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewDisplay cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 339
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPreviewDisplay ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 343
    iput p2, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    .line 344
    iput p3, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    .line 346
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 348
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->startPreview()V

    goto :goto_0

    .line 352
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsBase;->initializeEffect(Z)V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setProfile(Lcom/lge/media/CamcorderProfileEx;)V
    .locals 3
    .param p1, "profile"    # Lcom/lge/media/CamcorderProfileEx;

    .prologue
    .line 264
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 265
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    goto :goto_0
.end method

.method protected setRecordingOrientation()V
    .locals 11

    .prologue
    const/16 v10, 0xb4

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 410
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_1

    .line 419
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 420
    .local v0, "bl":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 421
    .local v1, "br":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 422
    .local v4, "tl":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 424
    .local v5, "tr":Landroid/filterfw/geometry/Point;
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 454
    .local v3, "recordingRegion":Landroid/filterfw/geometry/Quad;
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "recorder"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 455
    .local v2, "recorder":Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_1

    .line 456
    const-string v6, "inputRegion"

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    .end local v0    # "bl":Landroid/filterfw/geometry/Point;
    .end local v1    # "br":Landroid/filterfw/geometry/Point;
    .end local v2    # "recorder":Landroid/filterfw/core/Filter;
    .end local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    .end local v4    # "tl":Landroid/filterfw/geometry/Point;
    .end local v5    # "tr":Landroid/filterfw/geometry/Point;
    :cond_1
    return-void

    .line 431
    .restart local v0    # "bl":Landroid/filterfw/geometry/Point;
    .restart local v1    # "br":Landroid/filterfw/geometry/Point;
    .restart local v4    # "tl":Landroid/filterfw/geometry/Point;
    .restart local v5    # "tr":Landroid/filterfw/geometry/Point;
    :cond_2
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v5, v0, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 436
    .end local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 437
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    if-ne v6, v10, :cond_5

    .line 439
    :cond_4
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v0, v5, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 442
    .end local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    :cond_5
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 445
    .end local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    :cond_6
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    if-ne v6, v10, :cond_8

    .line 447
    :cond_7
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v5, v1, v4, v0}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 450
    .end local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    :cond_8
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v4, v1, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3    # "recordingRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_0
.end method

.method public setTextureSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {p1}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 359
    .local v0, "textureSize":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/lge/camera/EffectsBase;->mTextureWidth:I

    .line 360
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/lge/camera/EffectsBase;->mTextureHeight:I

    .line 361
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "texture size is explictly set as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/EffectsBase;->mTextureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/EffectsBase;->mTextureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 0
    .param p1, "videoEncodingBitRate"    # I

    .prologue
    .line 488
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mVideoBitrate:I

    .line 489
    return-void
.end method

.method public declared-synchronized startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 786
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 788
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do NOTHING because EffectsBase.startPreview() is called while EffectsBase.startPreview() is on-going, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 793
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 794
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do NOTHING because startPreview cannot not be called in STATE_RECORD and STATE_RELEASED, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 800
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-nez v0, :cond_5

    .line 802
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 807
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    if-nez v0, :cond_7

    .line 812
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_8

    .line 817
    const-string v0, "CameraApp"

    const-string v1, "Passed a null surface holder; waiting for valid one"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    goto :goto_0

    .line 821
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_9

    .line 824
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 825
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_9
    const-string v0, "CameraApp"

    const-string v1, "Initializing filter graph"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-direct {p0}, Lcom/lge/camera/EffectsBase;->initializeFilterFramework()V

    .line 832
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsBase;->initializeEffect(Z)V

    .line 834
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    .line 835
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_1

    .line 836
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunner.run() is called, Starting filter graph, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized stopPreview(I)V
    .locals 5
    .param p1, "calledFrom"    # I

    .prologue
    const/4 v4, 0x6

    .line 1154
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectsBase stopPreview-start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 1157
    const-string v1, "CameraApp"

    const-string v2, "EffectsBase mCameraDevice is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    :goto_0
    monitor-exit p0

    return-void

    .line 1161
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/lge/camera/EffectsBase;->mState:I

    sparse-switch v1, :sswitch_data_0

    .line 1173
    iget v1, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->stopRecording()V

    .line 1177
    :cond_1
    iget v1, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    if-ne v1, v4, :cond_3

    .line 1178
    :cond_2
    invoke-static {}, Lcom/lge/filterpacks/DualRecorderFilter;->manualStopPreview()V

    .line 1181
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 1182
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    .line 1183
    const-string v1, "CameraApp"

    const-string v2, "### EffectsBase mCameraDevice.stopPreview()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1192
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/lge/camera/EffectsBase;->mState:I

    .line 1193
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v1, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 1194
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v1, :cond_4

    .line 1195
    const-string v1, "CameraApp"

    const-string v2, "### mRunner.stop() is called in EffectsBase.stopPreview()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 1197
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1200
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 1202
    const-string v1, "CameraApp"

    const-string v2, "EffectsBase stopPreview-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1154
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1163
    :sswitch_0
    :try_start_4
    const-string v1, "CameraApp"

    const-string v2, "EffectsBase StopPreview called when preview not active!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    :sswitch_1
    const-string v1, "CameraApp"

    const-string v2, "EffectsBase stopPreview called on released EffectsBase!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 1189
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect camera to effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1161
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 0

    .prologue
    .line 1150
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method tryEnable3ALocks(Z)Z
    .locals 4
    .param p1, "toggle"    # Z

    .prologue
    .line 1225
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1227
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1230
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1231
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    const/4 v2, 0x1

    .line 1237
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v2

    .line 1234
    :catch_0
    move-exception v0

    .line 1235
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException-3A lock: "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1237
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .param p1, "toggle"    # Z

    .prologue
    .line 1208
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1210
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    const-string v2, "video-stabilization-supported"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1211
    .local v1, "vstabSupported":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1212
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting video stabilization to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1215
    const/4 v2, 0x1

    .line 1218
    :goto_1
    return v2

    .line 1213
    :cond_0
    const-string v2, "false"

    goto :goto_0

    .line 1217
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "Video stabilization not supported"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const/4 v2, 0x0

    goto :goto_1
.end method
