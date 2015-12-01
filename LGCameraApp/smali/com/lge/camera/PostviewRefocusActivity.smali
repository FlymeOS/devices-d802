.class public Lcom/lge/camera/PostviewRefocusActivity;
.super Lcom/lge/camera/ShotPostviewActivity;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Lcom/lge/camera/postview/PostViewBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/PostviewRefocusActivity$ImageSize;
    }
.end annotation


# static fields
.field private static final ANI_END:I = 0x2

.field private static final ANI_NONE:I = 0x0

.field private static final ANI_RUNNING:I = 0x1

.field private static final DUR_300:I = 0x12c


# instance fields
.field private mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

.field private mAnim:Landroid/view/animation/Animation;

.field private mAnimationState:I

.field private mAnimationTimer:Ljava/util/Timer;

.field private mCurMakingImageIndex:I

.field private mDepthHeight:J

.field private mDepthWidth:J

.field private mFirstRefocusDataSize:J

.field private mFrameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHideTouchEffect:Ljava/lang/Runnable;

.field private mImageDegree:I

.field private mImageSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

.field private mIndex:I

.field private mIsAllinFocusShow:Z

.field private mLoadCompleted:Z

.field private mMakeFramesThread:Ljava/lang/Thread;

.field private mMapBuf:[B

.field private mMaxFrameIndex:I

.field private mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

.field private mRefocusAnimationRunnable:Ljava/lang/Runnable;

.field private mRefocusTouch:I

.field private mRefocusTouchView:Landroid/widget/ImageView;

.field private mSaveRefocusImageThread:Ljava/lang/Thread;

.field private mScheduledTime:I

.field private mSelectedIndex:I

.field private mTimerCount:I

.field private mUseEnteringAnimation:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;-><init>()V

    .line 76
    iput-wide v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFirstRefocusDataSize:J

    .line 77
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    .line 78
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    .line 79
    iput-boolean v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    .line 80
    iput-boolean v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mLoadCompleted:Z

    .line 81
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    .line 82
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSaveRefocusImageThread:Ljava/lang/Thread;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    .line 84
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    .line 86
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I

    .line 87
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    .line 88
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIndex:I

    .line 89
    iput-wide v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthWidth:J

    .line 90
    iput-wide v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthHeight:J

    .line 91
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    .line 92
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    .line 97
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    .line 98
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I

    .line 99
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 100
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnim:Landroid/view/animation/Animation;

    .line 101
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I

    .line 102
    iput-boolean v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mUseEnteringAnimation:Z

    .line 815
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouch:I

    .line 816
    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    .line 890
    new-instance v0, Lcom/lge/camera/PostviewRefocusActivity$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewRefocusActivity$3;-><init>(Lcom/lge/camera/PostviewRefocusActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mHideTouchEffect:Ljava/lang/Runnable;

    .line 1263
    new-instance v0, Lcom/lge/camera/PostviewRefocusActivity$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewRefocusActivity$7;-><init>(Lcom/lge/camera/PostviewRefocusActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/PostviewRefocusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->setImageSizeInfo()V

    return-void
.end method

.method static synthetic access$102(Lcom/lge/camera/PostviewRefocusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I

    return p1
.end method

.method static synthetic access$108(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/PostviewRefocusActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mLoadCompleted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/PostviewRefocusActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mUseEnteringAnimation:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->updateGuideTextView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/camera/PostviewRefocusActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mHideTouchEffect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/PostviewRefocusActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->deleteAllTempFiles()V

    return-void
.end method

.method static synthetic access$1800(Lcom/lge/camera/PostviewRefocusActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewRefocusActivity;->changeFrame(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->initializeFrameAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    return v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/lge/camera/PostviewRefocusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I

    return p1
.end method

.method static synthetic access$2008(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/lge/camera/PostviewRefocusActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I

    return v0
.end method

.method static synthetic access$2302(Lcom/lge/camera/PostviewRefocusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I

    return p1
.end method

.method static synthetic access$2308(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mScheduledTime:I

    return v0
.end method

.method static synthetic access$2400(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V

    return-void
.end method

.method static synthetic access$2500(Lcom/lge/camera/PostviewRefocusActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewRefocusActivity;->startFrameAnimation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/lge/camera/PostviewRefocusActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewRefocusActivity;->setBarValue(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/PostviewRefocusActivity;[ILandroid/net/Uri;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # [I
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/PostviewRefocusActivity;->makeDrawableFrame([ILandroid/net/Uri;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/PostviewRefocusActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    return v0
.end method

.method static synthetic access$602(Lcom/lge/camera/PostviewRefocusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    return p1
.end method

.method static synthetic access$700(Lcom/lge/camera/PostviewRefocusActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewRefocusActivity;->refreshLoadCapturedImages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/lge/camera/PostviewRefocusActivity;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewRefocusActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->makeDepthMapInfo()V

    return-void
.end method

.method private changeFrame(I)V
    .locals 3
    .param p1, "curIndex"    # I

    .prologue
    .line 1122
    const v2, 0x7f0d014d

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1123
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    if-gt p1, v2, :cond_0

    .line 1128
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1129
    .local v0, "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private checkValidateRefocusImages()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1060
    const/4 v2, 0x0

    .line 1062
    .local v2, "refocusFilename":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    if-gt v1, v4, :cond_2

    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RefocusShotImage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->isTempfileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1078
    :cond_0
    :goto_1
    return v3

    .line 1062
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    :cond_2
    const-string v4, "DepthMapImage.y"

    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->isTempfileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1071
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->isAllinfocusfileExist()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1078
    const/4 v3, 0x1

    goto :goto_1

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "checkValidateRefocusImages fail!:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private deleteAllTempFiles()V
    .locals 5

    .prologue
    .line 997
    const/4 v2, 0x0

    .line 999
    .local v2, "tempFilename":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    if-gt v1, v3, :cond_0

    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RefocusShotImage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/camera/PostviewRefocusActivity;->deleteTempFile(Ljava/lang/String;)V

    .line 999
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    const-string v3, "DepthMapImage.y"

    invoke-direct {p0, v3}, Lcom/lge/camera/PostviewRefocusActivity;->deleteTempFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_1
    return-void

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "deleteAllTempFiles fail!:"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private deleteTempFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileNameWithExtension"    # Ljava/lang/String;

    .prologue
    .line 983
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 986
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refocus TempFile is deleted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    :goto_0
    return-void

    .line 989
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filePath":Ljava/lang/String;
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "Refocus TempFile delete fail."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 991
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "deleteTempFile fail!:"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getSelectedFocusIndexFrame(FF)I
    .locals 28
    .param p1, "xPoint"    # F
    .param p2, "yPoint"    # F

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mImageSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 548
    :cond_0
    const/16 v24, 0x0

    .line 645
    :goto_0
    return v24

    .line 550
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->getWidth()I

    move-result v15

    .line 551
    .local v15, "previewWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->getHeight()I

    move-result v14

    .line 553
    .local v14, "previewHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    move/from16 v24, v0

    const/16 v25, 0xb4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    move/from16 v24, v0

    const/16 v25, 0x10e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 554
    :cond_2
    int-to-float v0, v15

    move/from16 v24, v0

    sub-float p1, v24, p1

    .line 555
    int-to-float v0, v14

    move/from16 v24, v0

    sub-float p2, v24, p2

    .line 558
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    move/from16 v24, v0

    const/16 v25, 0x5a

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    move/from16 v24, v0

    const/16 v25, 0x10e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 559
    :cond_4
    move/from16 v18, v15

    .line 560
    .local v18, "temp":I
    move v15, v14

    .line 561
    move/from16 v14, v18

    .line 564
    .end local v18    # "temp":I
    :cond_5
    const-string v24, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIK test previewWidth = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", previewHeight = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :try_start_0
    const-string v24, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIK test depthWidth = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthWidth:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", depthHeight = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthHeight:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthWidth:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v15

    move/from16 v25, v0

    div-float v2, v24, v25

    .line 570
    .local v2, "depthScaleX":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthHeight:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v14

    move/from16 v25, v0

    div-float v3, v24, v25

    .line 571
    .local v3, "depthScaleY":F
    mul-float v24, v2, p1

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 572
    .local v4, "dx":I
    mul-float v24, v3, p2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 574
    .local v5, "dy":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    move/from16 v24, v0

    const/16 v25, 0x5a

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    move/from16 v24, v0

    const/16 v25, 0x10e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 575
    :cond_6
    move/from16 v18, v4

    .line 576
    .restart local v18    # "temp":I
    move v4, v5

    .line 577
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthHeight:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    sub-int v5, v24, v18

    .line 580
    .end local v18    # "temp":I
    :cond_7
    const/16 v24, 0x0

    add-int/lit8 v25, v4, -0x1e

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 581
    .local v16, "startX":I
    const/16 v24, 0x0

    add-int/lit8 v25, v5, -0x1e

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 582
    .local v17, "startY":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthWidth:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    add-int/lit8 v25, v16, 0x3d

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 583
    .local v7, "endX":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthHeight:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    add-int/lit8 v25, v17, 0x3d

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 584
    .local v8, "endY":I
    const-string v24, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIK dx = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", dy = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/16 v23, 0x0

    .line 596
    .local v23, "zeroCnt":I
    const/4 v13, 0x0

    .line 597
    .local v13, "oneCnt":I
    const/16 v20, 0x0

    .line 598
    .local v20, "twoCnt":I
    const/16 v19, 0x0

    .line 599
    .local v19, "threeCnt":I
    const/4 v9, 0x0

    .line 600
    .local v9, "fourCnt":I
    move/from16 v22, v17

    .local v22, "y":I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v8, :cond_9

    .line 601
    move/from16 v21, v16

    .local v21, "x":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v7, :cond_8

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthWidth:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    mul-int v25, v25, v22

    add-int v25, v25, v21

    aget-byte v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 601
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 604
    :pswitch_0
    add-int/lit8 v23, v23, 0x1

    .line 605
    goto :goto_3

    .line 607
    :pswitch_1
    add-int/lit8 v13, v13, 0x1

    .line 608
    goto :goto_3

    .line 610
    :pswitch_2
    add-int/lit8 v20, v20, 0x1

    .line 611
    goto :goto_3

    .line 613
    :pswitch_3
    add-int/lit8 v19, v19, 0x1

    .line 614
    goto :goto_3

    .line 616
    :pswitch_4
    add-int/lit8 v9, v9, 0x1

    .line 617
    goto :goto_3

    .line 600
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 623
    .end local v21    # "x":I
    :cond_9
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 624
    .local v11, "imageIndexArray":Landroid/util/SparseIntArray;
    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v13, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    const/16 v24, 0x2

    move/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    const/16 v24, 0x3

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v11, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 629
    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v10, v0, [I

    const/16 v24, 0x0

    aput v23, v10, v24

    const/16 v24, 0x1

    aput v13, v10, v24

    const/16 v24, 0x2

    aput v20, v10, v24

    const/16 v24, 0x3

    aput v19, v10, v24

    const/16 v24, 0x4

    aput v9, v10, v24

    .line 630
    .local v10, "imageCntArrays":[I
    invoke-static {v10}, Ljava/util/Arrays;->sort([I)V

    .line 631
    array-length v0, v10

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v24, v10, v24

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 632
    .local v12, "largestCnt":I
    const-string v24, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIK test zeroCnt = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", oneCnt = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", twoCnt = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", threeCnt = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", fourCnt = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v24, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SIK test largestCnt = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lge/camera/PostviewRefocusActivity;->setBarValue(I)V

    .line 640
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    move/from16 v24, v0

    sub-int v24, v24, v12

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/PostviewRefocusActivity;->mIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v2    # "depthScaleX":F
    .end local v3    # "depthScaleY":F
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v7    # "endX":I
    .end local v8    # "endY":I
    .end local v9    # "fourCnt":I
    .end local v10    # "imageCntArrays":[I
    .end local v11    # "imageIndexArray":Landroid/util/SparseIntArray;
    .end local v12    # "largestCnt":I
    .end local v13    # "oneCnt":I
    .end local v16    # "startX":I
    .end local v17    # "startY":I
    .end local v19    # "threeCnt":I
    .end local v20    # "twoCnt":I
    .end local v22    # "y":I
    .end local v23    # "zeroCnt":I
    :goto_4
    const-string v24, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mIndex = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mIndex:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/PostviewRefocusActivity;->mIndex:I

    move/from16 v24, v0

    goto/16 :goto_0

    .line 641
    :catch_0
    move-exception v6

    .line 642
    .local v6, "e":Ljava/lang/Exception;
    const-string v24, "CameraApp"

    const-string v25, "Map file reading fail : "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 602
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

.method private initializeFrameAnimation()V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnim:Landroid/view/animation/Animation;

    .line 1184
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1186
    :cond_0
    return-void
.end method

.method private isAllinfocusfileExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1083
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v3, :cond_1

    .line 1084
    const-string v3, "CameraApp"

    const-string v4, "mPostViewParameters."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_0
    :goto_0
    return v2

    .line 1087
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "allinfocusImagePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1092
    invoke-static {v0}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1093
    .end local v0    # "allinfocusImagePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1094
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "isTempfileExit fail!:"

    invoke-static {v3, v4, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isTempfileExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fileNameWithExtension"    # Ljava/lang/String;

    .prologue
    .line 1101
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1103
    .local v1, "fullFilePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1106
    .end local v1    # "fullFilePath":Ljava/lang/String;
    :goto_0
    return v2

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "isTempfileExit fail!:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1106
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeDepthMapInfo()V
    .locals 12

    .prologue
    .line 650
    const/4 v3, 0x0

    .line 651
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 653
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v10}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "DepthMapImage.y"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    .local v5, "mapFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v6, v10

    .line 656
    .local v6, "mapFileSize":I
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mapFile.length() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    .line 658
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 660
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_2
    iget-object v9, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    invoke-virtual {v1, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 662
    add-int/lit8 v7, v6, -0x19

    .line 663
    .local v7, "metaStartPos":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 664
    const/4 v0, 0x0

    .line 665
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :try_start_3
    iget-object v9, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    aget-byte v9, v9, v7

    and-int/lit16 v8, v9, 0xff

    .line 666
    .local v8, "notiMark":I
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Refocus metadata mark : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v9, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    add-int/lit8 v10, v7, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    iget-object v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    add-int/lit8 v11, v7, 0x2

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    iget-object v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    add-int/lit8 v11, v7, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    iget-object v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    add-int/lit8 v11, v7, 0x4

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthWidth:J

    .line 671
    iget-object v9, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    add-int/lit8 v10, v7, 0x5

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    iget-object v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    add-int/lit8 v11, v7, 0x6

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    iget-object v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    add-int/lit8 v11, v7, 0x7

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    iget-object v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    add-int/lit8 v11, v7, 0x8

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    int-to-long v10, v9

    iput-wide v10, p0, Lcom/lge/camera/PostviewRefocusActivity;->mDepthHeight:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 678
    if-eqz v0, :cond_2

    .line 680
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .line 686
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "mapFile":Ljava/io/File;
    .end local v6    # "mapFileSize":I
    .end local v7    # "metaStartPos":I
    .end local v8    # "notiMark":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 681
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "mapFile":Ljava/io/File;
    .restart local v6    # "mapFileSize":I
    .restart local v7    # "metaStartPos":I
    .restart local v8    # "notiMark":I
    :catch_0
    move-exception v2

    .line 682
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, "BufferedInpuStream cloase fail."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 683
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 675
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "mapFile":Ljava/io/File;
    .end local v6    # "mapFileSize":I
    .end local v7    # "metaStartPos":I
    .end local v8    # "notiMark":I
    :catch_1
    move-exception v2

    .line 676
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string v9, "CameraApp"

    const-string v10, "Map file reading fail : "

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 678
    if-eqz v0, :cond_0

    .line 680
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 681
    :catch_2
    move-exception v2

    .line 682
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, "BufferedInpuStream cloase fail."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v0, :cond_1

    .line 680
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 683
    :cond_1
    :goto_3
    throw v9

    .line 681
    :catch_3
    move-exception v2

    .line 682
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "CameraApp"

    const-string v11, "BufferedInpuStream cloase fail."

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 678
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "mapFile":Ljava/io/File;
    .restart local v6    # "mapFileSize":I
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 675
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "metaStartPos":I
    .restart local v8    # "notiMark":I
    :cond_2
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private makeDrawableFrame([ILandroid/net/Uri;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10
    .param p1, "dstSize"    # [I
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 461
    const/4 v4, 0x0

    .line 462
    .local v4, "imageWidth":I
    const/4 v3, 0x0

    .line 463
    .local v3, "imageHeight":I
    const/4 v2, 0x0

    .line 464
    .local v2, "degree":I
    const/4 v0, 0x0

    .line 465
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 467
    .local v1, "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v2

    .line 468
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v4

    .line 469
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v3

    .line 470
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I

    move-result-object p1

    .line 472
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aget v7, p1, v9

    const/4 v8, 0x1

    aget v8, p1, v8

    invoke-static {v5, v6, v7, v8}, Lcom/lge/camera/util/ImageManager;->loadScaledBitmap(Landroid/content/ContentResolver;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v6, v0, v2, v9}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 479
    .restart local v1    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1
.end method

.method private makeFrameList()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v0, :cond_0

    .line 382
    const-string v0, "CameraApp"

    const-string v1, "# makeFrameList : mPostViewParameters is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mUseEnteringAnimation:Z

    if-nez v0, :cond_1

    .line 387
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->showProgressDialog(II)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 395
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/PostviewRefocusActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewRefocusActivity$1;-><init>(Lcom/lge/camera/PostviewRefocusActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    .line 457
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private refreshLoadCapturedImages(I)Z
    .locals 7
    .param p1, "selectedIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 733
    iget-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v5, :cond_0

    .line 734
    const-string v5, "CameraApp"

    const-string v6, "refreshLoadCapturedImages : postview parameters get fail."

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_0
    return v4

    .line 737
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 738
    .local v2, "listSize":I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshLoadCapturedImages : listSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    if-lez v2, :cond_2

    .line 740
    const v4, 0x7f0d014d

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 742
    .local v3, "postview":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 743
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p1, :cond_1

    .line 744
    iget-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 745
    .local v0, "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    .end local v0    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v3    # "postview":Landroid/widget/ImageView;
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 749
    .restart local v3    # "postview":Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "refreshLoadCapturedImages Exception!"

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private saveRefocusImages()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    .line 904
    const-string v0, "CameraApp"

    const-string v1, "saveRefocusImages : start."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSaveRefocusImageThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSaveRefocusImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    const-string v0, "CameraApp"

    const-string v1, "saveRefocusImagesThread is already running."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->showProgressDialog(II)V

    .line 911
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/PostviewRefocusActivity$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewRefocusActivity$4;-><init>(Lcom/lge/camera/PostviewRefocusActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSaveRefocusImageThread:Ljava/lang/Thread;

    .line 977
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSaveRefocusImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setAllinFocusOptionItem()V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    .line 259
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->invalidateOptionsMenu()V

    .line 260
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBarHandlePos()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 483
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-nez v6, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x10102eb

    aput v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 489
    .local v5, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v0, v6

    .line 490
    .local v0, "actionBarHeight":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 492
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    :cond_2
    move v3, v0

    .line 495
    .local v3, "margin":I
    :cond_3
    const v6, 0x7f0d0163

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 496
    .local v1, "barHandlerLayout":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 499
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 500
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    .end local v0    # "actionBarHeight":I
    .end local v1    # "barHandlerLayout":Landroid/view/View;
    .end local v3    # "margin":I
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "styledAttributes":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "setBarHandlePos exception : "

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setBarListener()V
    .locals 2

    .prologue
    .line 1141
    const v1, 0x7f0d0164

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostViewBar;

    .line 1142
    .local v0, "postviewBar":Lcom/lge/camera/postview/PostViewBar;
    if-eqz v0, :cond_0

    .line 1143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostViewBar;->setListener(Z)V

    .line 1145
    :cond_0
    return-void
.end method

.method private setBarValue(I)V
    .locals 2
    .param p1, "barValue"    # I

    .prologue
    .line 1134
    const v1, 0x7f0d0164

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostViewBar;

    .line 1135
    .local v0, "postviewBar":Lcom/lge/camera/postview/PostViewBar;
    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {v0, p1}, Lcom/lge/camera/postview/PostViewBar;->setBarValue(I)V

    .line 1138
    :cond_0
    return-void
.end method

.method private setImageSizeInfo()V
    .locals 9

    .prologue
    .line 689
    iget-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-nez v5, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 693
    .local v1, "imageUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v2

    .line 694
    .local v2, "imageWidth":I
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v0

    .line 695
    .local v0, "imageHeight":I
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    .line 696
    iget v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageDegree:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_3

    .line 697
    :cond_2
    move v4, v2

    .line 698
    .local v4, "temp":I
    move v2, v0

    .line 699
    move v0, v4

    .line 701
    .end local v4    # "temp":I
    :cond_3
    new-instance v5, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    invoke-direct {v5, p0, v2, v0}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;-><init>(Lcom/lge/camera/PostviewRefocusActivity;II)V

    iput-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    .line 702
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    invoke-virtual {v7}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v8}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/lge/camera/util/Util;->calcFitSizeOfImageForLCD(Landroid/app/Activity;III)[I

    move-result-object v3

    .line 704
    .local v3, "size":[I
    new-instance v5, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-direct {v5, p0, v6, v7}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;-><init>(Lcom/lge/camera/PostviewRefocusActivity;II)V

    iput-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    goto :goto_0
.end method

.method private showAllinFocusImage(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    .line 263
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v1, :cond_1

    .line 264
    const-string v1, "CameraApp"

    const-string v2, "showAllinFocusImage : postview parameters get fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const v1, 0x7f0d014d

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 268
    .local v8, "postview":Landroid/widget/ImageView;
    const v1, 0x7f0d0164

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostViewBar;

    .line 269
    .local v0, "postviewBar":Lcom/lge/camera/postview/PostViewBar;
    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v7

    .line 275
    .local v7, "allinfocusUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "allinfocusImagePath":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAllinFocusImage : allinfocusUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/lge/camera/PostviewRefocusActivity;->makeDrawableFrame([ILandroid/net/Uri;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 281
    .end local v6    # "allinfocusImagePath":Ljava/lang/String;
    .end local v7    # "allinfocusUri":Landroid/net/Uri;
    :cond_2
    if-eqz p1, :cond_3

    .line 282
    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/AnimationUtil;->startShowingAnimation(Landroid/view/View;ZJLandroid/view/animation/Animation$AnimationListener;Z)V

    .line 283
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_3
    iget v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->refreshLoadCapturedImages(I)Z

    .line 287
    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/AnimationUtil;->startShowingAnimation(Landroid/view/View;ZJLandroid/view/animation/Animation$AnimationListener;Z)V

    goto :goto_0
.end method

.method private showFocusDown(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 819
    const v0, 0x7f0d0161

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    .line 820
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 824
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    const v1, 0x7f020383

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 825
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901a3

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouch:I

    .line 827
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/PostviewRefocusActivity;->showFocusMove(II)V

    goto :goto_0
.end method

.method private showFocusMove(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 831
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mHideTouchEffect:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewRefocusActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 832
    const v2, 0x7f0d0160

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 833
    .local v1, "rl":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 834
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 835
    .local v0, "lpLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouch:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 836
    iget v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouch:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 837
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    .end local v0    # "lpLayout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 843
    :cond_1
    return-void
.end method

.method private showFocusUp(II)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 846
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 888
    :goto_0
    return-void

    .line 850
    :cond_0
    const/high16 v14, 0x3f800000    # 1.0f

    .line 851
    .local v14, "scaleStart":F
    const v13, 0x3f170a3d    # 0.59f

    .line 852
    .local v13, "scaleEnd":F
    const/high16 v8, 0x3e800000    # 0.25f

    .line 853
    .local v8, "alphaStart":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 854
    .local v7, "alphaEnd":F
    const-wide/16 v10, 0x1f4

    .line 856
    .local v10, "delayEnd":J
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f170a3d    # 0.59f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f170a3d    # 0.59f

    iget v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouch:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouch:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 861
    .local v0, "mAniFocusScale":Landroid/view/animation/ScaleAnimation;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v12, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 863
    .local v12, "mAniFocusAlpha":Landroid/view/animation/AlphaAnimation;
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 864
    .local v9, "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 865
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 866
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 867
    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 868
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 869
    new-instance v1, Lcom/lge/camera/PostviewRefocusActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewRefocusActivity$2;-><init>(Lcom/lge/camera/PostviewRefocusActivity;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 887
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startFrameAnimation(I)Z
    .locals 7
    .param p1, "curIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 1189
    const v5, 0x7f0d015e

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1190
    .local v3, "frameView":Landroid/widget/ImageView;
    const v5, 0x7f0d014d

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1191
    .local v2, "frameBackView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return v4

    .line 1197
    :cond_1
    const/4 v0, 0x0

    .line 1198
    .local v0, "bmpD1":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 1199
    .local v1, "bmpD2":Landroid/graphics/drawable/BitmapDrawable;
    iget v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    if-ge p1, v5, :cond_3

    .line 1200
    iget-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmpD1":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1201
    .restart local v0    # "bmpD1":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bmpD2":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1202
    .restart local v1    # "bmpD2":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1203
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1205
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1207
    iget-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1214
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1208
    :cond_3
    iget v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    if-ne p1, v5, :cond_2

    .line 1209
    iget-object v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bmpD1":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1210
    .restart local v0    # "bmpD1":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1211
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1212
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private startRefocusAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1218
    const-string v0, "CameraApp"

    const-string v1, "startRefocusAnimation-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    if-eqz v0, :cond_2

    .line 1220
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->updateGuideTextView()V

    .line 1221
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    if-ne v0, v2, :cond_0

    .line 1222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewRefocusActivity;->setBarValue(I)V

    .line 1224
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    .line 1225
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->invalidateOptionsMenu()V

    .line 1226
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    if-eqz v0, :cond_1

    .line 1227
    invoke-direct {p0, v2}, Lcom/lge/camera/PostviewRefocusActivity;->showAllinFocusImage(Z)V

    .line 1261
    :goto_0
    return-void

    .line 1229
    :cond_1
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewRefocusActivity;->refreshLoadCapturedImages(I)Z

    goto :goto_0

    .line 1233
    :cond_2
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewRefocusActivity;->setBarValue(I)V

    .line 1234
    new-instance v0, Lcom/lge/camera/PostviewRefocusActivity$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewRefocusActivity$6;-><init>(Lcom/lge/camera/PostviewRefocusActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/camera/PostviewRefocusActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private stopRefocusAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1305
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v2, :cond_2

    .line 1306
    const-string v2, "CameraApp"

    const-string v3, "stopRefocusAnimation-stop"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1308
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1309
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 1310
    iget v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    iput v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    .line 1311
    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->setBarValue(I)V

    .line 1312
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->setBarListener()V

    .line 1313
    const v2, 0x7f0d015e

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1314
    .local v0, "aniView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1316
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1317
    invoke-static {v0}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1319
    :cond_0
    const v2, 0x7f0d014d

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1320
    .local v1, "imageView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1321
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1322
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1324
    :cond_1
    iget v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    invoke-direct {p0, v2}, Lcom/lge/camera/PostviewRefocusActivity;->refreshLoadCapturedImages(I)Z

    .line 1325
    iput v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    .line 1326
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->updateGuideTextView()V

    .line 1327
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->invalidateOptionsMenu()V

    .line 1331
    .end local v0    # "aniView":Landroid/widget/ImageView;
    .end local v1    # "imageView":Landroid/view/View;
    :goto_0
    iput v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mTimerCount:I

    .line 1332
    return-void

    .line 1329
    :cond_2
    iput v5, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    goto :goto_0
.end method

.method private updateGuideTextView()V
    .locals 10

    .prologue
    const v9, 0x7f0a03b4

    const/4 v8, 0x0

    .line 508
    const v6, 0x7f0d0162

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 509
    .local v1, "guideTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-nez v6, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-boolean v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    if-eqz v6, :cond_2

    .line 514
    const v6, 0x7f0a03b1

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewRefocusActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    .line 518
    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewRefocusActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 520
    :cond_3
    const v6, 0x7f0a03b3

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewRefocusActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "textContent":Ljava/lang/String;
    const-string v0, "(#1#)"

    .line 522
    .local v0, "goal":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 523
    .local v2, "index":I
    if-ltz v2, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_5

    .line 524
    :cond_4
    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewRefocusActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 529
    :cond_5
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 530
    .local v3, "result":Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02027f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 532
    .local v4, "saveIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 535
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    const/16 v8, 0x21

    invoke-virtual {v3, v6, v2, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 538
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkTempFileOverwritten()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1111
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1112
    .local v2, "mTempFileNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 1113
    .local v0, "checkValue":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1114
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v1, "mPresentTempfile":Ljava/io/File;
    iget-wide v6, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFirstRefocusDataSize:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1116
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFirstRefocusDataSize:J

    .line 1118
    .end local v1    # "mPresentTempfile":Ljava/io/File;
    :cond_0
    return v0

    .restart local v1    # "mPresentTempfile":Ljava/io/File;
    :cond_1
    move v0, v4

    .line 1115
    goto :goto_0
.end method

.method protected doBackKeyInPostview()V
    .locals 2

    .prologue
    .line 357
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK - return..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_1
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->onCreateDialog(II)V

    goto :goto_0
.end method

.method protected doPreProcessOnCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    .line 108
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I

    .line 109
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mUseEnteringAnimation:Z

    if-eqz v0, :cond_0

    .line 110
    iput v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    goto :goto_0
.end method

.method protected doProcessOnCreate()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->isFromCreateProcess:Z

    .line 119
    iput-boolean v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mLoadCompleted:Z

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFirstRefocusDataSize:J

    .line 124
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_postview"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 125
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 127
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 129
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 132
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method protected doProcessOnDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 196
    .local v1, "imageListSize":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 197
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/lge/camera/util/Util;->recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "i":I
    .end local v1    # "imageListSize":I
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 199
    .restart local v0    # "i":I
    .restart local v1    # "imageListSize":I
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 200
    iput-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;

    .line 203
    .end local v0    # "i":I
    .end local v1    # "imageListSize":I
    :cond_2
    const v3, 0x7f0d0164

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/postview/PostViewBar;

    .line 204
    .local v2, "postviewBar":Lcom/lge/camera/postview/PostViewBar;
    if-eqz v2, :cond_3

    .line 205
    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewBar;->unbind()V

    .line 207
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    if-eqz v3, :cond_4

    .line 208
    iput-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMapBuf:[B

    .line 210
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_5

    .line 211
    iget-object v3, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v3}, Lcom/lge/camera/util/Util;->recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iput-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 214
    :cond_5
    iput-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mImageSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    .line 215
    iput-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    .line 216
    iput-object v4, p0, Lcom/lge/camera/PostviewRefocusActivity;->mRefocusTouchView:Landroid/widget/ImageView;

    .line 217
    return-void
.end method

.method protected doProcessOnPause()V
    .locals 3

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V

    .line 178
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mHideTouchEffect:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mHideTouchEffect:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 184
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    .line 190
    :cond_1
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "InterruptedException: "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doProcessOnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->setBarHandlePos()V

    .line 137
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->isFromCreateProcess:Z

    if-eqz v0, :cond_2

    .line 138
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mUseEnteringAnimation:Z

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->startRefocusAnimation()V

    .line 172
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->isFromCreateProcess:Z

    .line 173
    :goto_1
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    .line 142
    iget v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    iput v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    .line 143
    invoke-direct {p0, v2}, Lcom/lge/camera/PostviewRefocusActivity;->setBarValue(I)V

    .line 144
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->setBarListener()V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->checkValidateRefocusImages()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewRefocusActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    iput-boolean v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->isFromCreateProcess:Z

    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->checkTempFileOverwritten()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    const-string v0, "CameraApp"

    const-string v1, "File over written! need to reload."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->loadSingleCapturedImages()Z

    .line 159
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->makeFrameList()V

    goto :goto_0

    .line 161
    :cond_5
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mLoadCompleted:Z

    if-nez v0, :cond_6

    .line 162
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->makeFrameList()V

    .line 163
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mUseEnteringAnimation:Z

    if-eqz v0, :cond_6

    .line 164
    iput v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    .line 167
    :cond_6
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mUseEnteringAnimation:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->startRefocusAnimation()V

    goto :goto_0
.end method

.method public doRefocusWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 7
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1040
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1043
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1044
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "REFOCUS_DO_NOT_SHOW"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1045
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1048
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1049
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 1050
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1051
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "Exception!"

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doRefocusWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 3
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 1029
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewRefocusActivity;->doRefocusWarningNegativeClick(Landroid/widget/CheckBox;)V

    .line 1030
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->deleteAllTempFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->finish()V

    .line 1036
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1034
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->finish()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->finish()V

    throw v1
.end method

.method protected doVolumeKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    const-string v0, "shutter"

    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getVolumeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->doBackKeyInPostview()V

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getPx(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 221
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

    .line 222
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByWindowOrientation()V

    .line 224
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->setBarHandlePos()V

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->setImageSizeInfo()V

    .line 227
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V

    .line 228
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewRefocusActivity;->showAllinFocusImage(Z)V

    .line 229
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->updateGuideTextView()V

    .line 231
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    return-void
.end method

.method protected onCreateDialog(II)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "applicationMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 1011
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1014
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    const-string v2, "REFOCUS_DO_NOT_SHOW"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1015
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->finish()V

    .line 1025
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1022
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V

    .line 1023
    invoke-static {p1, p2}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v0

    .line 1024
    .local v0, "mDialog":Lcom/lge/camera/postview/PostviewDialog;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_postview"

    invoke-virtual {v0, v2, v3}, Lcom/lge/camera/postview/PostviewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCursorMoving(Z)V
    .locals 0
    .param p1, "actionEnd"    # Z

    .prologue
    .line 1167
    return-void
.end method

.method public onCursorUpdated(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1149
    iget v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1150
    .local v0, "frameValue":I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCursorUpdated value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", frameValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    new-instance v1, Lcom/lge/camera/PostviewRefocusActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/lge/camera/PostviewRefocusActivity$5;-><init>(Lcom/lge/camera/PostviewRefocusActivity;I)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1163
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 254
    :goto_0
    return v1

    .line 238
    :sswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->doBackKeyInPostview()V

    .line 239
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V

    goto :goto_0

    .line 242
    :sswitch_1
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V

    .line 243
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->saveRefocusImages()V

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->stopRefocusAnimation()V

    .line 247
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->setAllinFocusOptionItem()V

    .line 248
    iget-boolean v0, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewRefocusActivity;->showAllinFocusImage(Z)V

    .line 249
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->updateGuideTextView()V

    goto :goto_0

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0265 -> :sswitch_2
        0x7f0d0266 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x7f0d0265

    .line 293
    iget v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 294
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 305
    :goto_0
    return v2

    .line 296
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 297
    .local v1, "item":Landroid/view/MenuItem;
    if-nez v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 300
    :cond_1
    iget-boolean v2, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    if-eqz v2, :cond_2

    const v0, 0x7f02027d

    .line 303
    .local v0, "allinfocusResId":I
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 304
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 305
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    .line 300
    .end local v0    # "allinfocusResId":I
    :cond_2
    const v0, 0x7f02027c

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 758
    iget-object v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 762
    iget-boolean v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    if-eqz v11, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->setAllinFocusOptionItem()V

    .line 764
    iget-boolean v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z

    invoke-direct {p0, v11}, Lcom/lge/camera/PostviewRefocusActivity;->showAllinFocusImage(Z)V

    .line 765
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->updateGuideTextView()V

    .line 768
    :cond_0
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 769
    .local v4, "outMetrics":Landroid/util/DisplayMetrics;
    const-string v11, "window"

    invoke-virtual {p0, v11}, Lcom/lge/camera/PostviewRefocusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 770
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 772
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 773
    .local v2, "lcdWidth":I
    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 774
    .local v1, "lcdHeight":I
    iget-object v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    invoke-virtual {v11}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->getWidth()I

    move-result v11

    sub-int v11, v2, v11

    div-int/lit8 v3, v11, 0x2

    .line 775
    .local v3, "leftMargin":I
    iget-object v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    invoke-virtual {v11}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->getHeight()I

    move-result v11

    sub-int v11, v1, v11

    div-int/lit8 v7, v11, 0x2

    .line 777
    .local v7, "topMargin":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v8, v11

    .line 778
    .local v8, "touchX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    .line 780
    .local v9, "touchY":I
    sub-int v5, v8, v3

    .line 781
    .local v5, "pointX":I
    sub-int v6, v9, v7

    .line 783
    .local v6, "pointY":I
    if-ltz v5, :cond_2

    if-ltz v6, :cond_2

    iget-object v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    invoke-virtual {v11}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->getWidth()I

    move-result v11

    if-ge v5, v11, :cond_2

    iget-object v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mPreviewSize:Lcom/lge/camera/PostviewRefocusActivity$ImageSize;

    invoke-virtual {v11}, Lcom/lge/camera/PostviewRefocusActivity$ImageSize;->getHeight()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    packed-switch v11, :pswitch_data_0

    .line 812
    .end local v1    # "lcdHeight":I
    .end local v2    # "lcdWidth":I
    .end local v3    # "leftMargin":I
    .end local v4    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "pointX":I
    .end local v6    # "pointY":I
    .end local v7    # "topMargin":I
    .end local v8    # "touchX":I
    .end local v9    # "touchY":I
    .end local v10    # "wm":Landroid/view/WindowManager;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    return v11

    .line 790
    .restart local v1    # "lcdHeight":I
    .restart local v2    # "lcdWidth":I
    .restart local v3    # "leftMargin":I
    .restart local v4    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "pointX":I
    .restart local v6    # "pointY":I
    .restart local v7    # "topMargin":I
    .restart local v8    # "touchX":I
    .restart local v9    # "touchY":I
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :pswitch_0
    invoke-direct {p0, v8, v9}, Lcom/lge/camera/PostviewRefocusActivity;->showFocusDown(II)V

    goto :goto_0

    .line 793
    :pswitch_1
    invoke-direct {p0, v8, v9}, Lcom/lge/camera/PostviewRefocusActivity;->showFocusMove(II)V

    goto :goto_0

    .line 796
    :pswitch_2
    invoke-direct {p0, v8, v9}, Lcom/lge/camera/PostviewRefocusActivity;->showFocusUp(II)V

    .line 798
    :try_start_0
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIK touch pointX = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", pointY = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    int-to-float v11, v5

    int-to-float v12, v6

    invoke-direct {p0, v11, v12}, Lcom/lge/camera/PostviewRefocusActivity;->getSelectedFocusIndexFrame(FF)I

    move-result v11

    iput v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    .line 800
    iget v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I

    invoke-direct {p0, v11}, Lcom/lge/camera/PostviewRefocusActivity;->refreshLoadCapturedImages(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "CameraApp"

    const-string v12, "onTouchEvent : "

    invoke-static {v11, v12, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 809
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v11, p0, Lcom/lge/camera/PostviewRefocusActivity;->mHideTouchEffect:Ljava/lang/Runnable;

    invoke-virtual {p0, v11}, Lcom/lge/camera/PostviewRefocusActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected postviewShow()V
    .locals 3

    .prologue
    .line 318
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK show()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const v1, 0x7f0d015d

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, "postView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 322
    const-string v1, "CameraApp"

    const-string v2, "postviewShow : inflate view fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->checkValidateRefocusImages()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->loadSingleCapturedImages()Z

    .line 335
    invoke-direct {p0}, Lcom/lge/camera/PostviewRefocusActivity;->makeFrameList()V

    goto :goto_0
.end method

.method protected reloadedPostview()V
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 341
    const v1, 0x7f0d014d

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 342
    .local v0, "postview":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    .end local v0    # "postview":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected setActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/lge/camera/PostviewRefocusActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 311
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 312
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 313
    const v1, 0x7f0a03af

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 314
    return-void
.end method

.method protected setupLayout()V
    .locals 2

    .prologue
    .line 348
    const v1, 0x7f0d015a

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->inflateStub(I)Landroid/view/View;

    .line 349
    const v1, 0x7f0d0164

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostViewBar;

    .line 350
    .local v0, "postviewBar":Lcom/lge/camera/postview/PostViewBar;
    if-eqz v0, :cond_0

    .line 351
    iget v1, p0, Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I

    invoke-virtual {v0, v1, p0}, Lcom/lge/camera/postview/PostViewBar;->initBar(ILcom/lge/camera/postview/PostViewBarListener;)V

    .line 353
    :cond_0
    return-void
.end method
