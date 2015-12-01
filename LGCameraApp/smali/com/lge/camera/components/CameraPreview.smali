.class public Lcom/lge/camera/components/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;,
        Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
    }
.end annotation


# static fields
.field public static final DONT_CARE:F = 0.0f

.field protected static final MAX_PREVIEW_BUFFER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private drawRectF:Landroid/graphics/RectF;

.field private mAspectRatio:F

.field private mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

.field private mDrawMode:I

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field private mFaceCount:I

.field private mFaceRect:[Landroid/graphics/Rect;

.field private mFaceRoundRectCorner:F

.field private mFaceStrokeWidth:I

.field protected mFlipH:Z

.field private mHorizontalTileSize:I

.field protected mOrientation:I

.field protected mOrientationFlip:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPanoramaGuideBottom:F

.field private mPanoramaGuideColor:I

.field private mPanoramaGuideHeight:I

.field private mPanoramaGuideLeft:F

.field private mPanoramaGuideMoveRate:F

.field private mPanoramaGuideRight:F

.field private mPanoramaGuideTop:F

.field private mPanoramaGuideWidth:I

.field private mPanoramaInitialized:Z

.field private mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

.field private mPreviewCallbackBuffer:[B

.field protected mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

.field private mRectColor:[I

.field private mSrcPreviewHeight:I

.field private mSrcPreviewWidth:I

.field private mVerticalTileSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 53
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 55
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 56
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 57
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 58
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 59
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 61
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 62
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 64
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 82
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .line 364
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 374
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    .line 437
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 438
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 439
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 447
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    .line 448
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    .line 494
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 501
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 502
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 68
    return-void

    .line 439
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 53
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 55
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 56
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 57
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 58
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 59
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 61
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 62
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 64
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 82
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .line 364
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 374
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    .line 437
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 438
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 439
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 447
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    .line 448
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    .line 494
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 501
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 502
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 72
    return-void

    .line 439
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 53
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 55
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 56
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 57
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 58
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 59
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 61
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 62
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 64
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 82
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .line 364
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 374
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    .line 437
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 438
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 439
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 447
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    .line 448
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    .line 494
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 501
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 502
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 76
    return-void

    .line 439
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/camera/components/CameraPreview;)Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/CameraPreview;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    return-object v0
.end method

.method private roundUpToTile(III)I
    .locals 1
    .param p1, "dimension"    # I
    .param p2, "tileSize"    # I
    .param p3, "maxDimension"    # I

    .prologue
    .line 358
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public close(Landroid/hardware/Camera;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x0

    .line 89
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

    .line 90
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 91
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 105
    const-string v1, "CameraApp"

    const-string v2, "close()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 89
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 110
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 111
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 112
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 113
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->closeCallback()V

    .line 115
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 118
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 119
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 120
    return-void
.end method

.method public getDrawMode()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    return v0
.end method

.method public getSrcImageHeight()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    return v0
.end method

.method public getSrcImageWidth()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    return v0
.end method

.method public goOnPanoramaDrawing()V
    .locals 1

    .prologue
    .line 550
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 552
    return-void
.end method

.method public initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 13
    .param p1, "processor"    # Lcom/lge/olaworks/library/EngineProcessor;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x0

    .line 224
    if-nez p2, :cond_0

    .line 275
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iput-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 232
    invoke-virtual {p2, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 233
    invoke-virtual {p2, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 235
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 236
    iput-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 237
    iput-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 239
    const/4 v6, 0x0

    .line 240
    .local v6, "bufSize":I
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 241
    .local v9, "param":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 242
    .local v12, "previewSize":Landroid/hardware/Camera$Size;
    if-nez v12, :cond_1

    .line 243
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end. it doesn`t get a previewSize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_1
    :try_start_0
    new-instance v11, Landroid/graphics/PixelFormat;

    invoke-direct {v11}, Landroid/graphics/PixelFormat;-><init>()V

    .line 249
    .local v11, "pixelinfo":Landroid/graphics/PixelFormat;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v10

    .line 250
    .local v10, "pixelformat":I
    invoke-static {v10, v11}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 252
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    iget v1, v11, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v10    # "pixelformat":I
    .end local v11    # "pixelinfo":Landroid/graphics/PixelFormat;
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/4 v0, 0x1

    if-ge v8, v0, :cond_2

    .line 263
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 264
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 262
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 253
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 254
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor Exception : "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    div-int/lit8 v6, v0, 0x8

    goto :goto_1

    .line 266
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;)V

    .line 268
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->setParentPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 269
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->setCompleteFrame(Z)V

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 272
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, v12, Landroid/hardware/Camera$Size;->width:I

    iget v2, v12, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x402

    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII[B)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 274
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initPanoramaGuide()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 505
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 506
    .local v1, "wScale":F
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 508
    .local v0, "hScale":F
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09009e

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    .line 510
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09009f

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    .line 512
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 514
    const/4 v2, 0x1

    .line 515
    .local v2, "weightLeft":I
    const/4 v3, 0x1

    .line 517
    .local v3, "weightTop":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHDmodel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 518
    const/16 v2, 0xc

    .line 525
    :cond_0
    :goto_0
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 527
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 528
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 530
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    .line 531
    return-void

    .line 519
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    :cond_2
    const/4 v3, -0x2

    .line 522
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public initializePanorama(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 543
    return-void
.end method

.method public isCompleteProcessFrame()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->isCompleteFrame()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 377
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    packed-switch v0, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 379
    :pswitch_0
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    if-lez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    if-eq v0, v1, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 386
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    if-ge v6, v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 388
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 391
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 393
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 394
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 395
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 402
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 386
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    iget-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 398
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    iget-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 399
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 400
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 409
    .end local v6    # "i":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    if-eq v0, v1, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 414
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 416
    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v3, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    iget-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 325
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 326
    .local v1, "fAspectRatio":Ljava/lang/Float;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 327
    .local v2, "fDontCare":Ljava/lang/Float;
    invoke-virtual {v1, v2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 328
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 329
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 330
    .local v4, "heightSpecSize":I
    move v5, v6

    .line 331
    .local v5, "width":I
    move v3, v4

    .line 333
    .local v3, "height":I
    if-lez v5, :cond_4

    if-lez v3, :cond_4

    .line 334
    int-to-float v7, v5

    int-to-float v8, v3

    div-float v0, v7, v8

    .line 335
    .local v0, "defaultRatio":F
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 336
    const/high16 v7, 0x3f800000    # 1.0f

    div-float v0, v7, v0

    .line 338
    :cond_0
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    cmpg-float v7, v0, v7

    if-gez v7, :cond_2

    .line 340
    int-to-float v7, v5

    iget v8, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    div-float/2addr v7, v8

    float-to-int v3, v7

    .line 344
    :cond_1
    :goto_0
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    invoke-direct {p0, v5, v7, v6}, Lcom/lge/camera/components/CameraPreview;->roundUpToTile(III)I

    move-result v5

    .line 345
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    invoke-direct {p0, v3, v7, v4}, Lcom/lge/camera/components/CameraPreview;->roundUpToTile(III)I

    move-result v3

    .line 347
    invoke-virtual {p0, v5, v3}, Lcom/lge/camera/components/CameraPreview;->setMeasuredDimension(II)V

    .line 348
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->initPanoramaGuide()V

    .line 355
    .end local v0    # "defaultRatio":F
    .end local v3    # "height":I
    .end local v4    # "heightSpecSize":I
    .end local v5    # "width":I
    .end local v6    # "widthSpecSize":I
    :goto_1
    return-void

    .line 341
    .restart local v0    # "defaultRatio":F
    .restart local v3    # "height":I
    .restart local v4    # "heightSpecSize":I
    .restart local v5    # "width":I
    .restart local v6    # "widthSpecSize":I
    :cond_2
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    .line 342
    int-to-float v7, v3

    iget v8, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    mul-float/2addr v7, v8

    float-to-int v5, v7

    goto :goto_0

    .line 352
    .end local v0    # "defaultRatio":F
    .end local v3    # "height":I
    .end local v4    # "heightSpecSize":I
    .end local v5    # "width":I
    .end local v6    # "widthSpecSize":I
    :cond_3
    const-string v7, "CameraApp"

    const-string v8, "mAspectRatio is 0.0f"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_1
.end method

.method public processPreviewFrame([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 296
    .local v0, "rawContext":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v1, :cond_0

    .line 297
    iput-object p1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 298
    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 300
    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1, v0}, Lcom/lge/olaworks/library/EngineProcessor;->processPreview(Lcom/lge/olaworks/datastruct/JOlaBitmap;)Z

    .line 302
    :cond_0
    return-void
.end method

.method public releasePreviewCallback(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v0, 0x0

    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 282
    :cond_0
    return-void
.end method

.method public resetAutoPanorama()V
    .locals 0

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 561
    return-void
.end method

.method public resetFaceRectangles()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    .line 484
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 485
    return-void
.end method

.method public resetPanoramaGuide()V
    .locals 0

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->initPanoramaGuide()V

    .line 556
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 557
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 4
    .param p1, "aspectRatio"    # F

    .prologue
    .line 311
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 312
    .local v0, "faspectRatio":Ljava/lang/Float;
    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 313
    .local v1, "fmAspectRatio":Ljava/lang/Float;
    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    .line 315
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->requestLayout()V

    .line 316
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->invalidate()V

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "setAspectRatio and aspectRatio are same"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAspectRatio(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 305
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 306
    .local v0, "aspectRatio":F
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(F)V

    .line 308
    return-void
.end method

.method public setDeviceListener(Lcom/lge/camera/components/CameraPreview$OnDeviceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .line 86
    return-void
.end method

.method public setDrawMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 368
    return-void
.end method

.method public setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "processor"    # Lcom/lge/olaworks/library/EngineProcessor;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    const-string v0, "CameraApp"

    const-string v1, "exit setEngineProcessor by camera == null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/CameraPreview;->initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public setFaceRectangleColor(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "color"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    aput p2, v0, p1

    .line 489
    return-void
.end method

.method public setFaceRectangles([Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # [Landroid/graphics/Rect;
    .param p2, "faceCount"    # I

    .prologue
    .line 476
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 477
    iput p2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    .line 478
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 479
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .param p1, "flipH"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setFlipHorizontal(Z)V

    .line 130
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 131
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

    .line 134
    rem-int/lit16 p1, p1, 0x168

    .line 136
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_0

    .line 137
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 138
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 153
    :goto_0
    return-void

    .line 139
    :cond_0
    const/16 v0, 0x87

    if-ge p1, v0, :cond_1

    .line 140
    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 141
    iput v2, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 142
    :cond_1
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_2

    .line 143
    iput v3, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 144
    iput v3, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 145
    :cond_2
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_3

    .line 146
    iput v2, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 147
    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 149
    :cond_3
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 150
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0
.end method

.method public setPanoramaGuideColor(Z)V
    .locals 1
    .param p1, "capture"    # Z

    .prologue
    .line 534
    if-eqz p1, :cond_0

    .line 535
    const v0, -0xff0100

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    goto :goto_0
.end method

.method public setPanoramaGuidePosition(IIII)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "hDist"    # I
    .param p3, "vDist"    # I
    .param p4, "status"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 564
    int-to-float v0, p2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 565
    int-to-float v0, p3

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    mul-float/2addr v0, v1

    float-to-int p3, v0

    .line 567
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 571
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 603
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    goto :goto_0

    .line 575
    :pswitch_1
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 576
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 577
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 579
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 582
    :pswitch_2
    rsub-int/lit8 v0, p2, 0x0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 583
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 584
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 586
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 589
    :pswitch_3
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 591
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 592
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 593
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 596
    :pswitch_4
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 598
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 599
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v0, v0

    neg-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 600
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto/16 :goto_1

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 124
    return-void
.end method

.method public setSrcImageSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    .line 456
    iput p2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    .line 462
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 463
    .local v0, "scale":F
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    .line 464
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    .line 465
    return-void

    .line 458
    .end local v0    # "scale":F
    :cond_0
    iput p2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    .line 459
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    goto :goto_0
.end method

.method public stopPanoramaDrawing()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 547
    return-void
.end method
