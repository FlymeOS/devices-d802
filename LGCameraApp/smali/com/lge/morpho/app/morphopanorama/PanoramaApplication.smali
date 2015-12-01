.class public Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;
.super Landroid/app/Application;
.source "PanoramaApplication.java"


# static fields
.field public static final SENSOR_CORRECTION_EXTRA_TIME:I = 0x3e8

.field public static final SENSOR_CORRECTION_TIME_BEFORE_HAND:I = 0x2710

.field public static final SENSOR_CORRECTION_TIME_EVERYTIME:I = 0xbb8


# instance fields
.field private mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

.field private mPostviewDefaultParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

.field private mPostviewParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

.field private mSaveInfo:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;

.field private mSavePanoramaImageRunnable:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;

.field private mSavePanoramaImageThread:Ljava/lang/Thread;

.field private mSaveStillImageDir:Ljava/lang/String;

.field private mTmpStillImageDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    return-object v0
.end method

.method public getPostviewDefaultParam()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mPostviewDefaultParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

    return-object v0
.end method

.method public getPostviewParam()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mPostviewParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

    return-object v0
.end method

.method public getSaveInfo()Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mSaveInfo:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;

    return-object v0
.end method

.method public getSavePanoramaImageRunnable()Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mSavePanoramaImageRunnable:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;

    return-object v0
.end method

.method public getSavePanoramaImageThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mSavePanoramaImageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getSaveStillImageDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mSaveStillImageDir:Ljava/lang/String;

    return-object v0
.end method

.method public getTmpStillImageDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mTmpStillImageDir:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public setMorphoImageStitcher(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;)V
    .locals 0
    .param p1, "image_stitcher"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 62
    return-void
.end method

.method public setPostviewDefaultParam(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)V
    .locals 0
    .param p1, "param"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mPostviewDefaultParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

    .line 90
    return-void
.end method

.method public setPostviewParam(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)V
    .locals 0
    .param p1, "param"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mPostviewParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

    .line 86
    return-void
.end method

.method public setSaveInfo(Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mSaveInfo:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;

    .line 82
    return-void
.end method

.method public setSavePanoramaImageRunnable(Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;)V
    .locals 0
    .param p1, "runnable"    # Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mSavePanoramaImageRunnable:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;

    .line 78
    return-void
.end method

.method public setSavePanoramaImageThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mSavePanoramaImageThread:Ljava/lang/Thread;

    .line 74
    return-void
.end method

.method public setSaveStillImageDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mSaveStillImageDir:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTmpStillImageDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaApplication;->mTmpStillImageDir:Ljava/lang/String;

    .line 70
    return-void
.end method
