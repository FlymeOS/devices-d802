.class public Lcom/lge/camera/PostviewTimeMachineActivity;
.super Lcom/lge/camera/ShotPostviewActivity;
.source "PostviewTimeMachineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;
    }
.end annotation


# static fields
.field private static final GALLERY_LAUNCH_CLICKED:I = 0x1

.field private static final GALLERY_LAUNCH_NONE:I = 0x0

.field private static final GALLERY_LAUNCH_STARTED:I = 0x2

.field private static final TIMEMACHINE_EFFECT_NOT_START:I = 0x0

.field private static final TIMEMACHINE_SAVE_EFFECT:I = 0x1

.field private static final TIMEMACHINE_SAVE_NORMAL:I = 0x2


# instance fields
.field private anim:Landroid/view/animation/Animation;

.field private isAnimationRunning:Z

.field private isGalleryLaunchingState:I

.field private mAnimationTimer:Ljava/util/Timer;

.field private mCurrentMakingImageIndex:I

.field private mFirstTimeMachineDataSize:J

.field private mMakeGalleryImageThread:Ljava/lang/Thread;

.field private mOnTimemachineImageClickListener:Landroid/view/View$OnClickListener;

.field private mScheduledTime:I

.field private mSelectedIndexs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

.field private mTimeMachineAnimationRunnable:Ljava/lang/Runnable;

.field private mTimeMachineShotCount:I

.field private mTimemachineMode:I

.field private mTimerCount:I

.field private outSize:Landroid/graphics/Point;

