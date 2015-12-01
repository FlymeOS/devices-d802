.class public abstract Lcom/lge/camera/controller/PreviewController;
.super Lcom/lge/camera/controller/Controller;
.source "PreviewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/lge/camera/EffectsBase$EffectBaseInterface;
.implements Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
.implements Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;
.implements Lcom/lge/camera/controller/PIPController$PIPControllerFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/PreviewController$EffectCameraListener;,
        Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;,
        Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;
    }
.end annotation


# static fields
.field protected static final HEIGHT_INDEX:I = 0x1

.field protected static final WIDTH_INDEX:I


# instance fields
.field protected bRendered:Z

.field private deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

.field private final divider:I

.field private isBeautyshotProgress:Z

.field protected isPlayRingVideoSizeSet:Z

.field protected isReadyEngineProcessor:Z

.field private mBeginStartPreview:Z

.field protected mCameraDevice:Landroid/hardware/Camera;

.field protected mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

.field protected mCameraGLPreviewExtra:Landroid/view/SurfaceView;

.field protected mCameraMode:I

.field protected mCameraPreview:Lcom/lge/camera/components/CameraPreview;

.field protected mCameraReleaseOnGoing:Z

.field private mChangeMode:Z

.field private mChangedAutoReviewToDefault:Z

.field private mChangedManualFocusToDefault:Z

.field private mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

.field protected mCurrentEffect:Ljava/lang/String;

.field protected mEffectCameraListener:Lcom/lge/camera/controller/PreviewController$EffectCameraListener;

.field protected mEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEffectParameter:Ljava/lang/Object;

.field protected mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

.field protected mEffectType:I

.field public mEffectsCamera:Lcom/lge/camera/EffectsCamera;

.field public mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

.field public mEnableInputThread:Ljava/lang/Thread;

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field private mErrorCallback:Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

.field private mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

.field private mFaceDetectionHasUI:Z

.field private mFaceDetectionStarted:Z

.field public mGestureEngineRunable:Ljava/lang/Runnable;

.field private mIsSensorSupportBackdropper:Z

.field protected mIsStartPreviewEffectOnGoing:Z

.field protected mLGCamera:Lcom/lge/hardware/LGCamera;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLockScreenPreventPreview:Z

.field public mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field protected mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

.field protected mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

.field private mPrevAutoReviewVal:Ljava/lang/String;

.field public mPreviewCallbackRunnable:Ljava/lang/Runnable;

.field private mPreviewing:Z

.field protected mPreviousResolutionBack:Ljava/lang/String;

.field protected mPreviousResolutionFront:Ljava/lang/String;

.field protected mProfile:Lcom/lge/media/CamcorderProfileEx;

.field protected mProfileType:I

.field private mQuickShutterButtonClickListener:Landroid/view/View$OnTouchListener;

.field private mQuickShutterButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mQuickWindowExitButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

.field private mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

.field private mSetPreviewDisplayCheck:Z

.field private mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSetPreviewDisplayLock:Ljava/lang/Object;

.field private mShutterBtn:Lcom/lge/camera/components/ShutterButton;

.field private mStartPreviewFail:Z

.field protected mStartPreviewOnGoing:Z

.field private mStartPreviewRunnable:Ljava/lang/Runnable;

.field private mStartPreviewThread:Ljava/lang/Thread;

.field protected mSurfaceHeight:I

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceWidth:I

.field private mThreadStartRunnable:Ljava/lang/Runnable;

.field private mUseOnResume:Z

.field protected previousEffectParameter:Ljava/lang/Object;

.field protected previousEffectType:I

.field protected previousResolution:Ljava/lang/String;

.field private final ruleEnable:I

