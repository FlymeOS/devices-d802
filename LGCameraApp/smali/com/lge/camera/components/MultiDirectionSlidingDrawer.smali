.class public Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "MultiDirectionSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_BTT:I = 0x1

.field public static final ORIENTATION_LTR:I = 0x2

.field public static final ORIENTATION_RTL:I = 0x0

.field public static final ORIENTATION_TTB:I = 0x3

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mInvert:Z

.field private mLocked:Z

.field private mMaximumAcceleration:I

.field private mMaximumMajorVelocity:I

.field private mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 63
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 81
    new-instance v5, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;-><init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 163
    sget-object v5, Lcom/lge/camera/R$styleable;->MultiDirectionSlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 168
    .local v4, "orientation":I
    if-eq v4, v7, :cond_0

    if-ne v4, v10, :cond_2

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    .line 169
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    .line 171
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    .line 172
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAllowSingleTap:Z

    .line 174
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimateOnClick:Z

    .line 176
    if-eq v4, v10, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_1
    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    .line 178
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 179
    .local v3, "handleId":I
    if-nez v3, :cond_4

    .line 180
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "handleId":I
    :cond_2
    move v5, v6

    .line 168
    goto :goto_0

    :cond_3
    move v5, v6

    .line 176
    goto :goto_1

    .line 184
    .restart local v3    # "handleId":I
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 185
    .local v1, "contentId":I
    if-nez v1, :cond_5

    .line 186
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    :cond_5
    if-ne v3, v1, :cond_6

    .line 191
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_6
    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleId:I

    .line 195
    iput v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContentId:I

    .line 197
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 198
    .local v2, "density":F
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    .line 199
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumTapVelocity:I

    .line 200
    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    .line 201
    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    .line 202
    const/high16 v5, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    .line 203
    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityUnits:I

    .line 205
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_7

    .line 206
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    .line 207
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    .line 208
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    .line 211
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    invoke-virtual {p0, v6}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 213
    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    .line 513
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    .line 514
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    .line 518
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    .line 519
    return-void
.end method

.method private closeDrawer()V
    .locals 3

    .prologue
    .line 970
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 971
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 974
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    .line 979
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a03a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x10

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 813
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->incrementAnimation()V

    .line 816
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v0, :cond_4

    .line 817
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 818
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 819
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->closeDrawer()V

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    neg-int v2, v0

    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v0, v3

    :goto_1
    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 822
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 823
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 820
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v0, v3

    goto :goto_1

    .line 825
    :cond_3
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 826
    iget-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    .line 827
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 831
    :cond_4
    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    .line 833
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 834
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->closeDrawer()V

    goto :goto_0

    .line 831
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    .line 835
    :cond_6
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 836
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 837
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 839
    :cond_7
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 840
    iget-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    .line 841
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 849
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 850
    .local v2, "now":J
    iget-wide v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v4, v6, v7

    .line 851
    .local v4, "t":F
    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    .line 852
    .local v1, "position":F
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 853
    .local v5, "v":F
    iget-boolean v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 854
    .local v0, "a":F
    :goto_0
    mul-float v6, v5, v4

    add-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    .line 855
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 856
    iput-wide v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    .line 857
    return-void

    .line 853
    .end local v0    # "a":F
    :cond_0
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    goto :goto_0
.end method