.field private saveButtonDone:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;-><init>()V

    .line 71
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mFirstTimeMachineDataSize:J

    .line 74
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;

    .line 372
    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    .line 418
    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    .line 419
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    .line 655
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$4;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOnTimemachineImageClickListener:Landroid/view/View$OnClickListener;

    .line 1132
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$5;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->saveButtonDone:Ljava/lang/Runnable;

    .line 1140
    iput-boolean v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z

    .line 1218
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    .line 1219
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    .line 1220
    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 1221
    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    .line 1222
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    .line 1274
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$8;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineAnimationRunnable:Ljava/lang/Runnable;

    .line 1506
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/PostviewTimeMachineActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineShotAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/camera/PostviewTimeMachineActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->selectThumbItem(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lge/camera/PostviewTimeMachineActivity;ZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/lge/camera/PostviewTimeMachineActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    return v0
.end method

.method static synthetic access$1402(Lcom/lge/camera/PostviewTimeMachineActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    return p1
.end method

.method static synthetic access$1408(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    return v0
.end method

.method static synthetic access$1510(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/PostviewTimeMachineActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lge/camera/PostviewTimeMachineActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineClockMinuteAnimation(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lge/camera/PostviewTimeMachineActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineClockSecAnimation(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/lge/camera/PostviewTimeMachineActivity;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/PostviewTimeMachineActivity;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/PostviewTimeMachineActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/PostviewTimeMachineActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    return p1
.end method

.method static synthetic access$310(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/PostviewTimeMachineActivity;Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/PostviewTimeMachineActivity;->changeThumbnailImages(Landroid/graphics/drawable/BitmapDrawable;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/PostviewTimeMachineActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/PostviewTimeMachineActivity;)Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    return-object v0
.end method

.method private addTimemachineImageView(Landroid/graphics/drawable/BitmapDrawable;IIII)V
    .locals 9
    .param p1, "bmpD"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "index"    # I
    .param p3, "thumbWidth"    # I
    .param p4, "thumbHeight"    # I
    .param p5, "leftMargin"    # I

    .prologue
    const/4 v6, 0x1

    .line 585
    new-instance v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;IIZ)V

    .line 587
    .local v0, "galThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOnTimemachineImageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 590
    .local v7, "param":Landroid/widget/RelativeLayout$LayoutParams;
    mul-int v1, p2, p3

    add-int/lit8 v2, p2, 0x1

    mul-int/2addr v2, p5

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 592
    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    if-ne p2, v1, :cond_0

    .line 593
    invoke-virtual {v0, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 596
    :cond_0
    const v1, 0x7f0d0174

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 597
    .local v8, "timeMachineGalleryImage":Landroid/view/View;
    if-eqz v8, :cond_1

    .line 598
    check-cast v8, Landroid/widget/RelativeLayout;

    .end local v8    # "timeMachineGalleryImage":Landroid/view/View;
    invoke-virtual {v8, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    :cond_1
    return-void
.end method

.method private changeThumbnailImages(Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 1
    .param p1, "bmpD"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "index"    # I

    .prologue
    .line 504
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/lge/camera/PostviewTimeMachineActivity$3;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;ILandroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method

.method private checkValidateOneShotImage()Z
    .locals 7

    .prologue
    .line 1006
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, "oneShotSaveDir":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, "oneShotFileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    .local v2, "oneShotFullFilePath":Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkValidateOneShotImage path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v0, "oneShotFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1013
    const-string v4, "CameraApp"

    const-string v5, "checkValidateOneShotImage File exist."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const/4 v4, 0x1

    .line 1017
    :goto_0
    return v4

    .line 1016
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "checkValidateOneShotImage file is not exist."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private checkValidateTimeMachineImage()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 1021
    const/4 v7, 0x0

    .local v7, "totalCount":I
    const/4 v8, 0x0

    .line 1022
    .local v8, "validateCount":I
    const/4 v3, 0x0

    .line 1023
    .local v3, "tempFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 1025
    .local v5, "tempFilePath":Ljava/lang/String;
    const v9, 0x7f0d0174

    :try_start_0
    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1027
    .local v6, "timeMachineGalleryImage":Landroid/view/View;
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 1032
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1033
    const-string v9, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "validateImage() image list count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    const/4 v2, 0x0

    .local v2, "index":I
    move-object v4, v3

    .line 1035
    .end local v3    # "tempFile":Ljava/io/File;
    .local v4, "tempFile":Ljava/io/File;
    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1036
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1037
    if-eqz v5, :cond_1

    .line 1038
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1039
    .end local v4    # "tempFile":Ljava/io/File;
    .restart local v3    # "tempFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1040
    const-string v9, "CameraApp"

    const-string v11, "found deleted image!"

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1042
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1043
    move-object v0, v6

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v9, v0

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 1052
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 1053
    const-string v9, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tot = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / validateCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    if-ne v7, v8, :cond_3

    .line 1059
    :goto_2
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    .line 1060
    if-nez v7, :cond_2

    move v9, v10

    .line 1067
    .end local v2    # "index":I
    .end local v6    # "timeMachineGalleryImage":Landroid/view/View;
    :goto_3
    return v9

    .line 1045
    .restart local v2    # "index":I
    .restart local v6    # "timeMachineGalleryImage":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1048
    .end local v3    # "tempFile":Ljava/io/File;
    .restart local v4    # "tempFile":Ljava/io/File;
    :cond_1
    :try_start_3
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1049
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1050
    move-object v0, v6

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v9, v0

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->removeViewAt(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    .end local v4    # "tempFile":Ljava/io/File;
    .restart local v3    # "tempFile":Ljava/io/File;
    goto :goto_1

    .line 1064
    .end local v2    # "index":I
    :cond_2
    const/4 v9, 0x1

    goto :goto_3

    .line 1065
    .end local v6    # "timeMachineGalleryImage":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 1066
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    const-string v9, "CameraApp"

    const-string v11, "Exception!"

    invoke-static {v9, v11, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v9, v10

    .line 1067
    goto :goto_3

    .line 1065
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "tempFile":Ljava/io/File;
    .restart local v2    # "index":I
    .restart local v4    # "tempFile":Ljava/io/File;
    .restart local v6    # "timeMachineGalleryImage":Landroid/view/View;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "tempFile":Ljava/io/File;
    .restart local v3    # "tempFile":Ljava/io/File;
    goto :goto_4

    :cond_3
    move-object v4, v3

    .end local v3    # "tempFile":Ljava/io/File;
    .restart local v4    # "tempFile":Ljava/io/File;
    goto/16 :goto_0

    :cond_4
    move-object v3, v4

    .end local v4    # "tempFile":Ljava/io/File;
    .restart local v3    # "tempFile":Ljava/io/File;
    goto :goto_2
.end method

.method private clickTimeMachineSave()V
    .locals 3

    .prologue
    .line 1089
    const-string v1, "CameraApp"

    const-string v2, "Time machine sava clicked."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->checkPauseAndAutoReview()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 1095
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getCountThumbnailSelected()I

    move-result v0

    .line 1096
    .local v0, "nSelectedCount":I
    if-lez v0, :cond_2

    .line 1097
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/util/FileNamer;->setTMSaveCount(I)V

    .line 1098
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->saveButtonDone:Ljava/lang/Runnable;

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewToast;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1101
    const v1, 0x7f0a0192

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    .end local v0    # "nSelectedCount":I
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->showCheckBox(Z)V

    goto :goto_0
.end method

.method private deleteOriginalShotFile()V
    .locals 7

    .prologue
    .line 954
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, "oneShotSaveDir":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "oneShotFileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, "oneShotFullFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 959
    .local v1, "oneShotFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 961
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 963
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 964
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 966
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->setSecureImageList(Landroid/net/Uri;Z)V

    .line 969
    :cond_1
    return-void
.end method

.method private deleteSelectedImage(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeMachineImage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 973
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 975
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->deleteImage(Ljava/lang/String;Landroid/net/Uri;)I

    .line 976
    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private doGalleryLaunching()V
    .locals 9

    .prologue
    .line 1536
    const-string v6, "CameraApp"

    const-string v7, "doGalleryLaunching-start."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v5

    .line 1540
    .local v5, "upToDateUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1541
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1544
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v6, "com.android.gallery3d"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1551
    const/4 v3, 0x0

    .line 1553
    .local v3, "intent":Landroid/content/Intent;
    iget-boolean v6, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_0

    .line 1554
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->onCreateDialog(II)V

    .line 1567
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CameraApp"

    const-string v7, "Gallery is not founded:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1547
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    goto :goto_0

    .line 1557
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v6, "com.android.camera.action.REVIEW"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1558
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x4000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1560
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->startActivity(Landroid/content/Intent;)V

    .line 1561
    const/4 v6, 0x2

    iput v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    .line 1562
    const-string v6, "CameraApp"

    const-string v7, "doGalleryLaunching-started."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1563
    :catch_1
    move-exception v1

    .line 1564
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "review fail! uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private gallerySlideDownAnimation(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1143
    const-string v3, "CameraApp"

    const-string v4, "gallerySlideDownAnimation"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const v3, 0x7f0d0171

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1146
    .local v2, "galleryView":Landroid/view/View;
    iget-boolean v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 1173
    .end local v2    # "galleryView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1149
    .restart local v2    # "galleryView":Landroid/view/View;
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1152
    .local v1, "gallerySlideDownAnimation":Landroid/view/animation/Animation;
    if-eqz v1, :cond_2

    .line 1153
    new-instance v3, Lcom/lge/camera/PostviewTimeMachineActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity$6;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1167
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1169
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1170
    .end local v1    # "gallerySlideDownAnimation":Landroid/view/animation/Animation;
    .end local v2    # "galleryView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "CameraApp"

    const-string v4, "NullPointerException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getCountThumbnailSelected()I
    .locals 6

    .prologue
    .line 685
    const/4 v2, 0x0

    .line 686
    .local v2, "nCount":I
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 687
    .local v3, "size":I
    const/4 v0, 0x0

    .line 688
    .local v0, "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 689
    const v4, 0x7f0d0174

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 691
    .restart local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 688
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    :cond_1
    return v2
.end method

.method private makeTimeMachineGalleryImages()V
    .locals 6

    .prologue
    .line 422
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v3, :cond_0

    .line 423
    const-string v3, "CameraApp"

    const-string v4, "Postview : postview parameters get fail."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 428
    .local v0, "imageListSize":I
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0204a7

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 430
    .local v2, "tempBmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 431
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    .end local v1    # "index":I
    .end local v2    # "tempBmp":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    .line 437
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/PostviewTimeMachineActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity$2;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    .line 499
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private makeTimemachineGalleryLayout()V
    .locals 8

    .prologue
    .line 567
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v0, :cond_1

    .line 568
    const-string v0, "CameraApp"

    const-string v1, "Postview : postview parameters get fail."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    return-void

    .line 572
    :cond_1
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 573
    .local v7, "timeMachineGalleryImage":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 574
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 575
    .local v6, "imageListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 576
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v3

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbHeight()I

    move-result v4

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getLeftMargin()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->addTimemachineImageView(Landroid/graphics/drawable/BitmapDrawable;IIII)V

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private refreshLoadCapturedImages(I)Z
    .locals 7
    .param p1, "selectedIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 603
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v5, :cond_0

    .line 604
    const-string v5, "CameraApp"

    const-string v6, "TMC Postview : postview parameters get fail."

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :goto_0
    return v4

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 609
    .local v2, "listSize":I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TMC refreshLoadCapturedImages : listSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    if-lez v2, :cond_2

    .line 611
    const v4, 0x7f0d014d

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 614
    .local v3, "postview":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 615
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p1, :cond_1

    .line 616
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 617
    .local v0, "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    .end local v0    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v3    # "postview":Landroid/widget/ImageView;
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 621
    .restart local v3    # "postview":Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "TMC setCapturedImageView Exception!"

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private reloadTimemachineGalleryLayout()V
    .locals 9

    .prologue
    .line 525
    const-string v4, "CameraApp"

    const-string v5, "reloadTimemachineGalleryLayout."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v4, :cond_1

    .line 527
    const-string v4, "CameraApp"

    const-string v5, "Postview : postview parameters get fail."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    return-void

    .line 531
    :cond_1
    const v4, 0x7f0d0174

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 534
    .local v3, "timeMachineGalleryImage":Landroid/view/View;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 539
    .local v2, "imageListSize":I
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->setThumbnailSizeInfo()V

    .line 541
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->setGalleryLayout()V

    .line 543
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 548
    .restart local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_2

    .line 550
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v5}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbHeight()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v6

    mul-int/2addr v6, v1

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getLeftMargin()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setThumbSize(III)V

    .line 556
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v5}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbHeight()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setThumbBitmap(Landroid/graphics/drawable/BitmapDrawable;II)V

    .line 559
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setVisibility(I)V

    .line 545
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private renameForTimeMachineShot()V
    .locals 25

    .prologue
    .line 853
    const-string v2, "CameraApp"

    const-string v4, "renameForTimeMachineShot-start"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    const-string v4, "shotmode_timemachine"

    const-string v5, "key_scene_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v2, :cond_4

    .line 860
    :try_start_0
    const-string v16, ".jpg"

    .line 861
    .local v16, "fileExt":Ljava/lang/String;
    const/16 v22, 0x0

    .line 862
    .local v22, "tempFilePath":Ljava/lang/String;
    const/16 v19, 0x0

    .line 863
    .local v19, "newFilePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 864
    .local v10, "newFileDir":Ljava/lang/String;
    const/4 v3, 0x0

    .line 865
    .local v3, "newFileName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 866
    .local v23, "tempfile":Ljava/io/File;
    const/16 v18, 0x0

    .line 867
    .local v18, "newFile":Ljava/io/File;
    const/16 v20, 0x0

    .line 868
    .local v20, "resultUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 870
    .local v12, "degree":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 871
    .local v21, "size":I
    const/16 v17, 0x0

    .local v17, "index":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 873
    invoke-static/range {v22 .. v22}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v12

    .line 874
    new-instance v23, Ljava/io/File;

    .end local v23    # "tempfile":Ljava/io/File;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .restart local v23    # "tempfile":Ljava/io/File;
    if-nez v17, :cond_3

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v3

    .line 878
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseNewNamingRule()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .end local v3    # "newFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "shotmode_timemachine"

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 900
    .restart local v3    # "newFileName":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v10

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 904
    new-instance v18, Ljava/io/File;

    .end local v18    # "newFile":Ljava/io/File;
    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    .restart local v18    # "newFile":Ljava/io/File;
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename TMS tempFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename TMS newFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 910
    .local v14, "dir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 911
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 913
    :cond_1
    if-eqz v3, :cond_2

    .line 914
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 915
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v8}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLongitude()D

    move-result-wide v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "key_camera_shot_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/camera/PostviewTimeMachineActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v24, "shotmode_full_continuous"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static/range {v2 .. v13}, Lcom/lge/camera/util/ImageManager;->insertToContentResolver(Landroid/content/ContentResolver;Ljava/lang/String;JDDLjava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v20

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "key_uplus_box"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 940
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->setSecureImageList(Landroid/net/Uri;Z)V

    .line 871
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 890
    .end local v14    # "dir":Ljava/io/File;
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .end local v3    # "newFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "shotmode_timemachine"

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "newFileName":Ljava/lang/String;
    goto/16 :goto_1

    .line 945
    .end local v3    # "newFileName":Ljava/lang/String;
    .end local v10    # "newFileDir":Ljava/lang/String;
    .end local v12    # "degree":I
    .end local v16    # "fileExt":Ljava/lang/String;
    .end local v17    # "index":I
    .end local v18    # "newFile":Ljava/io/File;
    .end local v19    # "newFilePath":Ljava/lang/String;
    .end local v20    # "resultUri":Landroid/net/Uri;
    .end local v21    # "size":I
    .end local v22    # "tempFilePath":Ljava/lang/String;
    .end local v23    # "tempfile":Ljava/io/File;
    :catch_0
    move-exception v15

    .line 946
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v4, "Exception!"

    invoke-static {v2, v4, v15}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->finish()V

    .line 950
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v2, "CameraApp"

    const-string v4, "renameForTimeMachineShot-end"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method private saveSelectedImages(ZZ)I
    .locals 6
    .param p1, "deleteAll"    # Z
    .param p2, "deleteOriginalShotFile"    # Z

    .prologue
    .line 807
    const-string v3, "CameraApp"

    const-string v4, "saveSelectedImages()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 810
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 812
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    .line 820
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 822
    .local v2, "uriListSize":I
    add-int/lit8 v1, v2, -0x1

    .line 823
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_4

    .line 824
    if-eqz p1, :cond_1

    .line 825
    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->deleteSelectedImage(I)V

    .line 826
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 835
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 813
    .end local v1    # "index":I
    .end local v2    # "uriListSize":I
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "CameraApp"

    const-string v4, "InterruptedException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 828
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "index":I
    .restart local v2    # "uriListSize":I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 829
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TMC delete index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->deleteSelectedImage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 845
    .end local v1    # "index":I
    .end local v2    # "uriListSize":I
    :catch_1
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "ArrayIndexOutOfBoundsException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 847
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->finish()V

    .line 849
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3

    .line 832
    .restart local v1    # "index":I
    .restart local v2    # "uriListSize":I
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 838
    :cond_4
    if-eqz p2, :cond_5

    .line 839
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->deleteOriginalShotFile()V

    .line 842
    :cond_5
    if-nez p1, :cond_2

    .line 843
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->renameForTimeMachineShot()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private selectThumbItem(I)V
    .locals 5
    .param p1, "selectIndex"    # I

    .prologue
    .line 629
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 630
    .local v2, "size":I
    const/4 v0, 0x0

    .line 631
    .local v0, "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 632
    const v3, 0x7f0d0174

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 634
    .restart local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    .line 635
    if-ne p1, v1, :cond_2

    .line 636
    iput p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    .line 637
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 639
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 640
    invoke-virtual {v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked()V

    .line 641
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 642
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 648
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    goto :goto_1

    .line 652
    :cond_3
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 653
    return-void
.end method

.method private setClockAnimationView(Z)V
    .locals 9
    .param p1, "isSet"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1385
    const v6, 0x7f0d016d

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1386
    .local v2, "clockAniView":Landroid/view/View;
    const v6, 0x7f0d016e

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1387
    .local v3, "clockBgView":Landroid/widget/ImageView;
    const v6, 0x7f0d016f

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1388
    .local v4, "clockNeedleMinuteView":Landroid/widget/ImageView;
    const v6, 0x7f0d0170

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1390
    .local v5, "clockNeedleSecView":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v6, :cond_1

    .line 1393
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1394
    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1396
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    invoke-static {v3}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1399
    invoke-static {v4}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1400
    invoke-static {v5}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1402
    if-eqz p1, :cond_3

    .line 1403
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    const v6, 0x7f020282

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1405
    const v6, 0x7f020283

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1407
    const v6, 0x7f020284

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1410
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1412
    .local v1, "clockAniParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0901be

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 1418
    .local v0, "clockAniMarginTop":I
    :goto_0
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1419
    const/16 v6, 0xa

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1420
    const/16 v6, 0x15

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1421
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1422
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1430
    .end local v0    # "clockAniMarginTop":I
    .end local v1    # "clockAniParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 1412
    .restart local v1    # "clockAniParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0901bf

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 1425
    .end local v1    # "clockAniParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-static {v3}, Lcom/lge/camera/util/Util;->clearImageViewBackgroundDrawable(Landroid/widget/ImageView;)V

    .line 1426
    invoke-static {v4}, Lcom/lge/camera/util/Util;->clearImageViewBackgroundDrawable(Landroid/widget/ImageView;)V

    .line 1427
    invoke-static {v5}, Lcom/lge/camera/util/Util;->clearImageViewBackgroundDrawable(Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method private setGalleryLayout()V
    .locals 5

    .prologue
    .line 335
    const v3, 0x7f0d0173

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 338
    .local v2, "timeMachineGalleryScroll":Landroid/view/View;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v3, :cond_0

    .line 342
    const/4 v1, 0x0

    .line 345
    .local v1, "galleryWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 348
    .local v0, "galleryParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 361
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;

    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 363
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 364
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .end local v0    # "galleryParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "galleryWidth":I
    :cond_0
    return-void
.end method

.method private setThumbListVisible(ZII)V
    .locals 7
    .param p1, "all"    # Z
    .param p2, "index"    # I
    .param p3, "visible"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 699
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 700
    .local v2, "size":I
    const/4 v0, 0x0

    .line 701
    .local v0, "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 702
    const v3, 0x7f0d0174

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 704
    .restart local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    .line 705
    if-eqz p1, :cond_2

    .line 706
    invoke-virtual {v0, p3}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setVisibility(I)V

    .line 707
    invoke-virtual {v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->clearAnimation()V

    .line 708
    if-nez p3, :cond_0

    .line 709
    if-ne p2, v1, :cond_1

    .line 710
    invoke-virtual {v0, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 701
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :cond_1
    invoke-virtual {v0, v5}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    goto :goto_1

    .line 716
    :cond_2
    if-ne p2, v1, :cond_3

    .line 717
    iput p2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    .line 718
    invoke-virtual {v0, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 719
    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineThumbAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 721
    :cond_3
    invoke-virtual {v0, v5}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    goto :goto_1

    .line 726
    :cond_4
    return-void
.end method

.method private showCheckBox(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 670
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 671
    .local v2, "size":I
    const/4 v0, 0x0

    .line 672
    .local v0, "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 673
    const v3, 0x7f0d0174

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 675
    .restart local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0, p1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->showCheckbox(Z)V

    .line 677
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 678
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked(Z)V

    .line 672
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    :cond_1
    return-void
.end method

.method private startTimeMachineFinishAnimaion()V
    .locals 4

    .prologue
    .line 1072
    const v1, 0x7f0d0171

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    .local v0, "galleryView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V

    .line 1078
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mExitInteraction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private startTimeMachineShotAnimation()V
    .locals 8

    .prologue
    .line 1225
    const-string v0, "CameraApp"

    const-string v2, "startAnimation-start"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    .line 1233
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    if-eqz v0, :cond_0

    .line 1236
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    .line 1238
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 1239
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040016

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    .line 1241
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 1242
    const-string v0, "CameraApp"

    const-string v2, "ShowTimeMachineEffect startAnimation() anim = null"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1269
    :catch_0
    move-exception v6

    .line 1270
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1247
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 1249
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1251
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1252
    .local v7, "imageView":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 1253
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    :cond_3
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V

    .line 1257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->setClockAnimationView(Z)V

    .line 1259
    new-instance v0, Ljava/util/Timer;

    const-string v2, "TimeMachine"

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 1260
    new-instance v1, Lcom/lge/camera/PostviewTimeMachineActivity$7;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$7;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    .line 1267
    .local v1, "taskTimeMachine":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private stopTimeMachineAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1347
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v4, :cond_4

    .line 1348
    const-string v4, "CameraApp"

    const-string v5, "stopTimeMachineAnimation-stop"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1350
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 1351
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 1352
    const/4 v4, 0x4

    iput v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    .line 1354
    const v4, 0x7f0d016f

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1355
    .local v1, "clockMinuteView":Landroid/widget/ImageView;
    const v4, 0x7f0d0170

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1356
    .local v2, "clockSecView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 1357
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1359
    :cond_0
    if-eqz v2, :cond_1

    .line 1360
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1362
    :cond_1
    invoke-direct {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->setClockAnimationView(Z)V

    .line 1364
    const v4, 0x7f0d015e

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1365
    .local v0, "aniView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 1366
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1367
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1368
    invoke-static {v0}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1370
    :cond_2
    const v4, 0x7f0d014d

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1371
    .local v3, "imageView":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1372
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1373
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    :cond_3
    const/4 v4, 0x1

    iget v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V

    .line 1376
    iget v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 1377
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    .line 1378
    const/4 v4, 0x2

    iput v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 1380
    .end local v0    # "aniView":Landroid/widget/ImageView;
    .end local v1    # "clockMinuteView":Landroid/widget/ImageView;
    .end local v2    # "clockSecView":Landroid/widget/ImageView;
    .end local v3    # "imageView":Landroid/view/View;
    :cond_4
    iput v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    .line 1381
    iput v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    .line 1382
    return-void
.end method

.method private stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V
    .locals 2
    .param p1, "shotToast"    # Z

    .prologue
    .line 1203
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimation()V

    .line 1205
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 1207
    iget-boolean v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPause:Z

    if-nez v1, :cond_0

    .line 1208
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->showCheckBox(Z)V

    .line 1213
    const v1, 0x7f0d0172

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1214
    .local v0, "guideTextLayout":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    .end local v0    # "guideTextLayout":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private timeMachineClockMinuteAnimation(I)V
    .locals 11
    .param p1, "clockInterval"    # I

    .prologue
    .line 1433
    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    if-gez v1, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    const/4 v9, 0x0

    .line 1438
    .local v9, "fromDegree":I
    const/16 v10, -0x1e

    .line 1440
    .local v10, "toDegree":I
    :try_start_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v9

    int-to-float v2, v10

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1443
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1444
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1445
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1446
    const v1, 0x7f0d016f

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1447
    .local v7, "clockView":Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 1448
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1450
    .end local v0    # "ra":Landroid/view/animation/RotateAnimation;
    .end local v7    # "clockView":Landroid/widget/ImageView;
    :catch_0
    move-exception v8

    .line 1451
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1452
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    goto :goto_0
.end method

.method private timeMachineClockSecAnimation(I)V
    .locals 11
    .param p1, "clockInterval"    # I

    .prologue
    .line 1457
    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    if-gez v1, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    const/4 v9, 0x0

    .line 1462
    .local v9, "fromDegree":I
    const/16 v10, -0x168

    .line 1464
    .local v10, "toDegree":I
    :try_start_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v9

    int-to-float v2, v10

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1467
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1468
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1469
    const v1, 0x7f0d0170

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1470
    .local v7, "clockView":Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 1471
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1473
    .end local v0    # "ra":Landroid/view/animation/RotateAnimation;
    .end local v7    # "clockView":Landroid/widget/ImageView;
    :catch_0
    move-exception v8

    .line 1474
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1475
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    goto :goto_0
.end method

.method private timeMachineThumbAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1480
    if-eqz p1, :cond_0

    .line 1481
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1482
    .local v0, "alphaAni":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Lcom/lge/camera/PostviewTimeMachineActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity$9;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1496
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1497
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1498
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1499
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1501
    .end local v0    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkTimeMachineFileOverwritten()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1578
    const/4 v0, 0x0

    .line 1579
    .local v0, "checkValue":Z
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1580
    .local v2, "mTempTmsNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1581
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1583
    .local v1, "mPresentTimeMachinefile":Ljava/io/File;
    iget-wide v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mFirstTimeMachineDataSize:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1584
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mFirstTimeMachineDataSize:J

    .line 1586
    .end local v1    # "mPresentTimeMachinefile":Ljava/io/File;
    :cond_0
    return v0

    .restart local v1    # "mPresentTimeMachinefile":Ljava/io/File;
    :cond_1
    move v0, v4

    .line 1583
    goto :goto_0
.end method

.method protected deleteFinished()V
    .locals 3

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1083
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "delete_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1084
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->setResult(ILandroid/content/Intent;)V

    .line 1085
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineFinishAnimaion()V

    .line 1086
    return-void
.end method

.method protected deleteImage(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, "fullPath":Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 989
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 990
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    const-string v2, "CameraApp"

    const-string v3, "deleted uri"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1002
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return v2

    .line 994
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "failure to delete uri!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "delete failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "failure delete image file (return -1)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected doBackKeyInPostview()V
    .locals 2

    .prologue
    .line 1190
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget-boolean v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK - return..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :goto_0
    return-void

    .line 1195
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 1197
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->onCreateDialog(II)V

    goto :goto_0
.end method

.method public doEnableGalleryPositiveClick()V
    .locals 3

    .prologue
    .line 1571
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    .line 1572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.android.gallery3d"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1574
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startActivity(Landroid/content/Intent;)V

    .line 1575
    return-void
.end method

.method protected doPreProcessOnCreate()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected doProcessOnCreate()V
    .locals 6

    .prologue
    .line 82
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isFromCreateProcess:Z

    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mFirstTimeMachineDataSize:J

    .line 87
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_postview"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 88
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 90
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 92
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 95
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method protected doProcessOnDestroy()V
    .locals 9

    .prologue
    const v8, 0x7f0d0174

    const/4 v7, 0x0

    .line 192
    invoke-virtual {p0, v8}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 193
    .local v4, "timeMachineGalleryImage":Landroid/view/View;
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v5, :cond_1

    .line 194
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 195
    .local v3, "size":I
    const/4 v0, 0x0

    .line 196
    .local v0, "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 197
    invoke-virtual {p0, v8}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 199
    .restart local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->unbind()V

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    if-eqz v4, :cond_2

    .line 205
    check-cast v4, Landroid/widget/RelativeLayout;

    .end local v4    # "timeMachineGalleryImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 208
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 209
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    const/4 v2, 0x0

    .line 210
    .local v2, "imageListSize":I
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 211
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Lcom/lge/camera/util/Util;->recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 209
    .end local v1    # "i":I
    .end local v2    # "imageListSize":I
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    .line 213
    .restart local v1    # "i":I
    .restart local v2    # "imageListSize":I
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 214
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    .line 216
    .end local v1    # "i":I
    .end local v2    # "imageListSize":I
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 217
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 218
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    .line 220
    :cond_6
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    .line 221
    const/4 v5, 0x2

    iput v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 223
    return-void
.end method

.method protected doProcessOnPause()V
    .locals 4

    .prologue
    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z

    .line 170
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    .line 179
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 180
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 187
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/util/FileNamer;->close(Landroid/content/Context;I)V

    .line 188
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "InterruptedException: "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doProcessOnResume()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 100
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startFileNamer(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 110
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->checkValidateTimeMachineImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->checkValidateOneShotImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    iput-boolean v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isFromCreateProcess:Z

    .line 164
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isFromCreateProcess:Z

    if-eqz v0, :cond_3

    .line 118
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 119
    .local v7, "imageView":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 120
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_2
    invoke-direct {p0, v5, v8, v9}, Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V

    .line 124
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$1;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 132
    .end local v7    # "imageView":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->checkTimeMachineFileOverwritten()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    const-string v0, "CameraApp"

    const-string v1, "File over written! need to reload."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput v10, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 135
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    .line 137
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    :cond_4
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    if-ne v0, v10, :cond_6

    .line 144
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    if-eqz v0, :cond_5

    .line 145
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->makeTimeMachineGalleryImages()V

    .line 147
    :cond_5
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->reloadTimemachineGalleryLayout()V

    .line 148
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 149
    invoke-direct {p0, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 152
    :cond_6
    iget-boolean v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isFromCreateProcess:Z

    if-eqz v0, :cond_7

    .line 153
    iput v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    .line 154
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 156
    .local v6, "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    invoke-virtual {v6, v5}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 157
    invoke-virtual {v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked()V

    .line 158
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 162
    .end local v6    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    :cond_7
    iput-boolean v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isFromCreateProcess:Z

    .line 163
    iput v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    goto/16 :goto_0
.end method

.method public doTimeMachineWarningDismiss()V
    .locals 2

    .prologue
    .line 801
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    .line 804
    :cond_0
    return-void
.end method

.method public doTimeMachineWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 6
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 786
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Main_CameraAppConfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 789
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 790
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "TIME_MACHINE_DO_NOT_SHOW"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 791
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 793
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doTimeMachineWarningDismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doTimeMachineWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 7
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    const/4 v6, 0x1

    .line 761
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Main_CameraAppConfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 764
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 765
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "TIME_MACHINE_DO_NOT_SHOW"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 766
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 769
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 770
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    if-ne v3, v6, :cond_2

    .line 771
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    .line 772
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doGalleryLaunching()V

    .line 781
    :cond_1
    :goto_0
    return-void

    .line 774
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    .line 775
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineFinishAnimaion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doVolumeKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    const-string v0, "shutter"

    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getVolumeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doBackKeyInPostview()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 227
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByWindowOrientation()V

    .line 231
    :cond_0
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->reloadTimemachineGalleryLayout()V

    .line 235
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 236
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    return-void
.end method

.method protected onCreateDialog(II)V
    .locals 7
    .param p1, "dialogId"    # I
    .param p2, "applicationMode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 730
    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    .line 731
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Main_CameraAppConfig"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 733
    .local v2, "pref":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_3

    const-string v3, "TIME_MACHINE_DO_NOT_SHOW"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 734
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 735
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 737
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 738
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    if-ne v3, v6, :cond_2

    .line 739
    invoke-direct {p0, v6, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    .line 740
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doGalleryLaunching()V

    .line 756
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 742
    .restart local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineFinishAnimaion()V

    .line 743
    invoke-direct {p0, v6, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    goto :goto_0

    .line 749
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {p1, p2}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v1

    .line 750
    .local v1, "mDialog":Lcom/lge/camera/postview/PostviewDialog;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_postview"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 752
    .local v0, "dialogFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 754
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_postview"

    invoke-virtual {v1, v3, v4}, Lcom/lge/camera/postview/PostviewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 261
    :goto_0
    return v2

    .line 243
    :sswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doBackKeyInPostview()V

    goto :goto_0

    .line 246
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 247
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->onCreateDialog(II)V

    goto :goto_0

    .line 251
    :sswitch_2
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    if-ne v0, v2, :cond_0

    .line 252
    invoke-direct {p0, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 256
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->clickTimeMachineSave()V

    goto :goto_1

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0261 -> :sswitch_2
        0x7f0d0264 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 266
    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    packed-switch v1, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 270
    :pswitch_0
    const v1, 0x7f0d0261

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 271
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected postviewShow()V
    .locals 3

    .prologue
    .line 310
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK show()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const v1, 0x7f0d016c

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "postView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 313
    const-string v1, "CameraApp"

    const-string v2, "postviewShow : inflate view fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_1
    new-instance v1, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;Lcom/lge/camera/PostviewTimeMachineActivity$1;)V

    iput-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    .line 320
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->setThumbnailSizeInfo()V

    .line 322
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->makeTimemachineGalleryLayout()V

    .line 323
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->makeTimeMachineGalleryImages()V

    goto :goto_0
.end method

.method protected reloadedPostview()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 329
    const v1, 0x7f0d014d

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 330
    .local v0, "postview":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    .end local v0    # "postview":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected setActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 288
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 289
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 290
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 291
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 293
    const v1, 0x7f0a02f1

    .line 294
    .local v1, "stringId":I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    const v1, 0x7f0a0263

    .line 299
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 300
    return-void

    .line 297
    :cond_0
    const v1, 0x7f0a02f1

    goto :goto_0
.end method

.method protected setupLayout()V
    .locals 1

    .prologue
    .line 304
    const v0, 0x7f0d0158

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->inflateStub(I)Landroid/view/View;

    .line 305
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->setGalleryLayout()V

    .line 306
    return-void
.end method
