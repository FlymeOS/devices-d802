.class public Lcom/lge/camera/setting/ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "ExpandAnimation.java"


# instance fields
.field private mAnimatedView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsVisibleAfter:Z

.field private mMarginEnd:I

.field private mMarginGap:I

.field private mMarginStart:I

.field private mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mWasEndedAlready:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "isOpen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/lge/camera/setting/ExpandAnimation;->mIsVisibleAfter:Z

    .line 27
    iput-boolean v1, p0, Lcom/lge/camera/setting/ExpandAnimation;->mWasEndedAlready:Z

    .line 38
    iput-object p1, p0, Lcom/lge/camera/setting/ExpandAnimation;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/setting/ExpandAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 40
    int-to-long v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/setting/ExpandAnimation;->setDuration(J)V

    .line 42
    iput-object p2, p0, Lcom/lge/camera/setting/ExpandAnimation;->mAnimatedView:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mAnimatedView:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 46
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lge/camera/setting/ExpandAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 49
    if-nez p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mIsVisibleAfter:Z

    .line 51
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mIsVisibleAfter:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lge/camera/setting/ExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    neg-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginStart:I

    .line 56
    iget v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginStart:I

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_1
    iput v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginEnd:I

    .line 57
    iget v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginEnd:I

    iget v2, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginStart:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginGap:I

    .line 59
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
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


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 66
    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginStart:I

    iget v2, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginGap:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 70
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mWasEndedAlready:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/lge/camera/setting/ExpandAnimation;->mMarginEnd:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 73
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 75
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mIsVisibleAfter:Z

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mAnimatedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimation;->mWasEndedAlready:Z

    goto :goto_0
.end method
