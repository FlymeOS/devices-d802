.class public Lcom/lge/camera/setting/ExpandAnimationToggle;
.super Landroid/view/animation/Animation;
.source "ExpandAnimationToggle.java"


# instance fields
.field private mAnimatedView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsVisibleAfter:Z

.field private mMarginEnd:I

.field private mMarginStart:I

.field private mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mWasEndedAlready:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mIsVisibleAfter:Z

    .line 26
    iput-boolean v1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mWasEndedAlready:Z

    .line 37
    iput-object p1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mContext:Landroid/content/Context;

    const v2, 0x10a0004

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/setting/ExpandAnimationToggle;->setInterpolator(Landroid/content/Context;I)V

    .line 40
    int-to-long v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/setting/ExpandAnimationToggle;->setDuration(J)V

    .line 42
    iput-object p2, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 46
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mIsVisibleAfter:Z

    .line 51
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mIsVisibleAfter:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    neg-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginStart:I

    .line 56
    iget v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginStart:I

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_1
    iput v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginEnd:I

    .line 58
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    new-instance v0, Lcom/lge/camera/setting/ExpandAnimationToggle$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/ExpandAnimationToggle$1;-><init>(Lcom/lge/camera/setting/ExpandAnimationToggle;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/setting/ExpandAnimationToggle;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 78
    return-void

    :cond_1
    move v0, v1

    .line 49
    goto :goto_0

    :cond_2
    move v0, v1

    .line 56
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lge/camera/setting/ExpandAnimationToggle;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/setting/ExpandAnimationToggle;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginStart:I

    iget v2, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginEnd:I

    iget v3, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 91
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mWasEndedAlready:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginEnd:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 96
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 98
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mIsVisibleAfter:Z

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mWasEndedAlready:Z

    goto :goto_0
.end method
