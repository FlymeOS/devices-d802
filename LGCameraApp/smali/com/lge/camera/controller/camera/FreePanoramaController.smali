.class public Lcom/lge/camera/controller/camera/FreePanoramaController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "FreePanoramaController.java"

# interfaces
.implements Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;
.implements Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;
    }
.end annotation


# instance fields
.field private mAnimationTakingGuideHide:Landroid/view/animation/Animation;

.field private mAnimationTakingGuideShow:Landroid/view/animation/Animation;

.field private mCameraBuff:[[B

.field private mCameraBuffID:I

.field private mDateTaken:[J

.field private mFinishFlg:Z

.field private mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

.field private mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

.field private mFreePanoramaView:Landroid/view/View;

.field private mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

.field private mHandler:Landroid/os/Handler;

.field private mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

.field private mIsRemoveFreePanoramaBlackBg:Z

.field private mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

.field private mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

.field private mPanoramaEngineState:I

.field private mPanoramaState:I

.field private mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

.field private mPreviewSize:[I

.field private mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

.field private mSaveOutputImageLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSaveOutputImageTask:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

.field private mSensorFusionMode:I

.field private mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

.field private mStartDegree:I

.field private mStopModuleThread:Ljava/lang/Thread;

.field private mTempLocation:Landroid/location/Location;

.field private mTempParams:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 91
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 101
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 111
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    .line 133
    iput-boolean v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 139
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    .line 140
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 146
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    .line 152
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStartDegree:I

    .line 154
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    .line 155
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    .line 156
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageLatch:Ljava/util/concurrent/CountDownLatch;

    .line 157
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    .line 159
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mIsRemoveFreePanoramaBlackBg:Z

    .line 170
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getFreePanoramaSensorMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorFusionMode:I

    .line 180
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mDateTaken:[J

    .line 439
    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStopModuleThread:Ljava/lang/Thread;

    .line 1120
    new-instance v0, Lcom/lge/camera/controller/camera/FreePanoramaController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$5;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    .line 178
    return-void

    .line 111
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->doComplete(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->saveResultImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isStopModuleThreadFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->restartPanorama()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lge/camera/controller/camera/FreePanoramaController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startRotateGuideText(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lge/camera/controller/camera/FreePanoramaController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->moveToNextStateByAttachStatus(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isSaveOutputImageTaskFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/camera/controller/camera/FreePanoramaController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopModules()V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FreePanoramaController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)V
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "directory"    # Ljava/lang/String;
    .param p5, "output_img_path"    # Ljava/lang/String;
    .param p6, "degree"    # I
    .param p7, "imageRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1252
    if-eqz p5, :cond_0

    .line 1253
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    const-string v8, "iso"

    invoke-virtual {v2, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lge/camera/util/ExifUtil;->setExif(Ljava/lang/String;Ljava/lang/String;FLandroid/location/Location;IILjava/lang/String;ILjava/lang/String;)V

    .line 1264
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v8, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v9, p4

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v12}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v13

    .line 1270
    .local v13, "imageUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->setSavedFileName(Ljava/lang/String;)V

    .line 1271
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v13}, Lcom/lge/camera/ControllerFunction;->setSavedImageUri(Landroid/net/Uri;)V

    .line 1272
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1274
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1277
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 1280
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_uplus_box"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1282
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    return-void
.end method

.method private static createAppSegDateString(J)Ljava/lang/String;
    .locals 4
    .param p0, "dateTaken"    # J

    .prologue
    .line 1114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1115
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1117
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createModules()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "CameraApp"

    const-string v1, "createModules start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    invoke-direct {v0}, Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;-><init>(Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    .line 194
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPanoramaEngineState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;-><init>(Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    if-nez v0, :cond_3

    .line 201
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    if-nez v0, :cond_4

    .line 206
    new-instance v0, Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-direct {v0}, Lcom/lge/morpho/core/MorphoSensorFusion;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    .line 208
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "createModules end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private createStopModuleThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/camera/FreePanoramaController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$2;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private doComplete(Z)V
    .locals 4
    .param p1, "needRestart"    # Z

    .prologue
    const/4 v3, 0x0

    .line 759
    const-string v0, "CameraApp"

    const-string v1, "doComplete START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    const-string v0, "CameraApp"

    const-string v1, "exit doComplete because not free panorama"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :goto_0
    return-void

    .line 764
    :cond_0
    iput v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 765
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 768
    if-eqz p1, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->restartPanorama()V

    .line 790
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVoiceShutterSetting()V

    .line 791
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setLockChangeConfiguration(Z)V

    .line 792
    const-string v0, "CameraApp"

    const-string v1, "doComplete END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/FreePanoramaController$3;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController$3;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private initEngine()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 219
    const-string v1, "CameraApp"

    const-string v2, "initEngine"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->createModules()V

    .line 222
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->initSensorManager(Landroid/app/Activity;)V

    .line 224
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v1}, Lcom/lge/morpho/core/MorphoSensorFusion;->initialize()I

    .line 225
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v1, v6}, Lcom/lge/morpho/core/MorphoSensorFusion;->setOffsetMode(I)I

    .line 226
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    iget v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorFusionMode:I

    invoke-virtual {v1, v2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setMode(I)I

    .line 227
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v1, v3}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 230
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v2, v2, v3

    mul-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 232
    .local v0, "buff_size":I
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    if-nez v1, :cond_4

    .line 233
    new-instance v1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;I)V

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    .line 236
    iget v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorFusionMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 237
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v1, v6}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setInputGyroscopeType(I)V

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    new-instance v2, Lcom/lge/camera/controller/camera/FreePanoramaController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$1;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    invoke-virtual {v1, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setOnRenderPreviewListener(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;)V

    .line 267
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v1, v7}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setDispType(I)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c8

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    if-nez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d008e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .line 279
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v1, v2}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->setRenderer(Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;)V

    .line 281
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-virtual {v1, v6}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->setRenderMode(I)V

    .line 286
    :cond_2
    return-void

    .line 239
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v1, v7}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setInputGyroscopeType(I)V

    goto :goto_0

    .line 263
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v1, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setStitcher(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;)V

    goto :goto_1
.end method

.method private isSaveOutputImageTaskFinished()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1394
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    if-nez v1, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return v0

    .line 1397
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 1401
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStopModuleThreadFinished()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1383
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStopModuleThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 1390
    :cond_0
    :goto_0
    return v0

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStopModuleThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStopModuleThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToNextStateByAttachStatus(I)Z
    .locals 1
    .param p1, "attach_status"    # I

    .prologue
    .line 1165
    const/4 v0, 0x0

    .line 1166
    .local v0, "is_finish":Z
    packed-switch p1, :pswitch_data_0

    .line 1179
    :goto_0
    :pswitch_0
    return v0

    .line 1173
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopPanorama()V

    .line 1174
    const/4 v0, 0x1

    .line 1175
    goto :goto_0

    .line 1166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private restartPanorama()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1023
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v1}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 1026
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->releaseRegisteredImage()I

    move-result v0

    const-string v1, "mMorphoImageStitcher.releaseAllInputImage error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 1029
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->end()I

    move-result v0

    const-string v1, "mMorphoImageStitcher.end error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 1031
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0, v2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->start(I)I

    move-result v0

    const-string v1, "mMorphoImageStitcher.start(1) error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 1035
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 1036
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->runEngine()V

    .line 1037
    return-void