.method private moveHandle(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 642
    iget-object v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 644
    .local v3, "handle":Landroid/view/View;
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_8

    .line 645
    if-ne p1, v9, :cond_1

    .line 646
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_0

    .line 647
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    neg-int v7, v7

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 652
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 744
    :goto_1
    return-void

    .line 650
    :cond_0
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 653
    :cond_1
    if-ne p1, v8, :cond_3

    .line 654
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_2

    .line 655
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 660
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    goto :goto_1

    .line 657
    :cond_2
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 662
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 663
    .local v6, "top":I
    sub-int v1, p1, v6

    .line 665
    .local v1, "deltaY":I
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_6

    .line 666
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    if-le p1, v7, :cond_5

    .line 667
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    .line 680
    :cond_4
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 682
    iget-object v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 683
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 685
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 686
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 688
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 689
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 692
    invoke-virtual {p0, v5}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 668
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_5
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    sub-int/2addr v7, v6

    if-ge v1, v7, :cond_4

    .line 669
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    sub-int v1, v7, v6

    goto :goto_3

    .line 672
    :cond_6
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_7

    .line 673
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    goto :goto_3

    .line 674
    :cond_7
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_4

    .line 676
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_3

    .line 695
    .end local v1    # "deltaY":I
    .end local v6    # "top":I
    :cond_8
    if-ne p1, v9, :cond_a

    .line 696
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_9

    .line 697
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    neg-int v7, v7

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 702
    :goto_4
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 700
    :cond_9
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 703
    :cond_a
    if-ne p1, v8, :cond_c

    .line 704
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_b

    .line 705
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 711
    :goto_5
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 708
    :cond_b
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    .line 713
    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 714
    .local v4, "left":I
    sub-int v0, p1, v4

    .line 715
    .local v0, "deltaX":I
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_f

    .line 716
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    if-le p1, v7, :cond_e

    .line 717
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    .line 729
    :cond_d
    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 731
    iget-object v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 732
    .restart local v2    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 734
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 735
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 737
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 738
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 741
    invoke-virtual {p0, v5}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 718
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_e
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    sub-int/2addr v7, v4

    if-ge v0, v7, :cond_d

    .line 719
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    sub-int v0, v7, v4

    goto :goto_6

    .line 722
    :cond_f
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_10

    .line 723
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    goto :goto_6

    .line 724
    :cond_10
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_d

    .line 726
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_6
.end method

.method private openDrawer()V
    .locals 3

    .prologue
    .line 988
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 989
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 991
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    .line 996
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a03a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    .prologue
    .line 522
    int-to-float v8, p1

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    .line 523
    iput p2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 530
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_11

    .line 531
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v0

    .line 532
    .local v0, "bottom":I
    :goto_0
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_3

    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    .line 534
    .local v5, "handleHeight":I
    :goto_1
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-gez v8, :cond_4

    const/4 v1, 0x1

    .line 535
    .local v1, "c1":Z
    :goto_2
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_8

    add-int v8, p1, v5

    sub-int v8, v0, v8

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int/2addr v8, v9

    if-le v8, v5, :cond_7

    const/4 v2, 0x1

    .line 537
    .local v2, "c2":Z
    :goto_3
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-gez v8, :cond_b

    const/4 v3, 0x1

    .line 538
    .local v3, "c3":Z
    :goto_4
    if-nez p3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    .line 540
    :cond_0
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v8, v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 541
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_e

    .line 542
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 543
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 602
    .end local v0    # "bottom":I
    .end local v5    # "handleHeight":I
    :cond_1
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 603
    .local v6, "now":J
    iput-wide v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    .line 604
    const-wide/16 v8, 0x10

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    .line 605
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 606
    iget-object v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iget-wide v10, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 608
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->stopTracking()V

    .line 609
    return-void

    .line 531
    .end local v1    # "c1":Z
    .end local v2    # "c2":Z
    .end local v3    # "c3":Z
    .end local v6    # "now":J
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v0

    goto :goto_0

    .line 532
    .restart local v0    # "bottom":I
    :cond_3
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_1

    .line 534
    .restart local v5    # "handleHeight":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 535
    .restart local v1    # "c1":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    :goto_6
    add-int/2addr v8, v9

    if-le p1, v8, :cond_a

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 537
    .restart local v2    # "c2":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_4

    .line 546
    .restart local v3    # "c3":Z
    :cond_e
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1

    .line 547
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_5

    .line 553
    :cond_f
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 555
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_10

    .line 556
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1

    .line 557
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_5

    .line 560
    :cond_10
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 561
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 569
    .end local v0    # "bottom":I
    .end local v1    # "c1":Z
    .end local v2    # "c2":Z
    .end local v3    # "c3":Z
    .end local v5    # "handleHeight":I
    :cond_11
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_14

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-gez v8, :cond_13

    const/4 v1, 0x1

    .line 570
    .restart local v1    # "c1":Z
    :goto_7
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_18

    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_16

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v8

    :goto_8
    div-int/lit8 v8, v8, 0x2

    if-ge p1, v8, :cond_17

    const/4 v2, 0x1

    .line 572
    .restart local v2    # "c2":Z
    :goto_9
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_1c

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1b

    const/4 v3, 0x1

    .line 573
    .restart local v3    # "c3":Z
    :goto_a
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_1f

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v8, v9

    if-lt p1, v8, :cond_1e

    const/4 v4, 0x1

    .line 575
    .local v4, "c4":Z
    :goto_b
    if-nez p3, :cond_22

    if-nez v4, :cond_22

    if-nez v1, :cond_12

    if-eqz v2, :cond_22

    if-eqz v3, :cond_22

    .line 576
    :cond_12
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v8, v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 578
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_21

    .line 579
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 580
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 569
    .end local v1    # "c1":Z
    .end local v2    # "c2":Z
    .end local v3    # "c3":Z
    .end local v4    # "c4":Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_7

    :cond_14
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_15

    const/4 v1, 0x1

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    goto :goto_7

    .line 570
    .restart local v1    # "c1":Z
    :cond_16
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    goto :goto_9

    :cond_18
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_19

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v8

    :goto_c
    div-int/lit8 v8, v8, 0x2

    if-le p1, v8, :cond_1a

    const/4 v2, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_9

    .line 572
    .restart local v2    # "c2":Z
    :cond_1b
    const/4 v3, 0x0

    goto :goto_a

    :cond_1c
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1d

    const/4 v3, 0x1

    goto :goto_a

    :cond_1d
    const/4 v3, 0x0

    goto :goto_a

    .line 573
    .restart local v3    # "c3":Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_b

    :cond_1f
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    if-gt p1, v8, :cond_20

    const/4 v4, 0x1

    goto :goto_b

    :cond_20
    const/4 v4, 0x0

    goto :goto_b

    .line 583
    .restart local v4    # "c4":Z
    :cond_21
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1

    .line 584
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 588
    :cond_22
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 590
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_23

    .line 591
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1

    .line 592
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 595
    :cond_23
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 596
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5
.end method

.method private prepareContent()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 747
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 796
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    .line 754
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 756
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_4

    .line 757
    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    .line 758
    .local v1, "handleHeight":I
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 759
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 763
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_3

    .line 764
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 790
    .end local v1    # "handleHeight":I
    .end local v3    # "height":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 791
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_2

    .line 792
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 795
    :cond_2
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 767
    .restart local v1    # "handleHeight":I
    .restart local v3    # "height":I
    :cond_3
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 772
    .end local v1    # "handleHeight":I
    .end local v3    # "height":I
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 773
    .local v2, "handleWidth":I
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 774
    .local v4, "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 777
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_5

    .line 778
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 781
    :cond_5
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 612
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    .line 613
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 614
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 616
    .local v2, "opening":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 617
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 618
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 619
    iget-boolean v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v3, :cond_1

    .line 620
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    .line 625
    :goto_1
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 626
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 627
    iget-object v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 629
    .local v0, "now":J
    iput-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    .line 630
    const-wide/16 v6, 0x10

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    .line 631
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 639
    .end local v0    # "now":J
    :goto_2
    return-void

    .end local v2    # "opening":Z
    :cond_0
    move v2, v3

    .line 614
    goto :goto_0

    .line 622
    .restart local v2    # "opening":Z
    :cond_1
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_3
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_3

    .line 633
    :cond_3
    iget-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_4

    .line 634
    iput-boolean v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 635
    iget-object v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    :cond_4
    invoke-direct {p0, p1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 799
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 800
    iput-boolean v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    .line 802
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 810
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareContent()V

    .line 934
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    .line 935
    .local v0, "scrollListener":Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 936
    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 938
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose(I)V

    .line 940
    if-eqz v0, :cond_1

    .line 941
    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 943
    :cond_1
    return-void

    .line 938
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareContent()V

    .line 956
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    .line 957
    .local v0, "scrollListener":Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 958
    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 960
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateOpen(I)V

    .line 962
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 964
    if-eqz v0, :cond_1

    .line 965
    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 967
    :cond_1
    return-void

    .line 960
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateOpen()V

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->closeDrawer()V

    .line 919
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 920
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 921
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    .line 270
    .local v2, "drawingTime":J
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 271
    .local v1, "handle":Landroid/view/View;
    iget-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    .line 273
    .local v4, "isVertical":Z
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 275
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_b

    .line 276
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 277
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 278
    if-eqz v4, :cond_3

    .line 279
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_2

    .line 280
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 307
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-void

    .line 282
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 285
    :cond_3
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :goto_2
    invoke-virtual {p1, v0, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_2

    .line 290
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_8

    .line 292
    if-eqz v4, :cond_6

    move v7, v6

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    :goto_4
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    :goto_5
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 292
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move v7, v5

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4

    .line 297
    :cond_8
    if-eqz v4, :cond_a

    move v5, v6

    :goto_6
    if-eqz v4, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    :cond_9
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    goto :goto_6

    .line 304
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_b
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 305
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1091
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    .line 1074
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 217
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;-><init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a03a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 231
    :goto_0
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a03a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 363
    iget-boolean v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v7

    .line 367
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 369
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 370
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 372
    .local v6, "y":F
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 373
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 375
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 376
    iget-boolean v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 380
    :cond_2
    if-nez v0, :cond_4

    .line 381
    iput-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    .line 383
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 385
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareContent()V

    .line 388
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_3

    .line 389
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 392
    :cond_3
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 393
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 394
    .local v4, "top":I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTouchDelta:I

    .line 395
    invoke-direct {p0, v4}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    .line 401
    .end local v4    # "top":I
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    .line 404
    goto :goto_0

    .line 397
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 398
    .local v3, "left":I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTouchDelta:I

    .line 399
    invoke-direct {p0, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 313
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 359
    :goto_0
    return-void

    .line 316
    :cond_0
    sub-int v7, p4, p2

    .line 317
    .local v7, "width":I
    sub-int v6, p5, p3

    .line 318
    .local v6, "height":I
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 320
    .local v1, "handle":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 321
    .local v5, "handleWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 326
    .local v2, "handleHeight":I
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    .line 328
    .local v0, "content":Landroid/view/View;
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_4

    .line 329
    sub-int v8, v7, v5

    div-int/lit8 v3, v8, 0x2

    .line 330
    .local v3, "handleLeft":I
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_2

    .line 331
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v8, v6, v8

    sub-int v4, v8, v2

    .line 332
    .local v4, "handleTop":I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v9, v6, v9

    sub-int/2addr v9, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v11, v6, v11

    sub-int/2addr v11, v2

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 356
    :goto_2
    add-int v8, v3, v5

    add-int v9, v4, v2

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 357
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    .line 358
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 331
    .end local v4    # "handleTop":I
    :cond_1
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v4, v8

    goto :goto_1

    .line 336
    :cond_2
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    .line 337
    .restart local v4    # "handleTop":I
    :goto_3
    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 336
    .end local v4    # "handleTop":I
    :cond_3
    sub-int v8, v6, v2

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int v4, v8, v9

    goto :goto_3

    .line 342
    .end local v3    # "handleLeft":I
    :cond_4
    sub-int v8, v6, v2

    div-int/lit8 v4, v8, 0x2

    .line 343
    .restart local v4    # "handleTop":I
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_6

    .line 344
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v8, v7, v8

    sub-int v3, v8, v5

    .line 345
    .restart local v3    # "handleLeft":I
    :goto_4
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v8, v7, v8

    sub-int/2addr v8, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    iget v10, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v10, v7, v10

    sub-int/2addr v10, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 344
    .end local v3    # "handleLeft":I
    :cond_5
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v3, v8

    goto :goto_4

    .line 349
    :cond_6
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_7

    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    .line 350
    .restart local v3    # "handleLeft":I
    :goto_5
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v5

    const/4 v9, 0x0

    iget v10, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 349
    .end local v3    # "handleLeft":I
    :cond_7
    sub-int v8, v7, v5

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int v3, v8, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 241
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 242
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 244
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 245
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 247
    .local v3, "heightSpecSize":I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 248
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 252
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 254
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 256
    .local v1, "height":I
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 264
    .end local v1    # "height":I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setMeasuredDimension(II)V

    .line 265
    return-void

    .line 259
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 260
    .local v4, "width":I
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 409
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 410
    const/16 v17, 0x1

    .line 508
    :goto_0
    return v17

    .line 413
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 416
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 508
    .end local v2    # "action":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_23

    :cond_2
    const/16 v17, 0x1

    goto :goto_0

    .line 418
    .restart local v2    # "action":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    :goto_2
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTouchDelta:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    goto :goto_2

    .line 422
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 423
    .local v13, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityUnits:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 425
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 426
    .local v16, "yVelocity":F
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 429
    .local v15, "xVelocity":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    .line 430
    .local v14, "vertical":Z
    if-eqz v14, :cond_b

    .line 431
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_a

    const/4 v11, 0x1

    .line 432
    .local v11, "negative":Z
    :goto_3
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_4

    .line 433
    neg-float v15, v15

    .line 435
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-gtz v17, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_7

    .line 437
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 450
    :cond_7
    :goto_4
    float-to-double v0, v15

    move-wide/from16 v18, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v12, v0

    .line 451
    .local v12, "velocity":F
    if-eqz v11, :cond_8

    .line 452
    neg-float v12, v12

    .line 455
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v10

    .line 456
    .local v10, "handleTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 457
    .local v8, "handleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 458
    .local v7, "handleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v9

    .line 460
    .local v9, "handleRight":I
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumTapVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_21

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v7, v0, :cond_10

    const/4 v3, 0x1

    .line 469
    .local v3, "c1":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v7, v0, :cond_11

    const/4 v4, 0x1

    .line 471
    .local v4, "c2":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v9, v0, :cond_12

    const/4 v5, 0x1

    .line 473
    .local v5, "c3":Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v9, v0, :cond_13

    const/4 v6, 0x1

    .line 484
    .local v6, "c4":Z
    :goto_8
    if-eqz v14, :cond_19

    if-nez v3, :cond_9

    if-eqz v4, :cond_1a

    .line 486
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAllowSingleTap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1e

    .line 487
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->playSoundEffect(I)V

    .line 489
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 490
    if-eqz v14, :cond_1b

    .end local v10    # "handleTop":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 431
    .end local v3    # "c1":Z
    .end local v4    # "c2":Z
    .end local v5    # "c3":Z
    .end local v6    # "c4":Z
    .end local v7    # "handleBottom":I
    .end local v8    # "handleLeft":I
    .end local v9    # "handleRight":I
    .end local v11    # "negative":Z
    .end local v12    # "velocity":F
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 440
    :cond_b
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_f

    const/4 v11, 0x1

    .line 441
    .restart local v11    # "negative":Z
    :goto_a
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_c

    .line 442
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    .line 444
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-gtz v17, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_7

    .line 446
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_4

    .line 440
    .end local v11    # "negative":Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_a

    .line 467
    .restart local v7    # "handleBottom":I
    .restart local v8    # "handleLeft":I
    .restart local v9    # "handleRight":I
    .restart local v10    # "handleTop":I
    .restart local v11    # "negative":Z
    .restart local v12    # "velocity":F
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 469
    .restart local v3    # "c1":Z
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 471
    .restart local v4    # "c2":Z
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 473
    .restart local v5    # "c3":Z
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 476
    .end local v3    # "c1":Z
    .end local v4    # "c2":Z
    .end local v5    # "c3":Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v10, v0, :cond_15

    const/4 v3, 0x1

    .line 477
    .restart local v3    # "c1":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v10, v0, :cond_16

    const/4 v4, 0x1

    .line 479
    .restart local v4    # "c2":Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v8, v0, :cond_17

    const/4 v5, 0x1

    .line 480
    .restart local v5    # "c3":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v8, v0, :cond_18

    const/4 v6, 0x1

    .restart local v6    # "c4":Z
    :goto_e
    goto/16 :goto_8

    .line 476
    .end local v3    # "c1":Z
    .end local v4    # "c2":Z
    .end local v5    # "c3":Z
    .end local v6    # "c4":Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_b

    .line 477
    .restart local v3    # "c1":Z
    :cond_16
    const/4 v4, 0x0

    goto :goto_c

    .line 479
    .restart local v4    # "c2":Z
    :cond_17
    const/4 v5, 0x0

    goto :goto_d

    .line 480
    .restart local v5    # "c3":Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_e

    .line 484
    .restart local v6    # "c4":Z
    :cond_19
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    .line 498
    :cond_1a
    if-eqz v14, :cond_20

    .end local v10    # "handleTop":I
    :goto_f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10    # "handleTop":I
    :cond_1b
    move v10, v8

    .line 490
    goto/16 :goto_9

    .line 492
    :cond_1c
    if-eqz v14, :cond_1d

    .end local v10    # "handleTop":I
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v10    # "handleTop":I
    :cond_1d
    move v10, v8

    goto :goto_10

    .line 495
    :cond_1e
    if-eqz v14, :cond_1f

    .end local v10    # "handleTop":I
    :goto_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10    # "handleTop":I
    :cond_1f
    move v10, v8

    goto :goto_11

    :cond_20
    move v10, v8

    .line 498
    goto :goto_f

    .line 501
    .end local v3    # "c1":Z
    .end local v4    # "c2":Z
    .end local v5    # "c3":Z
    .end local v6    # "c4":Z
    :cond_21
    if-eqz v14, :cond_22

    .end local v10    # "handleTop":I
    :goto_12
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10    # "handleTop":I
    :cond_22
    move v10, v8

    goto :goto_12

    .line 508
    .end local v2    # "action":I
    .end local v7    # "handleBottom":I
    .end local v8    # "handleLeft":I
    .end local v9    # "handleRight":I
    .end local v10    # "handleTop":I
    .end local v11    # "negative":Z
    .end local v12    # "velocity":F
    .end local v13    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v14    # "vertical":Z
    .end local v15    # "xVelocity":F
    .end local v16    # "yVelocity":F
    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->openDrawer()V

    .line 904
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 905
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 907
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 908
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    .line 1024
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    .line 1013
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .param p1, "onDrawerScrollListener"    # Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    .line 1036
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 870
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->openDrawer()V

    .line 874
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 875
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 876
    return-void

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    .line 1065
    return-void
.end method