.field private final shiftQuickWindow:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 86
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 87
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 90
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 91
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 93
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    .line 94
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 95
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 96
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    .line 98
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 99
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    .line 100
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isPlayRingVideoSizeSet:Z

    .line 102
    new-instance v0, Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

    .line 104
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 105
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 106
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 107
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 109
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 110
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    .line 111
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    .line 112
    new-instance v0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    invoke-direct {v0, p0, v2}, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;-><init>(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/controller/PreviewController$1;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    .line 113
    new-instance v0, Lcom/lge/camera/controller/PreviewController$EffectCameraListener;

    invoke-direct {v0, p0, v2}, Lcom/lge/camera/controller/PreviewController$EffectCameraListener;-><init>(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/controller/PreviewController$1;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectCameraListener:Lcom/lge/camera/controller/PreviewController$EffectCameraListener;

    .line 114
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 115
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 116
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPreviousResolutionBack:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPreviousResolutionFront:Ljava/lang/String;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->shiftQuickWindow:I

    .line 121
    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->ruleEnable:I

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->divider:I

    .line 123
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    .line 124
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    .line 125
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    .line 126
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    .line 127
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 128
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    .line 129
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangedAutoReviewToDefault:Z

    .line 130
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPrevAutoReviewVal:Ljava/lang/String;

    .line 133
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    .line 135
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    .line 136
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    .line 138
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 140
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 147
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 148
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 247
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 680
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 862
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLock:Ljava/lang/Object;

    .line 863
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 978
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1150
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1151
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    .line 1152
    new-instance v0, Lcom/lge/camera/controller/PreviewController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$6;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewRunnable:Ljava/lang/Runnable;

    .line 1190
    new-instance v0, Lcom/lge/camera/controller/PreviewController$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$7;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mThreadStartRunnable:Ljava/lang/Runnable;

    .line 1716
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isBeautyshotProgress:Z

    .line 1938
    new-instance v0, Lcom/lge/camera/controller/PreviewController$9;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$9;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mQuickWindowExitButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 1973
    new-instance v0, Lcom/lge/camera/controller/PreviewController$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$10;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mQuickShutterButtonClickListener:Landroid/view/View$OnTouchListener;

    .line 2005
    new-instance v0, Lcom/lge/camera/controller/PreviewController$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$11;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mQuickShutterButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2604
    new-instance v0, Lcom/lge/camera/controller/PreviewController$20;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$20;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGestureEngineRunable:Ljava/lang/Runnable;

    .line 2618
    new-instance v0, Lcom/lge/camera/controller/PreviewController$21;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$21;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewCallbackRunnable:Ljava/lang/Runnable;

    .line 2626
    new-instance v0, Lcom/lge/camera/controller/PreviewController$22;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$22;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 2661
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    .line 2718
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    .line 2719
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionHasUI:Z

    .line 2984
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    .line 152
    return-void
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/PreviewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/PreviewController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/util/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/PreviewController;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/PreviewController;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/PreviewController;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/PreviewController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/RotateImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/components/RotateImageButton;)Lcom/lge/camera/components/RotateImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;
    .param p1, "x1"    # Lcom/lge/camera/components/RotateImageButton;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/ShutterButton;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewController;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    return-object v0
.end method

.method private ensureCameraDevice()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/util/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 981
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ensureCameraDevice() deviceOpenLatch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v7, :cond_5

    .line 984
    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    if-eqz v7, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    const/4 v5, 0x1

    .local v5, "trial":I
    :goto_1
    const/4 v7, 0x4

    if-ge v5, v7, :cond_5

    .line 989
    :try_start_0
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_2

    .line 990
    const-string v7, "TAG"

    const-string v8, " Camera device is opening in another thread, wait for done %d..."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v7, "TAG"

    const-string v8, " currently camera device:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v7, :cond_3

    .line 996
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v8, 0x3e8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 997
    .local v4, "ret":Z
    if-nez v4, :cond_4

    .line 998
    const-string v7, "TAG"

    const-string v8, " Device open latch timeout! startPreviewFail:%b"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    .end local v4    # "ret":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1002
    .restart local v4    # "ret":Z
    :cond_4
    const-string v7, "TAG"

    const-string v8, " Opened. Camera device:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    .end local v4    # "ret":Z
    .end local v5    # "trial":I
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_0

    .line 1013
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1015
    :try_start_1
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/util/CameraHolder;->getUsers()I

    move-result v7

    if-nez v7, :cond_7

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "device_cam_id":I
    const/4 v2, 0x0

    .line 1018
    .local v2, "old_device_cam_id":I
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    .line 1020
    .local v6, "ui_cam_id":I
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call CameraHolder.open("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/util/CameraHolder;->getRealCameraId()I

    move-result v2

    .line 1022
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 1023
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/util/CameraHolder;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    .line 1024
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/util/CameraHolder;->getRealCameraId()I

    move-result v0

    .line 1025
    if-eq v2, v6, :cond_6

    if-ne v2, v0, :cond_6

    .line 1027
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v0}, Lcom/lge/camera/ControllerFunction;->setCameraId(I)V

    .line 1028
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v0}, Lcom/lge/camera/ControllerFunction;->setCameraMode(I)V

    .line 1029
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "Main_CameraAppConfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1031
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-static {v3, v0}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1032
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reset ui menu for device number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.SetCameraIdBeforeStartInit"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1035
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_6
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "open routine done readlCamId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    .end local v0    # "device_cam_id":I
    .end local v2    # "old_device_cam_id":I
    .end local v6    # "ui_cam_id":I
    :goto_3
    const-string v7, "CameraApp"

    const-string v8, "Camera device opening done."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1042
    iput-object v14, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1043
    const-string v7, "CameraApp"

    const-string v8, "latch countDown called"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1008
    .restart local v5    # "trial":I
    :catch_0
    move-exception v1

    .line 1009
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1037
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "trial":I
    :cond_7
    :try_start_2
    const-string v7, "CameraApp"

    const-string v8, "Camera device user != 0 SOMETHING WRONG!!"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1041
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1042
    iput-object v14, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1043
    const-string v8, "CameraApp"

    const-string v9, "latch countDown called"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v7
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1851
    :try_start_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1852
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1853
    invoke-static {p0}, Lcom/lge/camera/util/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 1855
    .local v0, "degrees":I
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1856
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v3, v4, 0x168

    .line 1857
    .local v3, "result":I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 1861
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "degrees = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", info.orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1867
    .end local v0    # "degrees":I
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "result":I
    :goto_1
    return-void

    .line 1859
    .restart local v0    # "degrees":I
    .restart local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "result":I
    goto :goto_0

    .line 1864
    .end local v0    # "degrees":I
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 1865
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "setCameraDisplayOrientation exception : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setOtherLayoutParam(IIILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftMargin"    # I
    .param p4, "previewParam"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p5, "surfaceParam"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const v7, 0x7f0d017b

    .line 2313
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2314
    move v2, p3

    .line 2315
    .local v2, "recIconLeftMargin":I
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2316
    iget v3, p4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lt v3, p1, :cond_0

    .line 2317
    iget v3, p4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 2324
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUWXGAmodel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_7

    .line 2332
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    sget v4, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sget v5, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setRecIndicatorLayout(III)V

    .line 2339
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2340
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->setAudioZoomGuideViewLayout(III)V

    .line 2341
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2342
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    sget v4, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sget v5, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    invoke-interface {v3, v4, v5, p3}, Lcom/lge/camera/ControllerFunction;->setAudioZoomGuideViewLayout(III)V

    .line 2352
    .end local v2    # "recIconLeftMargin":I
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 2355
    .local v1, "previewSizeOnScreen":[I
    const-string v3, "multiwindowaf"

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2356
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/PreviewController$12;

    invoke-direct {v4, p0, v1}, Lcom/lge/camera/controller/PreviewController$12;-><init>(Lcom/lge/camera/controller/PreviewController;[I)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2364
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    .line 2365
    .local v0, "pip":Lcom/lge/camera/controller/PIPController;
    if-eqz v0, :cond_4

    .line 2366
    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/PIPController;->setSmartZoomLayoutSize(III)V

    .line 2369
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->setFocusAreaWindow(III)V

    .line 2371
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2372
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2375
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setIndicatorLayout(I)V

    .line 2376
    return-void

    .line 2320
    .end local v0    # "pip":Lcom/lge/camera/controller/PIPController;
    .end local v1    # "previewSizeOnScreen":[I
    .restart local v2    # "recIconLeftMargin":I
    :cond_6
    iget v3, p4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lt v3, p1, :cond_0

    .line 2321
    iget v3, p4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 2336
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, p2, v2}, Lcom/lge/camera/ControllerFunction;->setRecIndicatorLayout(III)V

    goto :goto_1

    .line 2347
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->setAudioZoomGuideViewLayout(III)V

    goto :goto_2
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 7
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 866
    const-string v1, "CameraApp"

    const-string v2, "##### mCameraDevice.setPreviewDisplay device:%s, holder:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    if-eqz v1, :cond_0

    .line 869
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return setPreviewDisplay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :goto_0
    return-void

    .line 872
    :cond_0
    if-eqz p1, :cond_1

    .line 873
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 875
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLock:Ljava/lang/Object;

    monitor-enter v2

    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateNavigationBarShape()V

    .line 892
    const-string v1, "CameraApp"

    const-string v2, "##### mCameraDevice.setPreviewDisplay end"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$3;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 885
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 888
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public CamDeviceOpen()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/util/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1749
    const/4 v1, 0x0

    .line 1751
    .local v1, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/util/CameraHolder;->getUsers()I

    move-result v2

    if-nez v2, :cond_0

    .line 1752
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen call CameraHolder.open(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 1757
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/util/CameraHolder;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    .line 1758
    const/4 v1, 0x1

    .line 1759
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen open routine done"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :goto_0
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen Camera device opening done."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :goto_1
    return v1

    .line 1761
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen Camera device user != 0 SOMETHING WRONG!!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1765
    :catch_0
    move-exception v0

    .line 1766
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1767
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen latch countDown called"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public beRendered()Z
    .locals 1

    .prologue
    .line 1894
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    return v0
.end method

.method public cameraErrorCallbackForServerDied()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2664
    const-string v1, "CameraApp"

    const-string v2, "media server died"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 2667
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkFsWritable()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 2669
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "Try restart preview"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    iget v1, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    .line 2673
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 2674
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 2676
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->hide()V

    .line 2677
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 2680
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "wait 5 second for restart MediaServer"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2685
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 2698
    :cond_1
    :goto_1
    return-void

    .line 2682
    :catch_0
    move-exception v0

    .line 2683
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2687
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "Storage is not available. Or media server never wake up. finish app."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2691
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setShowCameraErrorPopup(Z)V

    .line 2692
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    goto :goto_1

    .line 2696
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "mediator or Controller is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public cameraErrorCallbackForUnKnown()V
    .locals 3

    .prologue
    .line 2701
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera Driver Error, bShowCameraErrorPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2706
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setShowCameraErrorPopup(Z)V

    .line 2707
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    .line 2709
    :cond_0
    return-void
.end method

.method public changePreviewMode(II)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0175

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2149
    .local v9, "previewLayout":Landroid/view/View;
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->showQuickWindowCamera(Z)V

    .line 2151
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->changeQuickPreviewMode(II)V

    .line 2307
    :goto_0
    return-void

    .line 2154
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->showQuickWindowCamera(Z)V

    .line 2155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->enableQuickWindowButton(Z)V

    .line 2158
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePreviewMode previewLayout ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2163
    .local v4, "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    .line 2165
    .local v5, "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_2

    .line 2166
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2173
    .restart local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v10

    .line 2174
    .local v10, "previewWidth":I
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v8

    .line 2175
    .local v8, "previewHeight":I
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v7

    .line 2176
    .local v7, "lcdWidth":I
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v6

    .line 2177
    .local v6, "lcdHeight":I
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v3

    .line 2179
    .local v3, "leftMargin":I
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2180
    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2181
    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2186
    :goto_2
    const/4 v0, -0x1

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2187
    const/4 v0, -0x1

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2188
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2190
    if-ge v10, p1, :cond_8

    .line 2191
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainBarAlpha(I)V

    .line 2193
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2194
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2195
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2200
    :goto_3
    const/4 v0, 0x0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2201
    const/4 v0, 0x0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2202
    const/4 v3, 0x0

    .line 2204
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2205
    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lt v0, p1, :cond_5

    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lt v0, p2, :cond_5

    .line 2206
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2208
    iput p2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_1
    :goto_4
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2280
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewController;->setOtherLayoutParam(IIILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 2282
    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2283
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_11

    .line 2284
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2285
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_light"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2286
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const v1, 0x7f02042c

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2168
    .end local v3    # "leftMargin":I
    .end local v6    # "lcdHeight":I
    .end local v7    # "lcdWidth":I
    .end local v8    # "previewHeight":I
    .end local v10    # "previewWidth":I
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_1

    .line 2183
    .restart local v3    # "leftMargin":I
    .restart local v6    # "lcdHeight":I
    .restart local v7    # "lcdWidth":I
    .restart local v8    # "previewHeight":I
    .restart local v10    # "previewWidth":I
    :cond_3
    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2184
    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_2

    .line 2197
    :cond_4
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2198
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    .line 2210
    :cond_5
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2211
    mul-int v0, v7, p2

    div-int/2addr v0, p1

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_4

    .line 2214
    :cond_6
    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lt v0, p2, :cond_7

    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lt v0, p1, :cond_7

    .line 2215
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2217
    iput p2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_4

    .line 2219
    :cond_7
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2220
    mul-int v0, v7, p2

    div-int/2addr v0, p1

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_4

    .line 2224
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainBarAlpha(I)V

    .line 2226
    sub-int v0, v10, v3

    if-ge v0, p1, :cond_d

    .line 2227
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2228
    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2229
    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2230
    iput p2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2237
    :goto_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2238
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2239
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    .line 2232
    :cond_a
    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2233
    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2234
    iput p2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_5

    .line 2241
    :cond_b
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    .line 2245
    :cond_c
    const/4 v0, 0x0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2246
    const/4 v0, 0x0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2247
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2250
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2251
    sub-int v0, v10, v3

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2252
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2253
    const/4 v0, 0x0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2264
    :goto_6
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2265
    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lt v0, p1, :cond_1

    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lt v0, p2, :cond_1

    .line 2266
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2268
    iput p2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_4

    .line 2255
    :cond_e
    sub-int v0, v10, v3

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2256
    const/4 v0, 0x0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2257
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_6

    .line 2271
    :cond_f
    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lt v0, p2, :cond_1

    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lt v0, p1, :cond_1

    .line 2272
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    iput p2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2274
    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_4

    .line 2289
    :cond_10
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 2293
    :cond_11
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2294
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(II)V

    .line 2295
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_light"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2296
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    const v1, 0x7f02042c

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2298
    :cond_12
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public changePreviewModeOnUiThread(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1924
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_0

    .line 1925
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 1926
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1927
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1930
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/PreviewController$8;-><init>(Lcom/lge/camera/controller/PreviewController;II)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1936
    return-void
.end method

.method public changeQuickPreviewMode(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2016
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0175

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2017
    .local v6, "previewLayout":Landroid/view/View;
    const/4 v7, 0x0

    .line 2019
    .local v7, "wideMargin":I
    int-to-double v0, p1

    int-to-double v8, p2

    div-double/2addr v0, v8

    const-wide v8, 0x3ff599999999999aL    # 1.35

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1

    .line 2020
    sget p1, Lcom/lge/camera/properties/CameraConstants;->smartCoverWideSizeWidth:I

    .line 2021
    sget p2, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    .line 2022
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    sub-int v0, p1, v0

    div-int/lit8 v7, v0, 0x2

    .line 2030
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2032
    .local v4, "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    .line 2034
    .local v5, "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_2

    .line 2035
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2042
    .restart local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2043
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2044
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2046
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2047
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2049
    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lt v0, p2, :cond_0

    iget v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lt v0, p1, :cond_0

    .line 2050
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iput p2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2052
    iput p1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2053
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2056
    :cond_0
    mul-int/lit8 v0, v7, -0x1

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2058
    const/16 v0, 0xd

    invoke-virtual {v5, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2059
    const/16 v0, 0xe

    invoke-virtual {v5, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2061
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewController;->setOtherLayoutParam(IIILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 2062
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2063
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_3

    .line 2064
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2069
    :goto_2
    return-void

    .line 2025
    .end local v4    # "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    sget p1, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    .line 2026
    sget p2, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    .line 2027
    const/4 v7, 0x0

    goto :goto_0

    .line 2038
    .restart local v4    # "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v5    # "surfaceParam":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 2066
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2067
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(II)V

    goto :goto_2
.end method

.method public checkFaceDetectionNoUI()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2712
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionHasUI:Z

    if-nez v1, :cond_0

    .line 2715
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkQualityAndStartPreview()V
    .locals 0

    .prologue
    .line 3097
    return-void
.end method

.method public checkStartPreviewCallback()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2429
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Time Info][6] Device StartPreview End : Camera Driver Preview Operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    const-string v2, "CameraApp"

    const-string v3, "##### TIME_CHECK previewStart onPreviewFrame!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2434
    const-string v2, "CameraApp"

    const-string v3, "exit checkStartPreviewCallback by (!checkMediator())"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    :cond_0
    :goto_0
    return-void

    .line 2457
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-nez v2, :cond_2

    .line 2458
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 2461
    :cond_2
    invoke-static {v7}, Lcom/lge/camera/util/Common;->checkEnteringTime(Z)V

    .line 2463
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2464
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$13;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$13;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2482
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_plane_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2483
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$15;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$15;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2498
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-ne v2, v7, :cond_3

    const-string v2, "shotmode_dual_camera"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2502
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGestureEngineRunable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 2505
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_4

    .line 2506
    const-string v2, "CameraApp"

    const-string v3, "startPreview OneShotPreviewCallback onPreviewFrame [start]"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->setEngineProcessor()V

    .line 2510
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-ne v2, v7, :cond_a

    .line 2511
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v2, v7}, Lcom/lge/camera/components/OpenGLSurfaceView;->setFlipHorizontal(Z)V

    .line 2520
    :goto_3
    const-string v2, "CameraApp"

    const-string v3, "startPreview OneShotPreviewCallback onPreviewFrame [end]"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    :cond_4
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 2524
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 2525
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 2526
    sput-boolean v6, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 2527
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bEnterSetting =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSettingControllerVisible()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2532
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$17;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$17;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2540
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getGoingAutoReviewForQuickView()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2543
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 2544
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2545
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$18;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$18;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2554
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_c

    .line 2555
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$19;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$19;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2584
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_7

    .line 2585
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2586
    .local v1, "parameter":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_7

    .line 2587
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setFocalLength(F)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2597
    .end local v1    # "parameter":Landroid/hardware/Camera$Parameters;
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkPreviewPanelController()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->snapshotOnIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2600
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSnapshotRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2474
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$14;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$14;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 2490
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$16;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$16;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 2513
    :cond_a
    const-string v2, "shotmode_main_beauty"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2515
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/OpenGLSurfaceView;->setFlipHorizontal(Z)V

    goto/16 :goto_3

    .line 2517
    :cond_b
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/CameraPreview;->setFlipHorizontal(Z)V

    goto/16 :goto_3

    .line 2590
    :catch_0
    move-exception v0

    .line 2591
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2594
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_c
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->unregisterObjectCallback()V

    goto :goto_4
.end method

.method public closeCamera()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1049
    const-string v4, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeCamera()-start, mCameraDevice is null?:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    .line 1052
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->release()V

    .line 1054
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-eqz v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsCamera;->release()V

    .line 1059
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 1062
    :cond_1
    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 1063
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 1065
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1074
    const-string v1, "CameraApp"

    const-string v2, "closeCamera()-zoom reset"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_2

    .line 1077
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1084
    :cond_2
    :goto_2
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 1085
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    .line 1086
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 1088
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->release()Z

    .line 1089
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 1090
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    .line 1092
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "closeCamera()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    return-void

    :cond_4
    move v1, v3

    .line 1049
    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "closeCamera setZoomChangeListener exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1079
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1080
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "closeCamera zoom reset exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public doCommandDelayed(Ljava/lang/String;J)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 2791
    return-void
.end method

.method protected doOnEffectesError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 3120
    return-void
.end method

.method protected doOnEffectsUpdate(II)V
    .locals 0
    .param p1, "effectId"    # I
    .param p2, "effectMsg"    # I

    .prologue
    .line 3117
    return-void
.end method

.method public effectsCamcorderActive()Z
    .locals 1

    .prologue
    .line 3016
    const/4 v0, 0x0

    return v0
.end method

.method public effectsCameraActive()Z
    .locals 1

    .prologue
    .line 3020
    const/4 v0, 0x0

    return v0
.end method

.method public enableQuickWindowButton(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2123
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableQuickWindowButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v0, :cond_0

    .line 2127
    if-eqz p1, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/ImageButtonEx;->setVisibility(I)V

    .line 2129
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/ShutterButton;->setVisibility(I)V

    .line 2130
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 2131
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 2139
    :cond_0
    :goto_0
    return-void

    .line 2133
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/ImageButtonEx;->setVisibility(I)V

    .line 2134
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/ShutterButton;->setVisibility(I)V

    .line 2135
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 2136
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBeautyshotProgress()Z
    .locals 1

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isBeautyshotProgress:Z

    return v0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 225
    const-string v0, "CameraApp"

    const-string v1, "Camera ref is null. getCameraDevice() return null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    return-object v0
.end method

.method public getCameraGLPreviewExtra()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getCameraPreview()Lcom/lge/camera/components/CameraPreview;
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    return-object v0
.end method

.method public getCurrentModule()Lcom/lge/camera/module/Module;
    .locals 1

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    return-object v0
.end method

.method public getEffectRecorderPausing()Z
    .locals 1

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 2937
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/lge/camera/EffectsRecorder;->getIsOnPausing()Z

    move-result v0

    .line 2939
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    return-object v0
.end method

.method public getFocusAreaHeight()I
    .locals 1

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFocusAreaHeight()I

    move-result v0

    return v0
.end method

.method public getLG()Lcom/lge/hardware/LGCamera;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    if-nez v0, :cond_0

    .line 233
    const-string v0, "CameraApp"

    const-string v1, "LGCamera ref is null. getLG() return null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    return-object v0
.end method

.method public getLiveEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveEffectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrientationDegree()I
    .locals 1

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    return v0
.end method

.method public getPIPCameraController()Lcom/lge/camera/controller/camera/PIPCameraController;
    .locals 1

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    return-object v0
.end method

.method public getPIPController()Lcom/lge/camera/controller/PIPController;
    .locals 2

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3071
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    .line 3073
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    goto :goto_0
.end method

.method public getPIPRecordingController()Lcom/lge/camera/controller/camcorder/PIPRecordingController;
    .locals 1

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    return-object v0
.end method

.method public abstract getPreviewSizeOnDevice()Ljava/lang/String;
.end method

.method public abstract getPreviewSizeOnScreen()Ljava/lang/String;
.end method

.method public getPreviousEffectType()I
    .locals 1

    .prologue
    .line 3100
    const/4 v0, 0x0

    return v0
.end method

.method public getPreviousResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1811
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0175

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1812
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0176

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0177

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0178

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1816
    return-void
.end method

.method public hideSmartZoomFocusView()V
    .locals 0

    .prologue
    .line 3049
    return-void
.end method

.method public hideSubWindowResizeHandler()V
    .locals 0

    .prologue
    .line 3043
    return-void
.end method

.method public inflateStub(I)Landroid/view/View;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initController()V
    .locals 10

    .prologue
    const v8, 0x7f0d0227

    const/4 v9, 0x0

    .line 155
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d00c6

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 157
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d0176

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/CameraPreview;

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    .line 158
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v6, p0}, Lcom/lge/camera/components/CameraPreview;->setDeviceListener(Lcom/lge/camera/components/CameraPreview$OnDeviceListener;)V

    .line 159
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d0177

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/OpenGLSurfaceView;

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 160
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v6, p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->initOpenGLSurfaceView(Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;)V

    .line 161
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d0178

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceView;

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 163
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d0175

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 165
    .local v5, "previewLayout":Landroid/view/View;
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d00d2

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 167
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d0228

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/ImageButtonEx;

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    .line 169
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d0229

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateImageButton;

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    .line 171
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d022a

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/ShutterButton;

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    .line 173
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d022b

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateImageButton;

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    .line 176
    const/16 v6, 0x1a

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 177
    const/16 v3, 0x17a

    .line 178
    .local v3, "mSmartCoverSizeWidth":I
    const/16 v2, 0x11b

    .line 179
    .local v2, "mSmartCoverSizeHeight":I
    const/16 v4, 0x1f7

    .line 180
    .local v4, "mSmartCoverWideSizeWidth":I
    const/high16 v1, -0x3df40000    # -35.0f

    .line 181
    .local v1, "mShutterButtonMargin":F
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 183
    .local v0, "mExitButtonMargin":F
    invoke-static {v3, v2, v4}, Lcom/lge/camera/properties/CameraConstants;->setSmartCoverSize(III)V

    .line 185
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 187
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 190
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v6, v1}, Lcom/lge/camera/components/ShutterButton;->setTranslationY(F)V

    .line 191
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6, v1}, Lcom/lge/camera/components/RotateImageButton;->setTranslationY(F)V

    .line 193
    .end local v0    # "mExitButtonMargin":F
    .end local v1    # "mShutterButtonMargin":F
    .end local v2    # "mSmartCoverSizeHeight":I
    .end local v3    # "mSmartCoverSizeWidth":I
    .end local v4    # "mSmartCoverWideSizeWidth":I
    :cond_0
    invoke-virtual {p0, v9}, Lcom/lge/camera/controller/PreviewController;->enableQuickWindowButton(Z)V

    .line 195
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    if-eqz v6, :cond_1

    .line 196
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mQuickWindowExitButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/ImageButtonEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mQuickShutterButtonClickListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/ShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mQuickShutterButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "shotmode_main_beauty"

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "shotmode_front_beauty"

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 212
    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 214
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v6, :cond_3

    .line 215
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 216
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 219
    :cond_3
    iget-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    .line 220
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "previewLayout initController ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void

    .line 208
    :cond_4
    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    goto :goto_0
.end method

.method protected initPIPSubWindow(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoSize"    # Ljava/lang/String;

    .prologue
    .line 3001
    return-void
.end method

.method public initSmartZoomFocusView()V
    .locals 0

    .prologue
    .line 3055
    return-void
.end method

.method protected initializeEffectsPreview()V
    .locals 0

    .prologue
    .line 3082
    return-void
.end method

.method public initializeRecordingEffect(Ljava/lang/String;JIJ)V
    .locals 0
    .param p1, "filepath_name"    # Ljava/lang/String;
    .param p2, "mMaxFileSize"    # J
    .param p4, "mMaxDurationTime"    # I
    .param p5, "freeSpace"    # J

    .prologue
    .line 3079
    return-void
.end method

.method public isCamcorderRotation(Z)Z
    .locals 1
    .param p1, "checkWithPause"    # Z

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v0

    return v0
.end method

.method public isCameraDeviceClosed()Z
    .locals 1

    .prologue
    .line 2891
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraReleaseOnGoing()Z
    .locals 1

    .prologue
    .line 1870
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    return v0
.end method

.method public isChangeMode()Z
    .locals 1

    .prologue
    .line 2387
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    return v0
.end method

.method public isConfigureLandscape()Z
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    return v0
.end method

.method public isDualCameraActive()Z
    .locals 1

    .prologue
    .line 3028
    const/4 v0, 0x0

    return v0
.end method

.method public isDualRecordingActive()Z
    .locals 1

    .prologue
    .line 3024
    const/4 v0, 0x0

    return v0
.end method

.method public isLiveEffectActive()Z
    .locals 1

    .prologue
    .line 3036
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnGoing()Z
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    return v0
.end method

.method public isReadyEngineProcessor()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    return v0
.end method

.method public isSensorSupportBackdropper()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    return v0
.end method

.method public isSmartZoomRecordingActive()Z
    .locals 1

    .prologue
    .line 3032
    const/4 v0, 0x0

    return v0
.end method

.method public jpegCallbackOnDualCameraPictureTaken([B)V
    .locals 3
    .param p1, "previewFrameJpeg"    # [B

    .prologue
    .line 2895
    move-object v0, p1

    .line 2896
    .local v0, "frameJpeg":[B
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewController$25;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/controller/PreviewController$25;-><init>(Lcom/lge/camera/controller/PreviewController;[B)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2904
    return-void
.end method

.method protected makeEffectList()V
    .locals 0

    .prologue
    .line 2987
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x4

    const/4 v3, 0x1

    .line 1202
    const-string v1, "CameraApp"

    const-string v2, "onCreate-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1204
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1205
    new-instance v1, Lcom/lge/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1207
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1210
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v1, v0}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1214
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v0, v1}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    .line 1215
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v2, v2, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v2, v2, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :cond_1
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 1221
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1222
    new-instance v0, Lcom/lge/camera/EffectsCamera;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/lge/camera/EffectsCamera;-><init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 1225
    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1227
    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1228
    const-string v0, "CameraApp"

    const-string v1, "startPreviewThread start-onCreate"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    .line 1230
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1233
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "onCreate-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void

    .line 1210
    :cond_4
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1688
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    if-nez v0, :cond_0

    .line 1691
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/util/SecureImageUtil;->release()V

    .line 1693
    :cond_0
    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 1694
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 1695
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 1696
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPreviousResolutionBack:Ljava/lang/String;

    .line 1697
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPreviousResolutionFront:Ljava/lang/String;

    .line 1699
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->onDestroy()V

    .line 1702
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 1703
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewController;->releaseEngine(Z)V

    .line 1705
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1706
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    .line 1707
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 1708
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 1709
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1710
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

    .line 1712
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 1713
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method public onLearningDoneProcess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2800
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2801
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2802
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    .line 2823
    :cond_0
    :goto_0
    return-void

    .line 2804
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    .line 2807
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$24;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$24;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2820
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsCamera;->sendMessage(II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 18

    .prologue
    .line 1422
    const-string v14, "CameraApp"

    const-string v15, "onPause-start "

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 1425
    const/4 v14, 0x0

    sput-boolean v14, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 1426
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/lge/camera/util/Common;->setQuickWindowCameraMode(Z)V

    .line 1427
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    if-eqz v14, :cond_0

    .line 1428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "key_focus"

    const-string v16, "manual"

    invoke-interface/range {v14 .. v16}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1430
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    .line 1432
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mChangedAutoReviewToDefault:Z

    if-eqz v14, :cond_1

    .line 1433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "key_camera_auto_review"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mPrevAutoReviewVal:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1434
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1435
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mChangedAutoReviewToDefault:Z

    .line 1438
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplayLatchCountDown()V

    .line 1442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v14, :cond_2

    .line 1443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v14}, Lcom/lge/camera/components/OpenGLSurfaceView;->onPause()V

    .line 1446
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/camera/controller/PreviewController;->releaseEngine(Z)V

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->waitStartPreviewThreadDone()V

    .line 1450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1c

    .line 1451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "key_preview_size_on_device"

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v10

    .line 1454
    .local v10, "pref":Lcom/lge/camera/setting/ListPreference;
    const/4 v7, 0x0

    .line 1455
    .local v7, "indexOfPreviousResolution":I
    if-eqz v10, :cond_3

    .line 1456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v10, v14}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    .line 1459
    const/4 v14, -0x1

    if-ne v7, v14, :cond_3

    .line 1460
    const-string v14, "CameraApp"

    const-string v15, "indexOfPreviousResolution has wrong value"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :cond_3
    const/4 v11, 0x0

    .line 1465
    .local v11, "prefGroupBeforeSwap":Lcom/lge/camera/setting/PreferenceGroup;
    const/4 v9, 0x0

    .line 1466
    .local v9, "listPrefVideoSizeBeforeSwap":Lcom/lge/camera/setting/ListPreference;
    const/4 v8, 0x0

    .line 1467
    .local v8, "listPrefVideoModeBeforeSwap":Lcom/lge/camera/setting/ListPreference;
    const/4 v12, 0x0

    .line 1469
    .local v12, "previousResolutionBeforeSwap":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v14

    if-nez v14, :cond_16

    .line 1470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mPreviousResolutionFront:Ljava/lang/String;

    .line 1475
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v14

    if-nez v14, :cond_17

    .line 1476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v11

    .line 1481
    :goto_1
    if-eqz v11, :cond_4

    .line 1482
    const-string v14, "key_preview_size_on_device"

    invoke-virtual {v11, v14}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v9

    .line 1485
    const-string v14, "key_video_record_mode"

    invoke-virtual {v11, v14}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 1490
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->isBackKeyPressed()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1491
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-eqz v14, :cond_5

    .line 1492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "key_preview_size_on_device"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v14 .. v17}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1495
    :cond_5
    if-eqz v12, :cond_7

    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    .line 1498
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 1499
    .local v13, "videoModeBeforeSwap":Ljava/lang/String;
    const-string v14, "recordmode_dual"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "recordmode_live_effect"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "recordmode_smart_zoom"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1502
    :cond_6
    invoke-virtual {v9, v12}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1506
    .end local v13    # "videoModeBeforeSwap":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->setBackKeyPressed(Z)V

    .line 1509
    :cond_8
    const/4 v6, 0x0

    .line 1510
    .local v6, "index":I
    if-eqz v9, :cond_9

    if-eqz v12, :cond_9

    .line 1512
    invoke-virtual {v9, v12}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 1516
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v14

    if-nez v14, :cond_18

    .line 1517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;I)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;I)V

    .line 1532
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isLiveEffectActive()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v15}, Lcom/lge/camera/ControllerFunction;->getLiveEffect()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1534
    .local v5, "effectIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v14

    if-nez v14, :cond_19

    .line 1535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v5}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLiveEffectFaceIndex(Landroid/content/Context;I)V

    .line 1542
    .end local v5    # "effectIndex":I
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isDualRecordingActive()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v2

    .line 1544
    .local v2, "DualRecordingPipIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v14

    if-nez v14, :cond_1a

    .line 1545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveDualCamcorderPIPIndex(Landroid/content/Context;I)V

    .line 1552
    .end local v2    # "DualRecordingPipIndex":I
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isSmartZoomRecordingActive()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v3

    .line 1554
    .local v3, "SmartZoomPipIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v14

    if-nez v14, :cond_1b

    .line 1555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveSmartZoomPIPIndex(Landroid/content/Context;I)V

    .line 1577
    .end local v3    # "SmartZoomPipIndex":I
    .end local v6    # "index":I
    .end local v7    # "indexOfPreviousResolution":I
    .end local v8    # "listPrefVideoModeBeforeSwap":Lcom/lge/camera/setting/ListPreference;
    .end local v9    # "listPrefVideoSizeBeforeSwap":Lcom/lge/camera/setting/ListPreference;
    .end local v10    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v11    # "prefGroupBeforeSwap":Lcom/lge/camera/setting/PreferenceGroup;
    .end local v12    # "previousResolutionBeforeSwap":Ljava/lang/String;
    :cond_c
    :goto_5
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 1581
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_21

    .line 1582
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isLiveEffectActive()Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 1583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1605
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->isChangingToOtherActivity()Z

    move-result v14

    if-eqz v14, :cond_24

    .line 1606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v14

    if-nez v14, :cond_f

    .line 1607
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/util/CameraHolder;->keep()V

    .line 1610
    :cond_f
    :try_start_0
    const-string v14, "CameraApp"

    const-string v15, "check closeCamera"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->setChangingToOtherActivity(Z)V

    .line 1651
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v14, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v14

    if-eqz v14, :cond_11

    .line 1652
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1654
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/camera/controller/PreviewController;->releaseEngine(Z)V

    .line 1656
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v14, :cond_12

    .line 1658
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v14}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->unbind()V

    .line 1659
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    .line 1662
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-eqz v14, :cond_13

    .line 1663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v14}, Lcom/lge/camera/controller/camera/PIPCameraController;->unbind()V

    .line 1664
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    .line 1667
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v14, :cond_14

    .line 1668
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v14}, Lcom/lge/camera/EffectsRecorder;->close()V

    .line 1669
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/lge/camera/EffectsRecorder;->setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/lge/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/lge/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1672
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1675
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-eqz v14, :cond_15

    .line 1676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v14}, Lcom/lge/camera/EffectsCamera;->close()V

    .line 1677
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/lge/camera/EffectsCamera;->setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/lge/camera/EffectsCamera;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/lge/camera/EffectsCamera;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1680
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 1682
    :cond_15
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 1683
    const-string v14, "CameraApp"

    const-string v15, "onPause-end "

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    return-void

    .line 1472
    .restart local v7    # "indexOfPreviousResolution":I
    .restart local v8    # "listPrefVideoModeBeforeSwap":Lcom/lge/camera/setting/ListPreference;
    .restart local v9    # "listPrefVideoSizeBeforeSwap":Lcom/lge/camera/setting/ListPreference;
    .restart local v10    # "pref":Lcom/lge/camera/setting/ListPreference;
    .restart local v11    # "prefGroupBeforeSwap":Lcom/lge/camera/setting/PreferenceGroup;
    .restart local v12    # "previousResolutionBeforeSwap":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mPreviousResolutionBack:Ljava/lang/String;

    goto/16 :goto_0

    .line 1478
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v11

    goto/16 :goto_1

    .line 1524
    .restart local v6    # "index":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;I)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 1538
    .restart local v5    # "effectIndex":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v5}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontLiveEffectFaceIndex(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 1548
    .end local v5    # "effectIndex":I
    .restart local v2    # "DualRecordingPipIndex":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontDualCamcorderPIPIndex(Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 1558
    .end local v2    # "DualRecordingPipIndex":I
    .restart local v3    # "SmartZoomPipIndex":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontSmartZoomPIPIndex(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 1563
    .end local v3    # "SmartZoomPipIndex":I
    .end local v6    # "index":I
    .end local v7    # "indexOfPreviousResolution":I
    .end local v8    # "listPrefVideoModeBeforeSwap":Lcom/lge/camera/setting/ListPreference;
    .end local v9    # "listPrefVideoSizeBeforeSwap":Lcom/lge/camera/setting/ListPreference;
    .end local v10    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v11    # "prefGroupBeforeSwap":Lcom/lge/camera/setting/PreferenceGroup;
    .end local v12    # "previousResolutionBeforeSwap":Ljava/lang/String;
    :cond_1c
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isDualCamera : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isDualCameraActive()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isDualCameraActive()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v1

    .line 1566
    .local v1, "DualCameraPipIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v14

    if-nez v14, :cond_1d

    .line 1567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveDualCameraPIPIndex(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 1569
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 1570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontDualCameraPIPIndex(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 1584
    .end local v1    # "DualCameraPipIndex":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isDualRecordingActive()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1586
    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "key_video_record_mode"

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "recordmode_wdr"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 1588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "key_video_record_mode"

    const-string v16, "recordmode_normal"

    invoke-interface/range {v14 .. v16}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    .line 1589
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isSmartZoomRecordingActive()Z

    move-result v14

    if-eqz v14, :cond_e

    goto/16 :goto_6

    .line 1591
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v14

    if-nez v14, :cond_e

    .line 1592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v14

    if-nez v14, :cond_23

    const-string v14, "face_tracking"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v16, "key_focus"

    invoke-interface/range {v15 .. v16}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 1595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 1602
    :cond_22
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v15, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v14, v15}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1596
    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_22

    .line 1597
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v14

    if-eqz v14, :cond_22

    .line 1599
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    goto :goto_9

    .line 1612
    :catch_0
    move-exception v4

    .line 1613
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1618
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_24
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v14

    if-nez v14, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->effectsCameraActive()Z

    move-result v14

    if-nez v14, :cond_28

    .line 1619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v14, :cond_25

    .line 1620
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1622
    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v14, :cond_26

    .line 1623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1625
    :cond_26
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    if-eqz v14, :cond_27

    .line 1626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1628
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 1629
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v14, :cond_29

    .line 1630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v14, :cond_28

    .line 1631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v15}, Lcom/lge/camera/components/OpenGLSurfaceView;->close(Landroid/hardware/Camera;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1643
    :cond_28
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->isConfigurationChanging()Z

    move-result v14

    if-nez v14, :cond_10

    .line 1644
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    goto/16 :goto_8

    .line 1634
    :cond_29
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v14, :cond_28

    .line 1635
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v15}, Lcom/lge/camera/components/CameraPreview;->close(Landroid/hardware/Camera;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    .line 1639
    :catch_1
    move-exception v4

    .line 1640
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "CameraApp"

    const-string v15, "NullPointerException!"

    invoke-static {v14, v15, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3147
    return-void
.end method

.method public onResume()V
    .locals 24

    .prologue
    .line 1239
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onResume-start appmode:"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 1244
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 1245
    const-string v2, "off"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 1246
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mEffectType : "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, " mEffectParameter : "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1253
    sget v13, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    .line 1254
    .local v13, "maxScreenSizeX":I
    sget v14, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    .line 1261
    .local v14, "maxScreenSizeY":I
    :goto_0
    const/4 v2, 0x1

    const/high16 v3, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    move/from16 v21, v0

    .line 1265
    .local v21, "subWindowWidth":I
    const/4 v2, 0x1

    const/high16 v3, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1272
    .local v18, "subWindowHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09001a

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v19

    .line 1274
    .local v19, "subWindowMarginX":I
    const/16 v20, 0x0

    .line 1276
    .local v20, "subWindowMarginY":I
    sub-int v6, v13, v19

    .line 1277
    .local v6, "subWindowX1":I
    sub-int v7, v14, v20

    .line 1278
    .local v7, "subWindowY1":I
    sub-int v4, v6, v21

    .line 1279
    .local v4, "subWindowX0":I
    sub-int v5, v7, v18

    .line 1281
    .local v5, "subWindowY0":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-nez v2, :cond_7

    .line 1283
    new-instance v2, Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    .line 1289
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v2, :cond_0

    .line 1290
    new-instance v2, Lcom/lge/camera/EffectsRecorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1308
    :cond_0
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/PreviewController;->setEffectRecorderPausing(Z)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1311
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/lge/media/CamcorderProfileEx;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v2, v3}, Lcom/lge/media/CamcorderProfileEx;->get(II)Lcom/lge/media/CamcorderProfileEx;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    .line 1317
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "profile : "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, "x"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1323
    const/4 v10, 0x0

    .line 1324
    .local v10, "indexOfPreviousResolution":I
    const/4 v11, 0x0

    .line 1325
    .local v11, "indexOfPreviousResolutionSwap":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_b

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;)I

    move-result v10

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;)I

    move-result v11

    .line 1341
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v16

    .line 1343
    .local v16, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v16, :cond_c

    const/4 v2, -0x1

    if-eq v10, v2, :cond_c

    .line 1344
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v10

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 1353
    :goto_5
    const/16 v17, 0x0

    .line 1354
    .local v17, "prefGroupSwap":Lcom/lge/camera/setting/PreferenceGroup;
    const/4 v12, 0x0

    .line 1355
    .local v12, "listPrefVideoSize":Lcom/lge/camera/setting/ListPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_d

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v17

    .line 1360
    :goto_6
    if-eqz v17, :cond_2

    .line 1361
    const-string v2, "key_preview_size_on_device"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v12

    .line 1364
    if-eqz v12, :cond_2

    const/4 v2, -0x1

    if-eq v11, v2, :cond_2

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_e

    .line 1367
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mPreviousResolutionFront:Ljava/lang/String;

    .line 1383
    .end local v10    # "indexOfPreviousResolution":I
    .end local v11    # "indexOfPreviousResolutionSwap":I
    .end local v12    # "listPrefVideoSize":Lcom/lge/camera/setting/ListPreference;
    .end local v16    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v17    # "prefGroupSwap":Lcom/lge/camera/setting/PreferenceGroup;
    :cond_2
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v22

    .line 1384
    .local v22, "video_state":I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onResume : mPreviewing:"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, ", mStartPreviewOnGoing:"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, ", video_state: "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const/4 v15, 0x0

    .line 1389
    .local v15, "needStartPreview":Z
    const-wide/16 v8, 0x0

    .line 1390
    .local v8, "delayTime":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    if-nez v2, :cond_f

    sget-boolean v2, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    if-nez v2, :cond_f

    const/4 v2, 0x6

    move/from16 v0, v22

    if-eq v0, v2, :cond_f

    const/4 v2, 0x5

    move/from16 v0, v22

    if-eq v0, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f

    .line 1396
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->onResume()V

    .line 1398
    const/4 v15, 0x1

    .line 1399
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    .line 1404
    :goto_8
    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1405
    const-wide/16 v8, 0x12c

    .line 1406
    const/4 v15, 0x1

    .line 1409
    :cond_3
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1412
    :cond_4
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mStartPreviewThread : OnResume - mUseOnResume = "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, " delayTime is = "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PreviewController;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PreviewController;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3, v8, v9}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 1417
    :cond_5
    const-string v2, "CameraApp"

    const-string v3, "onResume-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return-void

    .line 1256
    .end local v4    # "subWindowX0":I
    .end local v5    # "subWindowY0":I
    .end local v6    # "subWindowX1":I
    .end local v7    # "subWindowY1":I
    .end local v8    # "delayTime":J
    .end local v13    # "maxScreenSizeX":I
    .end local v14    # "maxScreenSizeY":I
    .end local v15    # "needStartPreview":Z
    .end local v18    # "subWindowHeight":I
    .end local v19    # "subWindowMarginX":I
    .end local v20    # "subWindowMarginY":I
    .end local v21    # "subWindowWidth":I
    .end local v22    # "video_state":I
    :cond_6
    sget v13, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    .line 1257
    .restart local v13    # "maxScreenSizeX":I
    sget v14, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    .restart local v14    # "maxScreenSizeY":I
    goto/16 :goto_0

    .line 1286
    .restart local v4    # "subWindowX0":I
    .restart local v5    # "subWindowY0":I
    .restart local v6    # "subWindowX1":I
    .restart local v7    # "subWindowY1":I
    .restart local v18    # "subWindowHeight":I
    .restart local v19    # "subWindowMarginX":I
    .restart local v20    # "subWindowMarginY":I
    .restart local v21    # "subWindowWidth":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->setSubWindowPosition(IIII)V

    goto/16 :goto_1

    .line 1294
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-nez v2, :cond_9

    .line 1295
    new-instance v2, Lcom/lge/camera/controller/camera/PIPCameraController;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/camera/controller/camera/PIPCameraController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    .line 1301
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v2, :cond_0

    .line 1302
    new-instance v2, Lcom/lge/camera/EffectsCamera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/lge/camera/EffectsCamera;-><init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    goto/16 :goto_2

    .line 1298
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/lge/camera/controller/camera/PIPCameraController;->setSubWindowPosition(IIII)V

    goto :goto_9

    .line 1312
    :cond_a
    const/16 v2, 0xa

    goto/16 :goto_3

    .line 1333
    .restart local v10    # "indexOfPreviousResolution":I
    .restart local v11    # "indexOfPreviousResolutionSwap":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;)I

    move-result v10

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;)I

    move-result v11

    goto/16 :goto_4

    .line 1348
    .restart local v16    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_c
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error: pref = "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, ", indexOfPreviousResolution = "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1358
    .restart local v12    # "listPrefVideoSize":Lcom/lge/camera/setting/ListPreference;
    .restart local v17    # "prefGroupSwap":Lcom/lge/camera/setting/PreferenceGroup;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v17

    goto/16 :goto_6

    .line 1372
    :cond_e
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mPreviousResolutionBack:Ljava/lang/String;

    goto/16 :goto_7

    .line 1401
    .end local v10    # "indexOfPreviousResolution":I
    .end local v11    # "indexOfPreviousResolutionSwap":I
    .end local v12    # "listPrefVideoSize":Lcom/lge/camera/setting/ListPreference;
    .end local v16    # "pref":Lcom/lge/camera/setting/ListPreference;
    .end local v17    # "prefGroupSwap":Lcom/lge/camera/setting/PreferenceGroup;
    .restart local v8    # "delayTime":J
    .restart local v15    # "needStartPreview":Z
    .restart local v22    # "video_state":I
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    goto/16 :goto_8
.end method

