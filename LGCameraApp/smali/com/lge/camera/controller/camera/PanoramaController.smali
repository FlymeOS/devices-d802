.class public Lcom/lge/camera/controller/camera/PanoramaController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;,
        Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;,
        Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;
    }
.end annotation


# instance fields
.field private mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

.field private mDirectInit:Z

.field private mDirection:I

.field private mGuideView:Lcom/lge/camera/components/CameraPreview;

.field private mInitMainButton:Z

.field private mIsReachProgressMax:Z

.field private mJpegData:[B

.field private mModeDirection:I

.field private mModeSetFrameImage:I

.field private mModeThumbnail:I

.field private mPanoOrientationDegree:I

.field private mPanoramaStarted:Z

.field private mPanoramaView:Landroid/view/View;

.field private mSynthesizeInProgress:Z

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 53
    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    .line 55
    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    .line 57
    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 58
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 59
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 61
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    .line 317
    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    .line 319
    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I

    .line 599
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    .line 600
    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    .line 72
    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeSetFrameImage:I

    .line 73
    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeDirection:I

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeThumbnail:I

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/camera/controller/camera/PanoramaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    return v0
.end method

.method static synthetic access$2302(Lcom/lge/camera/controller/camera/PanoramaController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I

    return p1
.end method

.method static synthetic access$2400(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->setGuideAroundThumbTextLayoutRightLeft(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController;->setGuideAroundThumbTextLayoutUpDown(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/lge/camera/controller/camera/PanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/camera/controller/camera/PanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInitMainButton:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/lge/camera/controller/camera/PanoramaController;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # [B

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    return-object p1
.end method

.method static synthetic access$3500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lge/camera/controller/camera/PanoramaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->onSynthesizeComplete()V

    return-void
.end method

.method static synthetic access$3900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/lge/camera/controller/camera/PanoramaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I

    return v0
.end method

.method static synthetic access$5000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/camera/PanoramaController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I

    return p1
.end method

.method static synthetic access$5100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/lge/camera/controller/camera/PanoramaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private onSynthesizeComplete()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 751
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    if-eqz v3, :cond_5

    .line 756
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->savePicture([BLandroid/graphics/Bitmap;)Z

    move-result v2

    .line 758
    .local v2, "ret":Z
    if-nez v2, :cond_2

    .line 759
    const-string v3, "CameraApp"

    const-string v4, "panorama save fail"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5, v6}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 761
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSavedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "filePathName":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->setExifMakeModel(Ljava/lang/String;)V

    .line 769
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 770
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 771
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 772
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 773
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 781
    :cond_3
    :goto_1
    iput-object v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    .line 787
    .end local v0    # "filePathName":Ljava/lang/String;
    .end local v2    # "ret":Z
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 788
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "mVoiceShutterValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 775
    .end local v1    # "mVoiceShutterValue":Ljava/lang/String;
    .restart local v0    # "filePathName":Ljava/lang/String;
    .restart local v2    # "ret":Z
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v3

    if-nez v3, :cond_3

    .line 776
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 777
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 783
    .end local v0    # "filePathName":Ljava/lang/String;
    .end local v2    # "ret":Z
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5, v6}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 784
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setGuideAroundThumbTextLayoutRightLeft(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    .locals 5
    .param p1, "gp"    # Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0x11

    const/4 v2, 0x1

    .line 492
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 494
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 495
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 496
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 498
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdHeight:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 500
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 502
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 503
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 504
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 505
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 507
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdHeight:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbHeight:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 509
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0

    .line 510
    :cond_2
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    .line 511
    :cond_3
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 512
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 513
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbHeight:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 516
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdWidth:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 518
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private setGuideAroundThumbTextLayoutUpDown(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    .locals 6
    .param p1, "gp"    # Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;

    .prologue
    const/16 v5, 0x14

    const/16 v4, 0x11

    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 523
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 524
    :cond_0
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 525
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 526
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 529
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdHeight:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 530
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 554
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 532
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 533
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 534
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 535
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 538
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdWidth:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 541
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0

    .line 542
    :cond_3
    iget v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 543
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 544
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 545
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 546
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 549
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdWidth:I

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelWidth:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelMarginBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 552
    iget-object v0, p1, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private showGuideAroundThumbText(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/PanoramaController$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController$2;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showGuideCenterText(ZI)V
    .locals 2
    .param p1, "isShowing"    # Z
    .param p2, "resId"    # I

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/PanoramaController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/camera/PanoramaController$1;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;ZI)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private tryEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "toggle"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public inflatePanoramaView()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00de

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0176

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/CameraPreview;

    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 88
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->initializePanorama(I)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initAutoPanoramaPlayUI(IZ)Z
    .locals 13
    .param p1, "direction"    # I
    .param p2, "warning"    # Z

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d010f

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0110

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d010d

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d010e

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0111

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/AutoPanorama;->getThumbnailInfo()Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    move-result-object v9

    .line 334
    .local v9, "info":Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v12

    .line 335
    .local v12, "sizeOnDeviceString":Ljava/lang/String;
    invoke-static {v12}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v10

    .line 337
    .local v10, "previewSizeOnDevice":[I
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d011c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoThumbView;

    iget v1, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->tWidth:I

    iget v2, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->tHeight:I

    iget v3, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->width:I

    iget v4, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->height:I

    iget v5, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->dW:I

    iget v6, v9, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->dH:I

    const/4 v7, 0x0

    aget v7, v10, v7

    const/4 v8, 0x1

    aget v8, v10, v8

    invoke-virtual/range {v0 .. v8}, Lcom/lge/camera/components/PanoThumbView;->init(IIIIIIII)V

    .line 341
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d011c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/PanoThumbView;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lge/camera/components/PanoThumbView;->setDirection(II)V

    .line 344
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d011b

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/lge/camera/components/RotateLayout;

    .line 345
    .local v11, "rl":Lcom/lge/camera/components/RotateLayout;
    if-eqz v11, :cond_1

    .line 346
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v11, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 349
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showGuideAroundThumbText(Z)V

    .line 350
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 346
    :cond_2
    const/16 v0, 0x10e

    goto :goto_1
.end method

.method public isPanoramaStarted()Z
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    if-eqz v0, :cond_0

    .line 798
    const/4 v0, 0x1

    .line 800
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoramaUIShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanoramaUpdatebutton()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    return v0
.end method

.method public isSynthesisInProgress()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    .line 858
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    .line 859
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    .line 860
    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mJpegData:[B

    .line 862
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 863
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 817
    const-string v2, "CameraApp"

    const-string v3, "Panorama Controller onPause - start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    const-string v2, "CameraApp"

    const-string v3, "Pano Panorama Controller onPause - return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 825
    .local v1, "stopByPausing":Z
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->stopPanorama()V

    .line 827
    const-string v2, "CameraApp"

    const-string v3, "Wait for synthesis done in pause()"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v2, "CameraApp"

    const-string v3, "synth done in pause()"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    if-eqz v1, :cond_1

    .line 833
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 834
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 838
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 839
    .local v0, "engine":Lcom/lge/olaworks/library/EngineProcessor;
    if-eqz v0, :cond_2

    .line 840
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 841
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 844
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 845
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 847
    const-string v2, "CameraApp"

    const-string v3, "getImageListUri().clear() call"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 849
    iput-boolean v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 850
    iput-boolean v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 852
    const-string v2, "CameraApp"

    const-string v3, "Panorama Controller onPause -end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 809
    const-string v0, "CameraApp"

    const-string v1, "Panorama Controller onResume !"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->setEngine()V

    goto :goto_0
.end method

.method public reInitialize()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mInit:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    .line 81
    return-void
.end method

.method public removePanoramaView()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "CameraApp"

    const-string v1, "removePanoramaView"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview;->getDrawMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public setEngine()V
    .locals 7

    .prologue
    .line 97
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v1, Lcom/lge/olaworks/library/AutoPanorama;

    iget v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeSetFrameImage:I

    iget v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeDirection:I

    iget v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mModeThumbnail:I

    new-instance v5, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$1;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lge/olaworks/library/AutoPanorama;-><init>(IIILcom/lge/olaworks/library/AutoPanorama$Callback;)V

    iput-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    .line 103
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-virtual {v1}, Lcom/lge/olaworks/library/AutoPanorama;->getModeThumbnail()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008d

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 106
    .local v0, "margin":I
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090073

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mThumbnailWidth:I

    .line 108
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090072

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mThumbnailHeight:I

    .line 110
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    iget v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mThumbnailWidth:I

    iget v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mThumbnailHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/olaworks/library/AutoPanorama;->setThumbnailExpectedSize(II)V

    .line 112
    .end local v0    # "margin":I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/olaworks/library/AutoPanorama;->setConfigureLandscape(Z)V

    .line 113
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;Z)Lcom/lge/olaworks/library/BaseEngine;

    goto :goto_0
.end method

.method public showPanoramaView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    const-string v1, "CameraApp"

    const-string v2, "showPanoramaView"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_panorama"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->inflatePanoramaView()V

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 146
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 151
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0180

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 152
    .local v0, "mShutterButton":Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_5

    .line 153
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 156
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->resetAutoPanorama()V

    .line 162
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0118

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d010f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0110

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d010d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d010e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    const v1, 0x7f0a035e

    invoke-direct {p0, v5, v1}, Lcom/lge/camera/controller/camera/PanoramaController;->showGuideCenterText(ZI)V

    .line 172
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0114

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    goto/16 :goto_0
.end method

.method public startPanorama()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 190
    const-string v2, "CameraApp"

    const-string v3, "startPanorama()"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-boolean v5, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 192
    iput-boolean v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 194
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideQuickFunctionController()V

    .line 195
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 197
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 204
    .local v0, "engine":Lcom/lge/olaworks/library/EngineProcessor;
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const-string v2, "CameraApp"

    const-string v3, "### awb/ae lock"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    invoke-direct {p0, v2, v5}, Lcom/lge/camera/controller/camera/PanoramaController;->tryEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 209
    :cond_1
    if-eqz v0, :cond_2

    .line 210
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEngineProcessor().checkEngineTag(AutoPanorama.TAG) ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AutoPanorama"

    invoke-virtual {v0, v4}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 216
    const-string v2, "AutoPanorama"

    invoke-virtual {v0, v2}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->start()V

    .line 218
    const-string v2, "CameraApp"

    const-string v3, "startPanorama() start AutoPanorama Engine..............."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0118

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0114

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_4

    .line 227
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 231
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideOptionMenu()V

    .line 232
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v8, v9}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v8, v9}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    return-void
.end method

.method public stopPanorama()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 237
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopPanorama() isPanoramaStarted() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PanoramaController;->isPanoramaStarted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 239
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mSynthesizeInProgress:Z

    .line 240
    iput-boolean v6, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaStarted:Z

    .line 242
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 243
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 244
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 245
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0118

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0111

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0114

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iput-boolean v6, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mDirectInit:Z

    .line 251
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    .line 253
    .local v0, "engine":Lcom/lge/olaworks/library/EngineProcessor;
    if-eqz v0, :cond_0

    const-string v3, "AutoPanorama"

    invoke-virtual {v0, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 255
    const-string v3, "CameraApp"

    const-string v4, "stopPanorama : engineProcessor Stop"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 260
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mPanoramaView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->resetAutoPanorama()V

    .line 263
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 264
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGuideView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->stopPanoramaDrawing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    if-nez v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-virtual {v3}, Lcom/lge/olaworks/library/AutoPanorama;->stopProcess()I

    .line 278
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 279
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 280
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 282
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_panorama"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 284
    const-string v3, "CameraApp"

    const-string v4, "### awb/ae unlock"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v2

    .line 286
    .local v2, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-direct {p0, v2, v6}, Lcom/lge/camera/controller/camera/PanoramaController;->tryEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 288
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    invoke-virtual {v2}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "continuous-picture"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 295
    const-string v3, "CameraApp"

    const-string v4, "### setFocusMode-conti"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 306
    .end local v0    # "engine":Lcom/lge/olaworks/library/EngineProcessor;
    .end local v2    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_2
    :goto_2
    return-void

    .line 265
    .restart local v0    # "engine":Lcom/lge/olaworks/library/EngineProcessor;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception occur during remove the panorama view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    iput-boolean v6, p0, Lcom/lge/camera/controller/camera/PanoramaController;->mIsReachProgressMax:Z

    goto/16 :goto_1

    .line 304
    .end local v0    # "engine":Lcom/lge/olaworks/library/EngineProcessor;
    :cond_4
    const-string v3, "CameraApp"

    const-string v4, "stopPanorama() do nothing; not started"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