.end method

.method private runEngine()V
    .locals 3

    .prologue
    .line 289
    const-string v0, "CameraApp"

    const-string v1, "runEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 292
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->registSensorManager()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    iget v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-virtual {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->isActivated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-virtual {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->onResume()V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 311
    return-void
.end method

.method private saveOutputImage(Ljava/lang/String;Ljava/lang/String;[JLandroid/graphics/Rect;I)I
    .locals 9
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dateTaken"    # [J
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "orientation"    # I

    .prologue
    const/4 v7, 0x1

    .line 1093
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    new-array v4, v7, [I

    .line 1095
    .local v4, "output_size":[I
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->createAppSegDateString(J)Ljava/lang/String;

    move-result-object v5

    .line 1096
    .local v5, "first_date":Ljava/lang/String;
    aget-wide v0, p3, v7

    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->createAppSegDateString(J)Ljava/lang/String;

    move-result-object v6

    .line 1098
    .local v6, "last_date":Ljava/lang/String;
    const v8, -0x7ffffffe

    .line 1099
    .local v8, "ret":I
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v8

    .line 1104
    :cond_0
    if-eqz v8, :cond_1

    .line 1105
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMorphoImageStitcher.saveOutputJpeg error ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :goto_0
    return v8

    .line 1109
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveOutputImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveResultImage()Z
    .locals 21

    .prologue
    .line 1183
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 1184
    .local v16, "bounding_rect":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 1188
    .local v17, "clipping_rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v2

    const-string v5, "mMorphoImageStitcher.getClippingRect error ret:"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v7}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v20, v2, v5

    .line 1192
    .local v20, "width":I
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v18, v2, v5

    .line 1193
    .local v18, "height":I
    const-string v2, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutImageSize[clipping]: w="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " h="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1205
    .local v10, "dateTaken":J
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_camera_shot_mode"

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_scene_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_camera_shot_mode"

    invoke-interface {v8, v12}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 1218
    .local v9, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v3

    .line 1219
    .local v3, "directory":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1221
    .local v4, "bounding_file_name_with_extension":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1224
    .local v13, "output_img_path":Ljava/lang/String;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1227
    .local v6, "saving_rect":Landroid/graphics/Rect;
    move-object/from16 v6, v17

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mDateTaken:[J

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    aput-wide v14, v2, v5

    .line 1234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mDateTaken:[J

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/camera/controller/camera/FreePanoramaController;->saveOutputImage(Ljava/lang/String;Ljava/lang/String;[JLandroid/graphics/Rect;I)I

    move-result v19

    .line 1236
    .local v19, "ret":I
    if-nez v19, :cond_1

    .line 1237
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStartDegree:I

    move-object/from16 v8, p0

    move-object v12, v3

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/lge/camera/controller/camera/FreePanoramaController;->addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)V

    .line 1238
    const-string v2, "CameraApp"

    const-string v5, "The original free panorama image is saved."

    invoke-static {v2, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v2, v5, v7}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 1242
    const/4 v2, 0x1

    .line 1247
    :goto_1
    return v2

    .line 1195
    .end local v3    # "directory":Ljava/lang/String;
    .end local v4    # "bounding_file_name_with_extension":Ljava/lang/String;
    .end local v6    # "saving_rect":Landroid/graphics/Rect;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "dateTaken":J
    .end local v13    # "output_img_path":Ljava/lang/String;
    .end local v18    # "height":I
    .end local v19    # "ret":I
    .end local v20    # "width":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getBoundingRect(Landroid/graphics/Rect;)I

    move-result v2

    const-string v5, "mMorphoImageStitcher.getBoundingRect error ret:"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v7}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 1198
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v20, v2, v5

    .line 1199
    .restart local v20    # "width":I
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v18, v2, v5

    .line 1200
    .restart local v18    # "height":I
    const-string v2, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutImageSize[bounding]: w="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " h="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1244
    .restart local v3    # "directory":Ljava/lang/String;
    .restart local v4    # "bounding_file_name_with_extension":Ljava/lang/String;
    .restart local v6    # "saving_rect":Landroid/graphics/Rect;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "dateTaken":J
    .restart local v13    # "output_img_path":Ljava/lang/String;
    .restart local v19    # "ret":I
    :cond_1
    const-string v2, "CameraApp"

    const-string v5, "Cannot save original free panorama image."

    invoke-static {v2, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setCafSetting()V
    .locals 4

    .prologue
    .line 1309
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1312
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1313
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v0

    .line 1314
    .local v0, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1316
    const-string v1, "CameraApp"

    const-string v2, "### setFocusMode-conti"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1322
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1323
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1327
    .end local v0    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_1
    return-void
.end method

.method private setVoiceShutterSetting()V
    .locals 3

    .prologue
    .line 1330
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1331
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, "mVoiceShutterValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1337
    .end local v0    # "mVoiceShutterValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showGuideText(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/FreePanoramaController$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController$4;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 877
    :cond_0
    return-void
.end method

.method private startMode()V
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/FreePanoramaController$6;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$6;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1380
    return-void
.end method

.method private startRotateGuideText(I)V
    .locals 12
    .param p1, "degree"    # I

    .prologue
    .line 880
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    if-nez v10, :cond_0

    .line 946
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f090243

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 886
    .local v0, "audioZoomGuideStringMarginBottom":I
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f09001a

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 888
    .local v6, "previewPanelWidth":I
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f09001d

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 890
    .local v5, "previewPanelMarginBottom":I
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f090244

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 892
    .local v1, "guideSideMargin":I
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f090197

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 895
    .local v2, "indicatorHeight":I
    const/4 v10, 0x2

    new-array v7, v10, [I

    fill-array-data v7, :array_0

    .line 896
    .local v7, "previewSizeOnScreen":[I
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v8

    .line 897
    .local v8, "sizeOnScreenString":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 898
    invoke-static {v8}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v7

    .line 901
    :cond_1
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 903
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 904
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 905
    const/4 v10, 0x0

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 906
    const/4 v10, 0x0

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 907
    const/4 v10, 0x0

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 908
    const/4 v10, 0x0

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 910
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    const v11, 0x7f0d0099

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 912
    .local v9, "textInnerLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 914
    .local v4, "lpInnerLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 915
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 916
    const/4 v10, -0x2

    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 917
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 919
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/16 v11, 0xb4

    invoke-static {v10, p1, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 921
    :cond_2
    const/16 v10, 0x14

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 922
    const/16 v10, 0xc

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 923
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 924
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 925
    add-int v10, v1, v6

    add-int/2addr v10, v5

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 927
    const/4 v10, 0x0

    aget v10, v7, v10

    add-int v11, v1, v6

    add-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 941
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    const v11, 0x7f0d0098

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v10, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 944
    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 929
    :cond_4
    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/16 v11, 0x5a

    invoke-static {v10, p1, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/16 v11, 0x10e

    invoke-static {v10, p1, v11}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 931
    :cond_5
    const/16 v10, 0xc

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 932
    const/16 v10, 0xe

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 933
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 934
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 935
    add-int v10, v0, v6

    add-int/2addr v10, v5

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 938
    const/4 v10, 0x1

    aget v10, v7, v10

    add-int v11, v1, v2

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_1

    .line 895
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private stopModules()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 373
    const-string v0, "CameraApp"

    const-string v1, "stopModules START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v3}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    if-eqz v0, :cond_3

    .line 379
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    if-ne v0, v4, :cond_1

    .line 380
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    const-string v0, "CameraApp"

    const-string v1, "mMorphoImageStitcher.finish() START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->finish()I

    .line 386
    const-string v0, "CameraApp"

    const-string v1, "mMorphoImageStitcher.finish() END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_2
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 389
    iput v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/lge/morpho/core/MorphoSensorFusion;->finish()I

    .line 394
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    if-eqz v0, :cond_5

    .line 398
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-virtual {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->onPause()V

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    if-eqz v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->unRegistSensorManager()V

    .line 405
    :cond_6
    iput v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 406
    iput-boolean v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 408
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    .line 409
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    .line 410
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideShow:Landroid/view/animation/Animation;

    .line 411
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideHide:Landroid/view/animation/Animation;

    .line 412
    const-string v0, "CameraApp"

    const-string v1, "stopModules END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method private updateScreenRotation()V
    .locals 6

    .prologue
    .line 539
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 540
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 541
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v3, v4}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setCameraOrientation(I)V

    .line 543
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->updateSensorFusionRotation(I)V

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "degrees":I
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 560
    const/4 v0, 0x0

    .line 563
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getCameraOrientation()I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 564
    .local v2, "preview_rotation":I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v5}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getCameraOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preview:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v3, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setPreviewRotation(I)V

    .line 567
    return-void

    .line 548
    .end local v2    # "preview_rotation":I
    :pswitch_0
    const/4 v0, 0x0

    .line 549
    goto :goto_0

    .line 551
    :pswitch_1
    const/16 v0, 0x5a

    .line 552
    goto :goto_0

    .line 554
    :pswitch_2
    const/16 v0, 0xb4

    .line 555
    goto :goto_0

    .line 557
    :pswitch_3
    const/16 v0, 0x10e

    .line 558
    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSensorFusionRotation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 515
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    if-eqz v1, :cond_0

    .line 516
    const/4 v0, 0x1

    .line 517
    .local v0, "rotation":I
    sparse-switch p1, :sswitch_data_0

    .line 531
    const/4 v0, 0x0

    .line 534
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v1, v0}, Lcom/lge/morpho/core/MorphoSensorFusion;->setRotation(I)I

    .line 536
    .end local v0    # "rotation":I
    :cond_0
    return-void

    .line 519
    .restart local v0    # "rotation":I
    :sswitch_0
    const/4 v0, 0x0

    .line 520
    goto :goto_0

    .line 522
    :sswitch_1
    const/4 v0, 0x1

    .line 523
    goto :goto_0

    .line 525
    :sswitch_2
    const/4 v0, 0x2

    .line 526
    goto :goto_0

    .line 528
    :sswitch_3
    const/4 v0, 0x3

    .line 529
    goto :goto_0

    .line 517
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public checkOK(ILjava/lang/String;Z)Z
    .locals 4
    .param p1, "ret"    # I
    .param p2, "errorLog"    # Ljava/lang/String;
    .param p3, "isFinish"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1340
    if-eqz p1, :cond_1

    .line 1341
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    if-eqz p3, :cond_0

    .line 1344
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a03aa

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1346
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1348
    :cond_0
    const/4 v0, 0x0

    .line 1351
    :cond_1
    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCameraBuff()[B
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    iget v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCameraBuffID()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    return v0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getFinishFlg()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    return v0
.end method

.method public getGLPanoramaView()Lcom/lge/morpho/app/morphopanorama/GLTextureView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    return-object v0
.end method

.method public getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    return-object v0
.end method

.method public getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    return-object v0
.end method

.method public getPanoramaEngineState()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    return v0
.end method

.method public getPanoramaState()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    return v0
.end method

.method public getPreviewSize()[I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    return-object v0
.end method

.method public getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    return-object v0
.end method

.method public getResultSize()[I
    .locals 6

    .prologue
    const/16 v5, 0x3c0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1286
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1288
    .local v0, "size":[I
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    const/16 v2, 0x500

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    if-ne v1, v5, :cond_1

    .line 1289
    const/16 v1, 0x1d76

    aput v1, v0, v3

    .line 1290
    const/16 v1, 0xc20

    aput v1, v0, v4

    .line 1305
    :cond_0
    :goto_0
    return-object v0

    .line 1291
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    const/16 v2, 0x400

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    const/16 v2, 0x300

    if-ne v1, v2, :cond_2

    .line 1292
    const/16 v1, 0x16c0

    aput v1, v0, v3

    .line 1293
    const/16 v1, 0xb80

    aput v1, v0, v4

    goto :goto_0

    .line 1294
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_3

    .line 1295
    const/16 v1, 0xbe0

    aput v1, v0, v3

    .line 1296
    const/16 v1, 0xb20

    aput v1, v0, v4

    goto :goto_0

    .line 1297
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    const/16 v2, 0x280

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_4

    .line 1298
    const/16 v1, 0x7e0

    aput v1, v0, v3

    .line 1299
    const/16 v1, 0x780

    aput v1, v0, v4

    goto :goto_0

    .line 1300
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v3

    const/16 v2, 0x140

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v1, v1, v4

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_0

    .line 1301
    const/16 v1, 0x420

    aput v1, v0, v3

    .line 1302
    const/16 v1, 0x3a0

    aput v1, v0, v4

    goto :goto_0

    .line 1286
    nop

    :array_0
    .array-data 4
        0x1d76
        0xc20
    .end array-data
.end method

.method public getSensorFusionMode()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorFusionMode:I

    return v0
.end method

.method public getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    return-object v0
.end method

.method public isPanoramaUIShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 475
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1068
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mImageConverter:Lcom/lge/morpho/util/ImageConverter/ImageConverterJNI;

    .line 1070
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    .line 1071
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    .line 1072
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    .line 1073
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .line 1074
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    .line 1075
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    .line 1077
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    .line 1079
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    if-eqz v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->unbind()V

    .line 1081
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    if-eqz v1, :cond_1

    .line 1085
    check-cast v0, [[B

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    .line 1088
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 1089
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 1040
    const-string v1, "CameraApp"

    const-string v2, "Panorama Controller onPause - start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1042
    const-string v1, "CameraApp"

    const-string v2, "Pano Panorama Controller onPause - return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    :goto_0
    return-void

    .line 1045
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 1047
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopPanorama()V

    .line 1049
    const-string v1, "CameraApp"

    const-string v2, "getImageListUri().clear() call"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1052
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->removePanoramaView()V

    .line 1054
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleSensorCorrectionGuide(Z)V

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1059
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1061
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->stopEngine(Landroid/hardware/Camera$Parameters;)V

    .line 1063
    const-string v1, "CameraApp"

    const-string v2, "Panorama Controller onPause -end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1406
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isStopModuleThreadFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isSaveOutputImageTaskFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show progress mStopModuleThread.isAlive()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStopModuleThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSaveOutputImageTaskFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isSaveOutputImageTaskFinished()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 1413
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onResume()V

    .line 1414
    return-void
.end method

.method public reInitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    const-string v0, "CameraApp"

    const-string v1, "reInitialize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    .line 215
    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .line 216
    return-void
.end method

.method public removePanoramaView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 570
    const-string v0, "CameraApp"

    const-string v1, "removePanoramaView"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-virtual {v0, v2}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->setVisibility(I)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 577
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mIsRemoveFreePanoramaBlackBg:Z

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaBlackBg()V

    .line 582
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 585
    :cond_2
    return-void

    .line 580
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mIsRemoveFreePanoramaBlackBg:Z

    goto :goto_0
.end method

.method public restartToStartupPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 964
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 967
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v2}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 969
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleResetButton(Z)V

    .line 970
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleTakingGuide(Z)V

    .line 971
    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V

    .line 972
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 973
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 979
    iput v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 980
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->releaseRegisteredImage()I

    move-result v0

    const-string v1, "mMorphoImageStitcher.releaseAllInputImage error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 983
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->end()I

    move-result v0

    const-string v1, "mMorphoImageStitcher.end error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 987
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v0, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setUseImage(I)V

    .line 989
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0, v3}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->start(I)I

    move-result v0

    const-string v1, "mMorphoImageStitcher.start(1) error int panorama_restart_button onclicked ret:"

    invoke-virtual {p0, v0, v1, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 993
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mRenderer:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    invoke-virtual {v0, v3}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderEnable(Z)V

    .line 996
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleSensorCorrectionGuide(Z)V

    .line 999
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 1001
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setCafSetting()V

    .line 1003
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVoiceShutterSetting()V

    .line 1005
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 1007
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 1008
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 1009
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1010
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 1011
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1012
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setLockChangeConfiguration(Z)V

    .line 1014
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1015
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->runEngine()V

    .line 1020
    :cond_2
    :goto_0
    return-void

    .line 1018
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "stopPanorama() do nothing; not started"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCameraBuffID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    .line 125
    return-void
.end method

.method public setPanoramaEngineState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 109
    return-void
.end method

.method public setPanoramaState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 99
    return-void
.end method

.method public setRemoveFreePanoramaBlackBg(Z)V
    .locals 0
    .param p1, "remove"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mIsRemoveFreePanoramaBlackBg:Z

    .line 168
    return-void
.end method

.method public setSensorCorrectionGuideCounter(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 807
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0096

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 810
    .local v0, "counter_view":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 823
    packed-switch p1, :pswitch_data_0

    .line 834
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 825
    :pswitch_0
    const v1, 0x7f020456

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 828
    :pswitch_1
    const v1, 0x7f020455

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 831
    :pswitch_2
    const v1, 0x7f020454

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShutterButtonImage(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 1362
    return-void
.end method

.method public setVisibleResetButton(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 953
    if-eqz p1, :cond_0

    .line 954
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f020493

    invoke-interface {v0, v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 956
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0188

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 957
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0189

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    goto :goto_0
.end method

.method public setVisibleSensorCorrectionGuide(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 796
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0095

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 797
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 798
    if-eqz p1, :cond_1

    .line 799
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibleTakingGuide(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 841
    if-eqz p1, :cond_2

    .line 842
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v0, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setWaitTime(I)V

    .line 843
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setSensorCorrectionGuideCounter(I)V

    .line 845
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 847
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideFreePanoramaGuide"

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 850
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V

    .line 858
    :cond_1
    :goto_0
    return-void

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 855
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showPanoramaView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 482
    const-string v1, "CameraApp"

    const-string v2, "showPanoramaView"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    const-string v1, "CameraApp"

    const-string v2, "exit showPanoramaView because not free panorama mode"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isSaveOutputImageTaskFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 488
    const-string v1, "CameraApp"

    const-string v2, "exit SaveOutputImageTask is working"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 493
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    if-eqz v1, :cond_4

    .line 497
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGLPanoramaView:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-virtual {v1, v4}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->setVisibility(I)V

    .line 500
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->runEngine()V

    .line 502
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->updateScreenRotation()V

    .line 504
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setMainBarAlpha(I)V

    .line 506
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0180

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 509
    .local v0, "mShutterButton":Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    goto :goto_0
.end method

.method public startEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 314
    const-string v2, "CameraApp"

    const-string v3, "startEngine"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    const-string v2, "CameraApp"

    const-string v3, "exit startEngine"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isSaveOutputImageTaskFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 320
    const-string v2, "CameraApp"

    const-string v3, "exit SaveOutputImageTask is working"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 330
    .local v1, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 335
    .local v0, "previewSize":[I
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v3, v0, v5

    aput v3, v2, v5

    .line 336
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v3, v0, v6

    aput v3, v2, v6

    .line 337
    iput v5, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuffID:I

    .line 339
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview size (w,h)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewSize:[I

    aget v4, v4, v6

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mCameraBuff:[[B

    .line 342
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->initEngine()V

    .line 343
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    if-eqz v2, :cond_3

    .line 344
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "free panorama engine version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-static {}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v2, v5}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setUseStillImage(Z)V

    .line 348
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->resetCount()V

    .line 349
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setAngleOfViewDegree(FF)V

    .line 352
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_4

    .line 353
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d008f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaTakingGuide:Landroid/widget/RelativeLayout;

    .line 356
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_5

    .line 357
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;

    .line 361
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideShow:Landroid/view/animation/Animation;

    if-nez v2, :cond_6

    .line 362
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideShow:Landroid/view/animation/Animation;

    .line 366
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideHide:Landroid/view/animation/Animation;

    if-nez v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mAnimationTakingGuideHide:Landroid/view/animation/Animation;

    goto/16 :goto_0
.end method

.method public startPanorama()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 588
    const-string v0, "CameraApp"

    const-string v1, "startPanorama()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    if-eq v0, v3, :cond_0

    .line 590
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail startPanorama() mPanoramaEngineState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setLockChangeConfiguration(Z)V

    .line 596
    iput v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 597
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->resetCount()V

    .line 599
    iput v2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStartDegree:I

    .line 601
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerVisible(Z)V

    .line 602
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v4, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 603
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 604
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 610
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideOptionMenu()V

    .line 611
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setKeepScreenOn()V

    .line 612
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 614
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v7}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 615
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6, v7}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 618
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSensorListener:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    invoke-virtual {v0, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setWaitTime(I)V

    .line 619
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setSensorCorrectionGuideCounter(I)V

    .line 620
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleSensorCorrectionGuide(Z)V

    .line 621
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 622
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoSensorFusion:Lcom/lge/morpho/core/MorphoSensorFusion;

    invoke-virtual {v0, v2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 629
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 631
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleResetButton(Z)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->startRotateGuideText(I)V

    .line 950
    return-void
.end method

.method public stopEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 416
    const-string v0, "CameraApp"

    const-string v1, "stopEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 420
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->isStopModuleThreadFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->createStopModuleThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStopModuleThread:Ljava/lang/Thread;

    .line 435
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mStopModuleThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 437
    :cond_1
    return-void
.end method

.method public stopPanorama()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 635
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPanorama() mPanoramaState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    if-ne v3, v6, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->restartToStartupPreview()V

    .line 679
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6, v2}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 641
    iget v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    if-ne v3, v7, :cond_1

    iget v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    if-eq v3, v7, :cond_2

    .line 643
    :cond_1
    const-string v1, "CameraApp"

    const-string v3, "stopPanorama() do nothing; not started"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 649
    .local v0, "isNeedSaving":Z
    :goto_1
    iput v8, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaState:I

    .line 650
    iput v8, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mPanoramaEngineState:I

    .line 651
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mFinishFlg:Z

    .line 653
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleTakingGuide(Z)V

    .line 654
    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V

    .line 656
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 658
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 659
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 660
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 661
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->keepScreenOnAwhile()V

    .line 663
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 665
    if-eqz v0, :cond_3

    .line 666
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 668
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 669
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x64

    invoke-interface {v1, v3, v2, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 670
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setCafSetting()V

    .line 672
    new-instance v1, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    .line 674
    if-eqz v0, :cond_4

    .line 675
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    .line 676
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mTempLocation:Landroid/location/Location;

    .line 678
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .end local v0    # "isNeedSaving":Z
    :cond_5
    move v0, v2

    .line 647
    goto :goto_1
.end method