.method public onSetBitmapDoneProcess()V
    .locals 2

    .prologue
    .line 2827
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PIPController;->setBitmapDone(Z)V

    .line 2828
    return-void
.end method

.method public pauseAndResumeRecording(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 3088
    return-void
.end method

.method public quickFunctionControllerRefresh(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 2840
    return-void
.end method

.method protected readEffectParameter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3012
    const/4 v0, 0x0

    return-object v0
.end method

.method protected readEffectType()I
    .locals 1

    .prologue
    .line 3008
    const/4 v0, 0x0

    return v0
.end method

.method public releaseEngine(Z)V
    .locals 3
    .param p1, "checkEngineTag"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1727
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_0

    .line 1728
    if-eqz p1, :cond_1

    .line 1729
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    const-string v1, "AutoPanorama"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    const-string v1, "FaceBeauty"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 1732
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1733
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->destroy()V

    .line 1734
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isBeautyshotProgress:Z

    if-nez v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 1739
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1740
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->destroy()V

    .line 1741
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 1742
    const-string v0, "CameraApp"

    const-string v1, "release engine complete."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePreviewCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "CameraApp"

    const-string v1, "removePreviewCallback call"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 671
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    goto :goto_0
.end method

.method public restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 5
    .param p1, "lgParameter"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "useCallBack"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1096
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartPreview()-useCallBack : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    if-eqz v1, :cond_1

    .line 1098
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "Not previewing now, do nothing."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_0
    return-void

    .line 1101
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 1103
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 1104
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setApplicationMode(I)V

    .line 1110
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewController$5;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewController$5;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1106
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setApplicationMode(I)V

    goto :goto_1

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1113
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewController$4;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public restoreSubWindow()V
    .locals 1

    .prologue
    .line 2923
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    .line 2924
    .local v0, "pip":Lcom/lge/camera/controller/PIPController;
    if-eqz v0, :cond_0

    .line 2925
    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->restoreSubWindow()V

    .line 2927
    :cond_0
    return-void
.end method

.method public setBackgroundColorBlack()V
    .locals 4

    .prologue
    .line 1819
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00e5

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1820
    .local v0, "initView":Landroid/view/View;
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0175

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1821
    .local v1, "preview":Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1822
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1823
    return-void
.end method

.method public setBackgroundColorWhite()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1826
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d00e5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1827
    .local v1, "initView":Landroid/view/View;
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0175

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1828
    .local v2, "preview":Landroid/view/View;
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d00e6

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1829
    .local v0, "imgView":Landroid/widget/ImageView;
    const v3, 0x7f02042b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1830
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1831
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1832
    return-void
.end method

.method public setBeautyshotProgress(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 1719
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->isBeautyshotProgress:Z

    .line 1720
    return-void
.end method

.method public setButtonRemainRefresh()V
    .locals 1

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    .line 2850
    return-void
.end method

.method public setChangeMode()V
    .locals 1

    .prologue
    .line 2383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 2384
    return-void
.end method

.method public setEffectRecorderPausing(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 2931
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsRecorder;->isOnPausing(Z)V

    .line 2933
    :cond_0
    return-void
.end method

.method public setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z
    .locals 6
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "lock"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2391
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 2425
    :cond_1
    :goto_0
    return v1

    .line 2394
    :cond_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### setEnable3ALocks : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    if-nez p1, :cond_6

    .line 2398
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/hardware/LGCamera;->getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object p1

    .line 2400
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2401
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2402
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2404
    :cond_3
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2405
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2407
    :cond_4
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2421
    :catch_0
    move-exception v0

    .line 2422
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    const-string v3, "RuntimeException-setEnable3ALocks: "

    invoke-static {v1, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_5
    move v1, v2

    .line 2425
    goto :goto_0

    .line 2411
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2412
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2413
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2415
    :cond_7
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2416
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setEngineProcessor()V
    .locals 3

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "shotmode_main_beauty"

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "shotmode_front_beauty"

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    .line 659
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/CameraPreview;->setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    goto :goto_1
.end method

.method public setLiveEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    .line 2994
    return-void
.end method

.method public setLockScreenPreventPreview(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 251
    return-void
.end method

.method public setMainButtonVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 2866
    return-void
.end method

.method public setPrevResolutionWithStoredValue()V
    .locals 0

    .prologue
    .line 3114
    return-void
.end method

.method public setPreviewDisplayLatchCountDown()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 637
    :cond_0
    return-void
.end method

.method public setPreviewing(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1135
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 1136
    return-void
.end method

.method public setPreviousResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 3108
    return-void
.end method

.method public setQuickButtonForcedDisable(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 2855
    return-void
.end method

.method public setQuickButtonMenuEnable(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "dimByEnable"    # Z

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 2845
    return-void
.end method

.method public setQuickFunctionAllMenuEnabled(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "dimByEnable"    # Z

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 2834
    return-void
.end method

.method public setRendered(Z)V
    .locals 0
    .param p1, "render"    # Z

    .prologue
    .line 1898
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 1899
    return-void
.end method

.method public setSmartZoomFocusViewPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3052
    return-void
.end method

.method public setStartPreviewOnGoing(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1139
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 1140
    return-void
.end method

.method public setSwitcherVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 2872
    return-void
.end method

.method public setThumbnailButtonVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 2878
    return-void
.end method

.method public setupHolder(Z)V
    .locals 4
    .param p1, "bRender"    # Z

    .prologue
    .line 1874
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupHolder(): bRender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 1877
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1884
    :cond_1
    const/4 v0, 0x0

    .line 1885
    .local v0, "holder":Landroid/view/SurfaceHolder;
    if-eqz p1, :cond_2

    .line 1886
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1890
    :goto_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 1888
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_1
.end method

.method public show()V
    .locals 8

    .prologue
    const v7, 0x7f0d0178

    const v6, 0x7f0d0177

    const v5, 0x7f0d0176

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1793
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFreePanoramaBlackBg()V

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0175

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1799
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1801
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1802
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1808
    :goto_0
    return-void

    .line 1804
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1806
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showQuickWindowCamera(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2072
    if-eqz p1, :cond_2

    .line 2073
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideIndicatorController()V

    .line 2074
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setModeMenuVisibility(I)V

    .line 2075
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hidePreviewPanelController()V

    .line 2076
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 2077
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3, v2, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 2078
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setModeMenuVisibility(I)V

    .line 2079
    const-string v1, "manual"

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2081
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 2083
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2085
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 2086
    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    .line 2088
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "off"

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2091
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mPrevAutoReviewVal:Ljava/lang/String;

    .line 2093
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2094
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 2095
    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mChangedAutoReviewToDefault:Z

    .line 2120
    :cond_1
    :goto_0
    return-void

    .line 2098
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 2099
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setModeMenuVisibility(I)V

    .line 2100
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator()V

    .line 2101
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showPreviewPanelController()V

    .line 2102
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 2103
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2104
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->showQuickMenuEnteringGuide(Z)V

    .line 2106
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 2107
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    if-eqz v1, :cond_4

    .line 2108
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    const-string v3, "manual"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2110
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 2111
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    .line 2113
    :cond_4
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangedAutoReviewToDefault:Z

    if-eqz v1, :cond_1

    .line 2114
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mPrevAutoReviewVal:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2116
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 2117
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mChangedAutoReviewToDefault:Z

    goto :goto_0
.end method

.method public showSmartZoomFocusView()V
    .locals 0

    .prologue
    .line 3046
    return-void
.end method

.method public showSubWindowResizeHandler(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3040
    return-void
.end method

.method public startFaceDetectionFromHal(Z)V
    .locals 3
    .param p1, "bHasUI"    # Z

    .prologue
    .line 2722
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_1

    .line 2763
    :cond_0
    :goto_0
    return-void

    .line 2726
    :cond_1
    const-string v0, "shotmode_full_continuous"

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "shotmode_main_beauty"

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "shotmode_front_beauty"

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    .line 2738
    :cond_3
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionHasUI:Z

    .line 2740
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2741
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HAL FACE] getMaxNumDetectedFaces : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 2744
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 2745
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$23;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$23;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2758
    :goto_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceDetection Start UI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 2760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    goto/16 :goto_0

    .line 2755
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto :goto_1
.end method

.method public startPIPFrameSubMenuRotation(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 3123
    return-void
.end method

.method public declared-synchronized startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 16
    .param p1, "lgParameter"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "useCallback"    # Z

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# startpreview [start] : , mPreviewing = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mStartPreviewOnGoing = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 258
    :cond_0
    const-string v12, "CameraApp"

    const-string v13, "startPreview()- ongoing finish"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :goto_0
    monitor-exit p0

    return-void

    .line 262
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 263
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startpreview return, isScreenLock="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 265
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "com.lge.camera.command.StartPreview"

    const-wide/16 v14, 0xc8

    invoke-interface {v12, v13, v14, v15}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 269
    :cond_2
    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 271
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    if-eqz v12, :cond_3

    .line 272
    const-string v12, "CameraApp"

    const-string v13, "startPreview()- ongoing return"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_3
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 278
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startPreview()-start mStartPreviewOnGoing="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",mEffectType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",mEffectParameter="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startPreview(): parameter = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", useCallback = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "shotmode_main_beauty"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_camera_shot_mode"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "shotmode_front_beauty"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_camera_shot_mode"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 289
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 292
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v13

    if-eq v12, v13, :cond_6

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    .line 296
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startPreview mCameraMode ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] getCameraId() ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 302
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGestureEngineRunable:Ljava/lang/Runnable;

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V
    :try_end_3
    .catch Lcom/lge/camera/util/CameraHardwareException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-eqz v12, :cond_7

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 323
    :cond_7
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v12, v13, v14}, Lcom/lge/camera/controller/PreviewController;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 325
    const/4 v8, 0x0

    .line 328
    .local v8, "lgParams":Lcom/lge/hardware/LGCamera$LGParameters;
    if-eqz p1, :cond_9

    .line 329
    move-object/from16 v8, p1

    .line 341
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 342
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    .line 346
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    if-eqz v12, :cond_b

    .line 347
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    goto/16 :goto_0

    .line 305
    .end local v8    # "lgParams":Lcom/lge/hardware/LGCamera$LGParameters;
    :catch_0
    move-exception v5

    .line 306
    .local v5, "e":Lcom/lge/camera/util/CameraHardwareException;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v13, Lcom/lge/camera/controller/PreviewController$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lge/camera/controller/PreviewController$1;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    const-string v12, "CameraApp"

    const-string v13, "CameraHardwareException : "

    invoke-static {v12, v13, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 314
    .end local v5    # "e":Lcom/lge/camera/util/CameraHardwareException;
    :catch_1
    move-exception v5

    .line 315
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "CameraApp"

    const-string v13, "Exception occured in ensureCameraDevice()"

    invoke-static {v12, v13, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 331
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "lgParams":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    invoke-virtual {v12}, Lcom/lge/hardware/LGCamera;->getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 333
    :catch_2
    move-exception v5

    .line 334
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v12, "CameraApp"

    const-string v13, "startPreview getParameters Exception"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    goto/16 :goto_0

    .line 342
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3

    .line 351
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "com.lge.camera.command.setting.ApplyAllSettings"

    invoke-interface {v12, v13, v8}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 353
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->setLiveeffectLimit()Ljava/lang/String;

    .line 358
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isPlayRingMode()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->isPlayRingVideoSizeSet:Z

    if-nez v12, :cond_e

    .line 359
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "key_preview_size_on_device"

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v10

    .line 360
    .local v10, "pref":Lcom/lge/camera/setting/ListPreference;
    const-string v9, "640x480"

    .line 361
    .local v9, "playRingResolution":Ljava/lang/String;
    if-eqz v10, :cond_d

    .line 362
    const-string v12, "640x480"

    invoke-virtual {v10, v12}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1e

    .line 363
    const-string v9, "640x480"

    .line 371
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "key_preview_size_on_device"

    invoke-interface {v12, v13, v9}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v10}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v8}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    :cond_d
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->isPlayRingVideoSizeSet:Z

    .line 377
    .end local v9    # "playRingResolution":Ljava/lang/String;
    .end local v10    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_21

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v12, :cond_f

    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/util/CameraHolder;->getOneShotSetPreviewNull()Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 382
    const-string v12, "CameraApp"

    const-string v13, "startPreview creates EffectsRecorder"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v12, Lcom/lge/camera/EffectsRecorder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v13, v0}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 385
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/util/CameraHolder;->setOneShotSetPreviewNullLatchCountDown()V

    .line 397
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v12

    if-eqz v12, :cond_28

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_22

    .line 399
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "continuous-video"

    invoke-virtual {v12, v13}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 400
    const-string v12, "CameraApp"

    const-string v13, "### setFocusMode-conti"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_10
    :goto_6
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "lge-camera"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "key_camera_shot_mode"

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 448
    .local v11, "shotMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_14

    .line 449
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isZslSupported()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 450
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "key_scene_mode"

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "currentSceneMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v12

    if-eqz v12, :cond_29

    .line 454
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL on if camera shot mode is Time machine."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "on"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v3    # "currentSceneMode":Ljava/lang/String;
    :cond_11
    :goto_7
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 509
    const-string v12, "CameraApp"

    const-string v13, "#### param set cam-mode : 1"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "cam-mode"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 513
    :cond_12
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 514
    const-string v12, "CameraApp"

    const-string v13, "param set video-stabilization false"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "video-stabilization"

    const-string v14, "false"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_13
    const-string v12, "shotmode_main_beauty"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 519
    const-string v12, "CameraApp"

    const-string v13, "param set beauty-shot on"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "beauty-shot"

    const-string v14, "on"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 528
    :cond_14
    :goto_8
    :try_start_7
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Time Info][4] App Camera Param setting End : Camera Parameter setting "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Time Info][5] Device Param setting Start : Device setting "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v12

    if-nez v12, :cond_15

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v12

    if-nez v12, :cond_15

    .line 536
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 537
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 539
    :cond_15
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 540
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Time Info][5] Device Param setting End : Device setting "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 548
    :goto_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v12, :cond_16

    .line 551
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

    invoke-virtual {v12, v13}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 553
    :cond_16
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 556
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v12, :cond_1c

    .line 557
    if-eqz p2, :cond_17

    .line 558
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v12, v13}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 560
    :cond_17
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Time Info][6] Device StartPreview Start : Camera Driver Preview Operation "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sget-boolean v12, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v12, :cond_18

    .line 565
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 566
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v14, 0x1f4

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v14, v15, v13}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 568
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->isDualCameraActive()Z

    move-result v12

    if-nez v12, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v12

    if-nez v12, :cond_19

    .line 569
    const-string v12, "CameraApp"

    const-string v13, "##### TIME_CHECK startPreview-start"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v12}, Landroid/hardware/Camera;->startPreview()V

    .line 571
    const-string v12, "CameraApp"

    const-string v13, "##### TIME_CHECK startPreview-end"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_37

    .line 574
    const-string v2, ""

    .line 575
    .local v2, "currentPreviewSizeOnScreen":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v12, :cond_1a

    .line 576
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 579
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v12

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v12

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 583
    :cond_1b
    const-string v12, "CameraApp"

    const-string v13, "startPreviewEffect() is called in *startPreview()* for dual recording"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 622
    .end local v2    # "currentPreviewSizeOnScreen":Ljava/lang/String;
    :cond_1c
    :goto_a
    const/4 v12, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 623
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 625
    if-nez p2, :cond_1d

    .line 626
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mPreviewCallbackRunnable:Ljava/lang/Runnable;

    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    .line 629
    :cond_1d
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startPreview()-end mStartPreviewOnGoing ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    .end local v11    # "shotMode":Ljava/lang/String;
    .restart local v9    # "playRingResolution":Ljava/lang/String;
    .restart local v10    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_1e
    const-string v12, "720x480"

    invoke-virtual {v10, v12}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1f

    .line 365
    const-string v9, "720x480"

    goto/16 :goto_4

    .line 366
    :cond_1f
    const-string v12, "1280x720"

    invoke-virtual {v10, v12}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_20

    .line 367
    const-string v9, "1280x720"

    goto/16 :goto_4

    .line 369
    :cond_20
    invoke-virtual {v10}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 388
    .end local v9    # "playRingResolution":Ljava/lang/String;
    .end local v10    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v12, :cond_f

    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/util/CameraHolder;->getOneShotSetPreviewNull()Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 390
    const-string v12, "CameraApp"

    const-string v13, "startPreview creates EffectsCamera"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v12, Lcom/lge/camera/EffectsCamera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v13, v0}, Lcom/lge/camera/EffectsCamera;-><init>(Landroid/content/Context;Lcom/lge/camera/EffectsBase$EffectBaseInterface;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 393
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/util/CameraHolder;->setOneShotSetPreviewNullLatchCountDown()V

    goto/16 :goto_5

    .line 402
    :cond_22
    const-string v12, "manual"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_focus"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_27

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v12

    if-nez v12, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v12

    if-eqz v12, :cond_26

    .line 405
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAutoFocusNullSettingNeededInStartPreview()Z

    move-result v12

    if-eqz v12, :cond_23

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 409
    const-string v12, "CameraApp"

    const-string v13, "###getCameraDevice().autoFocus(null)"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_23
    const-string v12, "continuous-picture"

    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    const-string v12, "mw_continuous-picture"

    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 415
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v12

    invoke-virtual {v12}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 416
    const-string v12, "CameraApp"

    const-string v13, "###mCameraDevice.cancelAutoFocus()"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12, v8}, Lcom/lge/camera/ControllerFunction;->getDefaultFocusModeParameterForMultiWindowAF(Lcom/lge/hardware/LGCamera$LGParameters;)Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "defaultFocusMode":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 422
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "### setFocusMode-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 424
    .end local v4    # "defaultFocusMode":Ljava/lang/String;
    :cond_26
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "auto"

    invoke-virtual {v12, v13}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 425
    const-string v12, "CameraApp"

    const-string v13, "### setFocusMode-auto"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 427
    :cond_27
    const-string v12, "manual"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_focus"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 429
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "normal"

    invoke-virtual {v12, v13}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getManualFocusValue()I

    move-result v7

    .line 431
    .local v7, "focusStep":I
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "manualfocus_step"

    invoke-virtual {v12, v13, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 433
    const-string v12, "CameraApp"

    const-string v13, "### setFocusMode-manual"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 437
    .end local v7    # "focusStep":I
    :cond_28
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNVIDIAChipset()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 440
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "infinity"

    invoke-virtual {v12, v13}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 441
    const-string v12, "CameraApp"

    const-string v13, "### setFocusMode-infinity"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 456
    .restart local v3    # "currentSceneMode":Ljava/lang/String;
    .restart local v11    # "shotMode":Ljava/lang/String;
    :cond_29
    const-string v12, "shotmode_full_continuous"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 457
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL on if camera shot mode is Full frame CONTINUOUS."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 459
    const-string v12, "CameraApp"

    const-string v13, "#### param set zsl off"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "off"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 462
    :cond_2a
    const-string v12, "CameraApp"

    const-string v13, "#### param set zsl on"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "on"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 465
    :cond_2b
    const-string v12, "shotmode_panorama"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 466
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL off if camera shot mode is PANORAMA."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "off"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 468
    :cond_2c
    const-string v12, "shotmode_plane_panorama"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 469
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL on if camera shot mode is PLANE PANORAMA."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "on"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 471
    :cond_2d
    const-string v12, "shotmode_free_panorama"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 472
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL off if camera shot mode is FREE PANORAMA."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "off"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->showFreePanoramaBlackBg()V

    goto/16 :goto_7

    .line 475
    :cond_2e
    const-string v12, "shotmode_hdr"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v12

    if-nez v12, :cond_2f

    .line 476
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL on if camera shot mode is HDR"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "on"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 478
    :cond_2f
    const-string v12, "shotmode_continuous"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    .line 479
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL off if camera shot mode is CONTINUOUS."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "off"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 481
    :cond_30
    const-string v12, "shotmode_normal"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    const-string v12, "Smart shutter"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v12

    if-nez v12, :cond_31

    .line 484
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL off if camera shot mode is normal and scene mode is smart shutter."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "off"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 487
    :cond_31
    const-string v12, "shotmode_clear_shot"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 488
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL on if camera shot mode is CLEAR SHOT."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "on"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 490
    :cond_32
    const-string v12, "shotmode_dual_camera"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    .line 491
    const-string v12, "CameraApp"

    const-string v13, "#### Set ZSL off if camera shot mode is DUAL CAMERA."

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "off"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 493
    :cond_33
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v12

    if-eqz v12, :cond_34

    const-string v12, "on"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_smart_mode"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v12

    if-nez v12, :cond_34

    .line 496
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "on"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 498
    :cond_34
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNonZSLMode()Z

    move-result v12

    if-eqz v12, :cond_35

    .line 499
    const-string v12, "CameraApp"

    const-string v13, "#### param set zsl off"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "off"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 502
    :cond_35
    const-string v12, "CameraApp"

    const-string v13, "#### param set zsl on"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "zsl"

    const-string v14, "on"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 522
    .end local v3    # "currentSceneMode":Ljava/lang/String;
    :cond_36
    const-string v12, "CameraApp"

    const-string v13, "param set beauty-shot off"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v8}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    const-string v13, "beauty-shot"

    const-string v14, "off"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 543
    :catch_3
    move-exception v5

    .line 544
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "CameraApp"

    const-string v13, "startPreview setParameters Exception"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_9

    .line 587
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_37
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_1c

    .line 588
    const-string v2, ""

    .line 589
    .restart local v2    # "currentPreviewSizeOnScreen":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v12, :cond_38

    .line 590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v12

    if-eqz v12, :cond_39

    .line 591
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 598
    :cond_38
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a

    const-string v12, "shotmode_dual_camera"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_camera_shot_mode"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a

    .line 601
    const-string v12, "CameraApp"

    const-string v13, "startPreviewEffect() is called in *startPreview()* for dual camera"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_a

    .line 609
    .end local v2    # "currentPreviewSizeOnScreen":Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 610
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_c
    const-string v12, "CameraApp"

    const-string v13, "startPreview failed : "

    invoke-static {v12, v13, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v13, Lcom/lge/camera/controller/PreviewController$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lge/camera/controller/PreviewController$2;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 594
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "currentPreviewSizeOnScreen":Ljava/lang/String;
    :cond_39
    :try_start_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 605
    :cond_3a
    const-string v12, "CameraApp"

    const-string v13, "startPreviewEffect() is NOT called in *startPreview()*"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_a
.end method

.method public startPreviewEffect()V
    .locals 0

    .prologue
    .line 2946
    return-void
.end method

.method public startPreviewEffect(Lcom/lge/camera/EffectsBase;Z)V
    .locals 3
    .param p1, "mEffects"    # Lcom/lge/camera/EffectsBase;
    .param p2, "checkCondition"    # Z

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2955
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    if-eqz v0, :cond_2

    .line 2956
    const-string v0, "CameraApp"

    const-string v1, "startPreviewEffect is OnGoing; Do nothing"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2960
    :cond_2
    if-eqz p2, :cond_0

    .line 2961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 2962
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 2963
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 2964
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->onSetBitmapDoneProcess()V

    .line 2965
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 2966
    const-string v0, "CameraApp"

    const-string v1, "enableInput(false) in startPreviewEffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewEffect() mEffectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->initializeEffectsPreview()V

    .line 2969
    invoke-virtual {p1}, Lcom/lge/camera/EffectsBase;->startPreview()V

    goto :goto_0
.end method

.method public startRecordingEffect()V
    .locals 0

    .prologue
    .line 3085
    return-void
.end method

.method public stopFaceDetectionFromHal()V
    .locals 3

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 2769
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceDetection Stop UI  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionHasUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    .line 2772
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2773
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 2776
    :cond_0
    return-void
.end method

.method public declared-synchronized stopPreview()V
    .locals 8

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StopPreview()-start, mPreviewing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mBeginStartPreview="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_7

    .line 901
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 902
    const/4 v1, 0x0

    .line 903
    .local v1, "bWait":Z
    const/4 v0, 0x0

    .line 904
    .local v0, "bChangeParameters":Z
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 906
    .local v4, "params":Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 907
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_flash"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, "flashSetting":Ljava/lang/String;
    const-string v5, "torch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 909
    const-string v5, "off"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 910
    const/4 v1, 0x1

    .line 911
    const/4 v0, 0x1

    .line 926
    .end local v3    # "flashSetting":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 927
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 930
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 932
    const-wide/16 v6, 0x190

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 939
    .end local v0    # "bChangeParameters":Z
    .end local v1    # "bWait":Z
    .end local v4    # "params":Landroid/hardware/Camera$Parameters;
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 940
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/hardware/LGCamera;->setISPDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V

    .line 950
    :cond_3
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 951
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->unregisterCAFCallback()V

    .line 954
    :cond_4
    const-string v5, "CameraApp"

    const-string v6, "### mCameraDevice.stopPreview()"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 956
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 958
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->releaseGestureEngine()V

    .line 960
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 961
    :cond_5
    invoke-static {}, Lcom/lge/filterpacks/DualRecorderFilter;->manualStopPreview()V

    .line 963
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 968
    :cond_7
    :goto_2
    const/4 v5, 0x0

    :try_start_4
    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 969
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 970
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 971
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 972
    iget-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    if-eqz v5, :cond_8

    .line 973
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 975
    :cond_8
    const-string v5, "CameraApp"

    const-string v6, "stopPreview()-end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 976
    monitor-exit p0

    return-void

    .line 933
    .restart local v0    # "bChangeParameters":Z
    .restart local v1    # "bWait":Z
    .restart local v4    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    .line 934
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 964
    .end local v0    # "bChangeParameters":Z
    .end local v1    # "bWait":Z
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "params":Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v2

    .line 965
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "CameraApp"

    const-string v6, "Warn: stopPreview() : "

    invoke-static {v5, v6, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 896
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 942
    :cond_9
    :try_start_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 943
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/hardware/LGCamera;->setISPDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V

    .line 945
    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 946
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mLGCamera:Lcom/lge/hardware/LGCamera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/hardware/LGCamera;->setOBTDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1
.end method

.method public stopPreviewEffect()V
    .locals 0

    .prologue
    .line 2974
    return-void
.end method

.method public stopPreviewEffect(Lcom/lge/camera/EffectsBase;)V
    .locals 2
    .param p1, "mEffects"    # Lcom/lge/camera/EffectsBase;

    .prologue
    .line 2977
    if-eqz p1, :cond_0

    .line 2978
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/lge/camera/EffectsBase;->stopPreview(I)V

    .line 2979
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewEffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    :cond_0
    return-void
.end method

.method public stopPreviewForMediatorOnPause()V
    .locals 2

    .prologue
    .line 2633
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2634
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setActivityPausing(Z)V

    .line 2636
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isChangingToOtherActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2637
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->waitStartPreviewThreadDone()V

    .line 2638
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2639
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 2642
    :cond_1
    return-void
.end method

.method public stopRecordingEffect()V
    .locals 0

    .prologue
    .line 3091
    return-void
.end method

.method public storePreviousResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 3111
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v3

    if-nez v3, :cond_0

    .line 836
    :goto_0
    :pswitch_0
    return-void

    .line 687
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "#### surfaceChanged %dx%d, mode:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationModeString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iput p3, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    .line 692
    iput p4, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    .line 694
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_1

    .line 695
    const-string v3, "CameraApp"

    const-string v4, "surfaceChanged return"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v3, "CameraApp"

    const-string v4, "holder.getSurface() == null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 701
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 702
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "surfaceChanged return"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v3, "CameraApp"

    const-string v4, "mCameraDevice:%s pausing:%b finishing:%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    :cond_3
    const-string v3, "CameraApp"

    const-string v4, "mPreviewing:%b holder.isCreating():%b mStartPreviewOnGoing:%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 715
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 717
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplayLatchCountDown()V

    .line 719
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 720
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 721
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_preview_size_on_device"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 723
    .local v2, "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_6

    .line 724
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 725
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backup previous resolution:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v3, "CameraApp"

    const-string v4, "set to live effect limit"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setLiveeffectLimit()Ljava/lang/String;

    .line 733
    .end local v2    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_4
    :goto_1
    const-string v3, "CameraApp"

    const-string v4, "startPreviewEffect is called in *surfaceChanged*"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateNavigationBarShape()V

    goto/16 :goto_0

    .line 730
    .restart local v2    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_6
    :try_start_1
    const-string v3, "CameraApp"

    const-string v4, "videoSizePref is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 828
    .end local v2    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "surfaceChanged Exception:"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 830
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 831
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 832
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v6, 0x3e8

    invoke-interface {v3, v4, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_2

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCameraActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 736
    const-string v3, "shotmode_main_beauty"

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "shotmode_front_beauty"

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 740
    :cond_8
    const-string v3, "CameraApp"

    const-string v4, "Because previous shot mode is beauty shot, so startPreview is not called in surfaceChanged"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 745
    :cond_9
    const-string v3, "CameraApp"

    const-string v4, "startPreviewEffect is called in *surfaceChanged*"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    goto :goto_2

    .line 754
    :cond_a
    iget-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    if-nez v3, :cond_16

    .line 755
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 756
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 813
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCameraActive()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 814
    :cond_c
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPreviewEffect is called in *surfaceChanged()* mEffectType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    goto/16 :goto_2

    .line 763
    :pswitch_1
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 764
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 765
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopRecordingByPausing()V

    goto :goto_3

    .line 767
    :cond_d
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->stopRecording(Z)V

    goto :goto_3

    .line 772
    :pswitch_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStopRecordingByMountedAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isStopRecordingByMountedAction()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isStopRecordingByMountedAction()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 778
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setVideoStateOnly(I)V

    .line 779
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayCamcorderPostview"

    const-wide/16 v6, 0x3e8

    invoke-interface {v3, v4, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 781
    :cond_f
    const-string v3, "off"

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_auto_review"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "not found"

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_auto_review"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 785
    :cond_10
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "strUri":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 788
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 790
    :cond_11
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 792
    .end local v1    # "strUri":Ljava/lang/String;
    :cond_12
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setVideoStateOnly(I)V

    .line 793
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayCamcorderPostview"

    const-wide/16 v6, 0x3e8

    invoke-interface {v3, v4, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 802
    :cond_13
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 803
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPanorama()V

    .line 804
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto/16 :goto_0

    .line 807
    :cond_14
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 808
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopFreePanorama()V

    goto/16 :goto_0

    .line 819
    :cond_15
    const-string v3, "CameraApp"

    const-string v4, "startPreview - *surfaceChanged()*"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_2

    .line 824
    :cond_16
    const-string v3, "CameraApp"

    const-string v4, "lockScreen:%b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v3, "CameraApp"

    const-string v4, "Not start preview in surfaceChanged()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 842
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "#### surfaceCreated, mode:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationModeString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 847
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 852
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 853
    const-string v0, "CameraApp"

    const-string v1, "To prevent mCameraDevice.stopPreview() before MediaRecorder.stop()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 857
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 858
    const-string v0, "CameraApp"

    const-string v1, "##### surfaceDestroyed, mode:%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationModeString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V
    .locals 3
    .param p1, "engine"    # Lcom/lge/olaworks/library/BaseEngine;

    .prologue
    .line 1902
    if-eqz p1, :cond_0

    .line 1903
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapPreviewEffect engine.needRenderMode() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    :cond_0
    if-nez p1, :cond_2

    .line 1907
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    .line 1917
    :cond_1
    :goto_0
    return-void

    .line 1909
    :cond_2
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1910
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    .line 1911
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    .line 1912
    const-string v0, "CameraApp"

    const-string v1, "swapPreviewEffect setEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1913
    :cond_3
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1914
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    goto :goto_0
.end method

.method public updateEffectSelection()Z
    .locals 1

    .prologue
    .line 3004
    const/4 v0, 0x1

    return v0
.end method

.method public waitStartPreviewThreadDone()V
    .locals 4

    .prologue
    .line 1774
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isErrorOccuredAndFinish()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1775
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We don\'t wait this case that mErrorOccuredAndFinish is true, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1778
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1780
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1790
    :cond_1
    :goto_1
    return-void

    .line 1775
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1782
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1783
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1784
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1787
    :catch_0
    move-exception v0

    .line 1788
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join startPreview thread!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public waitStopRecordingEffectThreadDone()V
    .locals 0

    .prologue
    .line 3094
    return-void
.end method
