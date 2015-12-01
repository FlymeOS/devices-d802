.class public Lcom/lge/camera/components/OpenGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "OpenGLSurfaceView.java"

# interfaces
.implements Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;
.implements Lcom/lge/camera/components/ProcessorThread$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;,
        Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;
    }
.end annotation


# static fields
.field protected static final MAX_PREVIEW_BUFFER:I = 0x2

.field protected static final PRINT_FUNC_PROFILING:Z = false

.field private static final USE_THREAD:Z = true


# instance fields
.field private isPause:Z

.field protected mCameraDevice:Landroid/hardware/Camera;

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field protected mFlipH:Z

.field private mIsCompleteFrame:Z

.field private mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

.field protected mOrientation:I

.field protected mOrientationFlip:I

.field private mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

.field private mPreviewCallbackBuffer:[B

.field private mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

.field protected mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

.field private mThread:Lcom/lge/camera/components/ProcessorThread;

.field private previewH:I

.field private previewW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 40
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 41
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 42
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 43
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 44
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 45
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 49
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 51
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 52
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .line 294
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 371
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 64
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->setDebugFlags(I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->createOpenGLYUVRenderer(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 40
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 41
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 42
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 43
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 44
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 45
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 49
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 51
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 52
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .line 294
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 371
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 70
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->createOpenGLYUVRenderer(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/OpenGLSurfaceView;)Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/OpenGLSurfaceView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    return-object v0
.end method

.method private detectOpenGLES20(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 111
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 112
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 114
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startProcessorThread()V
    .locals 4

    .prologue
    .line 297
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-nez v2, :cond_0

    .line 298
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    .line 301
    .local v1, "priority":I
    :goto_0
    new-instance v2, Lcom/lge/camera/components/ProcessorThread;

    invoke-direct {v2, p0, v1}, Lcom/lge/camera/components/ProcessorThread;-><init>(Lcom/lge/camera/components/ProcessorThread$FrameCallback;I)V

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 302
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2}, Lcom/lge/camera/components/ProcessorThread;->start()V

    .line 304
    .end local v1    # "priority":I
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/ProcessorThread;->setCompleteFrame(Z)V

    .line 306
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2}, Lcom/lge/camera/components/ProcessorThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2}, Lcom/lge/camera/components/ProcessorThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_1
    :goto_1
    return-void

    .line 298
    :cond_2
    const/16 v1, 0xa

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 311
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->startProcessorThread()V

    goto :goto_1
.end method

.method private stopProcessorThread()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewRender(): Thread interrupted!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->interrupt()V

    .line 324
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->finish()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 326
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewRender(): thread joined"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 235
    :cond_0
    return-void
.end method

.method public clearData(Z)V
    .locals 3
    .param p1, "bReqeustRender"    # Z

    .prologue
    .line 361
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearData() bReqeustRender:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->clearYuvData()V

    .line 364
    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->requestRender()V

    .line 369
    :cond_0
    return-void
.end method

.method public close(Landroid/hardware/Camera;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x0

    .line 337
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close()-start, camera is null? :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->stopProcessorThread()V

    .line 342
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 343
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 346
    if-eqz p1, :cond_0

    .line 347
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 348
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 350
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 356
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 357
    const-string v1, "CameraApp"

    const-string v2, "close()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void

    .line 337
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    const-string v2, "close stop:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public createOpenGLYUVRenderer(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->detectOpenGLES20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    .line 78
    .local v0, "landscape":Z
    new-instance v1, Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-direct {v1, p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;-><init>(Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;Z)V

    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 79
    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderMode(I)V

    .line 82
    .end local v0    # "landscape":Z
    :cond_0
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    return v0
.end method

.method public initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "processor"    # Lcom/lge/olaworks/library/EngineProcessor;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v0, 0x0

    .line 94
    if-nez p2, :cond_0

    .line 108
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 98
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 99
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 100
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 101
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 103
    invoke-virtual {p0, p2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setPreviewCallback(Landroid/hardware/Camera;)V

    .line 106
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->startProcessorThread()V

    goto :goto_0
.end method

.method public initOpenGLSurfaceView(Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .line 86
    return-void
.end method

.method public isCompleteProcessFrame()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->getcompleteFrame()Z

    move-result v0

    .line 171
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    const-string v1, "CameraApp"

    const-string v2, "OpenGLSurfaceView onDestroy()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v1, :cond_0

    .line 390
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->closeYUVRenderer()V

    .line 395
    iput-object v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    if-eqz v1, :cond_1

    .line 398
    iput-object v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .line 400
    :cond_1
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraApp"

    const-string v2, "OpenGLSurfaceView onDestroy() - setRenderer IllegalStateException"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 404
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView onPause()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 406
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 379
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView onResume()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setNeedCreateTexture(Z)V

    .line 383
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 384
    return-void
.end method

.method public processFrameOnThread([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->processPreviewFrame([B)V

    .line 419
    return-void
.end method

.method public processPreviewFrame([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "CameraApp"

    const-string v1, "mRawContext null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iput-object p1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 248
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->processPreview(Lcom/lge/olaworks/datastruct/JOlaBitmap;)Z

    .line 257
    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    iget v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    mul-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v1, v2

    if-ne v0, v1, :cond_2

    .line 258
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    iget v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setYuvData([BII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->requestRender()V

    .line 264
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->addCallbackBuffer([B)V

    .line 265
    return-void

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    goto :goto_0
.end method

.method public processPreviewFrameAsync([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ProcessorThread;->nextFrame([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->addCallbackBuffer([B)V

    .line 229
    :cond_0
    return-void
.end method

.method public releasePreviewCallback(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->stopProcessorThread()V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 216
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 217
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 219
    :cond_0
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 220
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 221
    return-void
.end method

.method public setActivityPausing(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 375
    return-void
.end method

.method public setCheckFPS(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ProcessorThread;->setCheckFPS(Z)V

    .line 334
    :cond_0
    return-void
.end method

.method public setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "processor"    # Lcom/lge/olaworks/library/EngineProcessor;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/OpenGLSurfaceView;->initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    .line 91
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .param p1, "flipH"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setFlipHorizontal(Z)V

    .line 124
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 125
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setflipH(Z)V

    .line 128
    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 p1, v0, 0x168

    .line 143
    :goto_0
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_1

    .line 144
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 145
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 161
    :goto_1
    return-void

    .line 140
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 146
    :cond_1
    const/16 v0, 0x87

    if-ge p1, v0, :cond_2

    .line 147
    iput v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 148
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_1

    .line 149
    :cond_2
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_3

    .line 150
    iput v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 151
    iput v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_1

    .line 152
    :cond_3
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_4

    .line 153
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 154
    iput v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_1

    .line 156
    :cond_4
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 157
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_1
.end method

.method public setPreviewCallback(Landroid/hardware/Camera;)V
    .locals 12
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 175
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView - setPreviewCallback"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 179
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 180
    .local v8, "param":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 182
    .local v11, "previewSize":Landroid/hardware/Camera$Size;
    if-nez v11, :cond_0

    .line 183
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end. it doesn`t get a previewSize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v10, Landroid/graphics/PixelFormat;

    invoke-direct {v10}, Landroid/graphics/PixelFormat;-><init>()V

    .line 188
    .local v10, "pixelinfo":Landroid/graphics/PixelFormat;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v9

    .line 189
    .local v9, "pixelformat":I
    invoke-static {v9, v10}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 191
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/OpenGLSurfaceView;)V

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 195
    :cond_1
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    iget v1, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x8

    .line 196
    .local v6, "bufSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v0, 0x2

    if-ge v7, v0, :cond_2

    .line 197
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 198
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 202
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, v11, Landroid/hardware/Camera$Size;->width:I

    iget v2, v11, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x402

    iget v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII[B)V

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 205
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    .line 206
    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    goto :goto_0
.end method

.method public setRenderWindowConfig()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setSquareVertices(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    invoke-interface {v0}, Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 426
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 409
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenGLSurfaceView surfaceCreated holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    if-nez v0, :cond_0

    .line 412
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 414
    :cond_0
    return-void
.end method
