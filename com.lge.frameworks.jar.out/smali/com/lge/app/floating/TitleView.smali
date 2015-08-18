.class Lcom/lge/app/floating/TitleView;
.super Lcom/lge/app/floating/QslideView;
.source "TitleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/lge/app/floating/ITitleView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/floating/TitleView$TitleViewTouchListener;,
        Lcom/lge/app/floating/TitleView$SliderAnimationListener;,
        Lcom/lge/app/floating/TitleView$DoubleTapListener;
    }
.end annotation


# instance fields
.field private mActivateAnimationOnSliderIgnored:Z

.field private mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

.field private mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

.field private mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCloseButton:Landroid/widget/ImageButton;

.field private final mCustomButton:Landroid/widget/ImageButton;

.field private final mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

.field mDispathchTitleViewActionDown:Z

.field private mDownX:F

.field private mDownY:F

.field private final mFullscreenButton:Landroid/widget/ImageButton;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastDividerDrawable:Landroid/graphics/drawable/Drawable;

.field mLastEvent:Landroid/view/MotionEvent;

.field private final mOpacitySlider:Landroid/widget/SeekBar;

.field private final mOpacitySteps:I

.field private mReservedOverlay:Z

.field private mReservedProgress:I

.field private final mResources:Landroid/content/res/Resources;

.field private mSliderOnTracking:Z

.field private final mSupportsQuickOverlay:Z

.field private final mTitleDivider:Landroid/widget/ImageView;

.field private final mTitleText:Landroid/widget/TextView;

.field private mTouchOnSliderIgnored:Z


# direct methods
.method constructor <init>(Lcom/lge/app/floating/FloatableActivity;Lcom/lge/app/floating/FloatingWindow;)V
    .locals 5
    .param p1, "activity"    # Lcom/lge/app/floating/FloatableActivity;
    .param p2, "window"    # Lcom/lge/app/floating/FloatingWindow;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/QslideView;-><init>(Landroid/content/Context;Lcom/lge/app/floating/FloatingWindow;)V

    .line 56
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mLastDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mSliderOnTracking:Z

    .line 262
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    .line 263
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    .line 264
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 421
    iput-boolean v2, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 422
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mActivateAnimationOnSliderIgnored:Z

    .line 600
    iput-object v4, p0, Lcom/lge/app/floating/TitleView;->mLastEvent:Landroid/view/MotionEvent;

    .line 601
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mDispathchTitleViewActionDown:Z

    .line 670
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    .line 671
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    .line 66
    iput-object p1, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    .line 67
    invoke-static {p1}, Lcom/lge/app/floating/Res;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    .line 68
    invoke-static {p1}, Lcom/lge/app/floating/Res;->getResPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    new-instance v0, Lcom/lge/app/floating/TitleView$TitleViewTouchListener;

    invoke-direct {v0, p0}, Lcom/lge/app/floating/TitleView$TitleViewTouchListener;-><init>(Lcom/lge/app/floating/TitleView;)V

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    .line 71
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    .line 73
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    .line 77
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mTitleText:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    .line 81
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    .line 84
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    .line 85
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    .line 89
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mSupportsQuickOverlay:Z

    .line 90
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    new-instance v2, Lcom/lge/app/floating/TitleView$DoubleTapListener;

    invoke-direct {v2, p0, v4}, Lcom/lge/app/floating/TitleView$DoubleTapListener;-><init>(Lcom/lge/app/floating/TitleView;Lcom/lge/app/floating/TitleView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lge/app/floating/TitleView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 91
    invoke-virtual {p0, v3}, Lcom/lge/app/floating/TitleView;->setLayoutDirection(I)V

    .line 92
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->update()V

    .line 93
    return-void
.end method

.method static synthetic access$1000(Lcom/lge/app/floating/TitleView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/app/floating/TitleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/lge/app/floating/TitleView;->mActivateAnimationOnSliderIgnored:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/app/floating/TitleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/app/floating/TitleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/app/floating/TitleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/app/floating/TitleView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/app/floating/TitleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/app/floating/TitleView;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/app/floating/TitleView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createSliderAnimators()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 356
    new-instance v2, Lcom/lge/app/floating/TitleView$SliderAnimationListener;

    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f060007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/lge/app/floating/TitleView$SliderAnimationListener;-><init>(Lcom/lge/app/floating/TitleView;II)V

    .line 359
    .local v2, "listener":Lcom/lge/app/floating/TitleView$SliderAnimationListener;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 360
    .local v1, "interpolator":Landroid/view/animation/DecelerateInterpolator;
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 361
    .local v0, "anim_duration":I
    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    .line 362
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 363
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 364
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 365
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    .line 367
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 371
    return-void

    .line 361
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 366
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getSliderAnimator(I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/lge/app/floating/TitleView;->createSliderAnimators()V

    .line 345
    :cond_1
    if-nez p1, :cond_2

    .line 346
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorEnableSlider:Landroid/animation/ValueAnimator;

    .line 351
    :goto_0
    return-object v0

    .line 347
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mAnimatorDisableSlider:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method private handleTouchCloseButton(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 508
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 511
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->performClose()V

    .line 512
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 515
    :cond_0
    return-void
.end method

.method private handleTouchFullscreenButton(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 481
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 483
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-nez v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    .line 502
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 505
    :cond_0
    return-void

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onSwitchFullRequested(Lcom/lge/app/floating/FloatingWindow;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.app.richnote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    instance-of v0, v0, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener3;

    if-eqz v0, :cond_3

    .line 492
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceptional case : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v2}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iput-boolean v3, v0, Lcom/lge/app/floating/FloatingWindow;->mSwitchingFull:Z

    .line 494
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/app/floating/FloatingWindow;->closeInner(Z)V

    .line 495
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    check-cast v0, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener3;

    invoke-interface {v0}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener3;->onSwitchingFullByApp()V

    goto :goto_0

    .line 498
    :cond_3
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v1, "Do Nothing - onSwitchFullRequested false"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleTouchOpacitySlider(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 519
    iget-boolean v8, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    if-eqz v8, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v6

    .line 522
    :cond_1
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 523
    sget-object v8, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v9, "slider becomes inactive"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0, v7}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(Z)V

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v8

    iput-boolean v6, v8, Lcom/lge/app/floating/FloatingWindow;->mRedirectMoveToDown:Z

    .line 527
    sget-object v6, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v8, "cancel on slider"

    invoke-static {v6, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v6, v7

    .line 567
    goto :goto_0

    .line 528
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_6

    .line 530
    sget-object v8, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v9, "User Touched Opacity slider. Clear clear LowProfile Request List."

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/lge/app/floating/FloatingWindowManager;->getDefault(Landroid/content/Context;)Lcom/lge/app/floating/FloatingWindowManager;

    move-result-object v1

    .line 532
    .local v1, "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindowManager;->clearLowProfileRequestList()V

    .line 533
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v8

    iput-boolean v7, v8, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    .line 535
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v3

    .line 536
    .local v3, "thumbOffsetW":I
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getWidth()I

    move-result v8

    mul-int/lit8 v9, v3, 0x2

    sub-int v5, v8, v9

    .line 537
    .local v5, "trackW":I
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    float-to-int v2, v8

    .line 538
    .local v2, "progressW":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v4, v8, v3

    .line 539
    .local v4, "trackTouchW":I
    sub-int v8, v2, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 540
    .local v0, "diff":I
    if-le v0, v3, :cond_5

    .line 541
    iput-boolean v6, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 542
    sget-object v7, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v8, "down on slider is ignored"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_5
    iput-boolean v7, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 546
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 547
    sget-object v8, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v9, "slider becomes active"

    invoke-static {v8, v9}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0, v6}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(Z)V

    goto :goto_1

    .line 550
    .end local v0    # "diff":I
    .end local v1    # "fwm":Lcom/lge/app/floating/FloatingWindowManager;
    .end local v2    # "progressW":I
    .end local v3    # "thumbOffsetW":I
    .end local v4    # "trackTouchW":I
    .end local v5    # "trackW":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 551
    iget-boolean v8, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    if-nez v8, :cond_0

    .line 554
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setPressed(Z)V

    goto :goto_1

    .line 555
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 556
    iget-boolean v8, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    if-nez v8, :cond_0

    .line 559
    iget-object v8, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v8, v7}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 560
    iput-boolean v6, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 561
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 562
    sget-object v6, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v8, "slider becomes inactive"

    invoke-static {v6, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, v7}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public activateOpacitySlider(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(ZZ)V

    .line 336
    return-void
.end method

.method public activateOpacitySlider(ZZ)V
    .locals 9
    .param p1, "flag"    # Z
    .param p2, "withAnimation"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 269
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, 0x0

    .line 270
    .local v3, "va":Landroid/animation/ValueAnimator;
    const/4 v4, 0x0

    .line 271
    .local v4, "vaOpposite":Landroid/animation/ValueAnimator;
    invoke-direct {p0}, Lcom/lge/app/floating/TitleView;->createSliderAnimators()V

    .line 272
    if-eqz p1, :cond_5

    .line 273
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f020017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v5, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-direct {p0, v7}, Lcom/lge/app/floating/TitleView;->getSliderAnimator(I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 277
    invoke-direct {p0, v8}, Lcom/lge/app/floating/TitleView;->getSliderAnimator(I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 285
    :goto_1
    if-eqz p2, :cond_7

    .line 286
    new-instance v5, Lcom/lge/app/floating/TitleView$1;

    invoke-direct {v5, p0, p1}, Lcom/lge/app/floating/TitleView$1;-><init>(Lcom/lge/app/floating/TitleView;Z)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    :cond_0
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 314
    :cond_1
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_2

    .line 315
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 321
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 326
    .local v2, "progress":I
    const/16 v5, 0x64

    if-eq v2, v5, :cond_3

    .line 327
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 329
    :cond_3
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 330
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->invalidate()V

    .line 331
    return-void

    .line 274
    .end local v2    # "progress":I
    :cond_4
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .line 279
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 281
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    invoke-direct {p0, v8}, Lcom/lge/app/floating/TitleView;->getSliderAnimator(I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 283
    invoke-direct {p0, v7}, Lcom/lge/app/floating/TitleView;->getSliderAnimator(I)Landroid/animation/ValueAnimator;

    move-result-object v4

    goto :goto_1

    .line 279
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f020018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    .line 319
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    sget-object v5, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activateOpacitySlider( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) with no Animation."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public addListenerToDefaultTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 833
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v1, "addListenerToDefaultTouchListener for TitleView"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    invoke-virtual {v0, p1}, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->setMoveTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 835
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 757
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 759
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 760
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/app/floating/FloatingWindow;->setLayoutLimit(Z)V

    .line 763
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->looseFocus()V

    .line 766
    :cond_1
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 604
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/app/floating/TitleView;->mLastEvent:Landroid/view/MotionEvent;

    .line 605
    sget-object v7, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatch at title. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v9

    iget-object v9, v9, Lcom/lge/app/floating/FloatingWindow;->mWindowName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatingWindow;->clearLayoutLimit()V

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatingWindow;->getFrameView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 610
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_0

    .line 660
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return v5

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    iget-boolean v7, v7, Lcom/lge/app/floating/FloatingWindow;->mRedirectMoveToDown:Z

    if-eqz v7, :cond_2

    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 617
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 618
    .local v1, "event2":Landroid/view/MotionEvent;
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 619
    move-object p1, v1

    .line 620
    sget-object v7, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v8, "Handle MOVE touch event"

    invoke-static {v7, v8}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .end local v1    # "event2":Landroid/view/MotionEvent;
    :cond_1
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    iput-boolean v5, v7, Lcom/lge/app/floating/FloatingWindow;->mRedirectMoveToDown:Z

    .line 624
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_3

    .line 630
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 631
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 634
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 635
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, p0, v8, v9}, Lcom/lge/app/floating/FloatingWindow;->convertViewPositionToWindowPosition(Landroid/view/View;II)[I

    move-result-object v4

    .line 636
    .local v4, "ret":[I
    iget-object v7, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    aget v5, v4, v5

    iput v5, v7, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mDownX:I

    .line 637
    iget-object v5, p0, Lcom/lge/app/floating/TitleView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    aget v7, v4, v6

    iput v7, v5, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->mDownY:I

    .line 640
    .end local v4    # "ret":[I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 641
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v7

    iget v7, v7, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v8

    iget v8, v8, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->y:I

    invoke-virtual {v5, v7, v8}, Lcom/lge/app/floating/FloatingWindow;->calculateCorrectPosition(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 642
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lge/app/floating/FloatingWindow;->isInCorrectPositionAndSize(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 643
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/app/floating/FloatingWindow;->moveToTop()V

    .line 648
    .end local v3    # "r":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v5, :cond_7

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    invoke-interface {v5, v7, p1}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onTitleViewTouch(Lcom/lge/app/floating/FloatingWindow;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v5, v6

    .line 660
    goto/16 :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {v0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 828
    invoke-super {p0}, Lcom/lge/app/floating/QslideView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getMinimumWidth()I
    .locals 5

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "minimumWidth":I
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 99
    .local v1, "titleDivider1":Landroid/widget/ImageView;
    const v4, 0x7f0c000f

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 100
    .local v2, "titleDivider2":Landroid/widget/ImageView;
    const v4, 0x7f0c0012

    invoke-virtual {p0, v4}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 101
    .local v3, "titleDivider3":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 104
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 105
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 107
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 108
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 110
    :cond_2
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 111
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 113
    :cond_3
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 114
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 118
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v4

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 121
    iget-object v4, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 123
    :cond_6
    return v0
.end method

.method public getOpacitySlider()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getRealView()Landroid/view/View;
    .locals 0

    .prologue
    .line 823
    return-object p0
.end method

.method public getTitleText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method public isSliderOnTracking()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mSliderOnTracking:Z

    return v0
.end method

.method isTouchOnSliderIgnored()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    return v0
.end method

.method public measureAndGetHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0, v1, v1}, Lcom/lge/app/floating/TitleView;->measure(II)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/lge/app/floating/TitleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 152
    :cond_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 665
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 666
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v1, "TitleView onConfigurationChagned invalidate"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->invalidate()V

    .line 668
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 791
    const/high16 v0, 0x12000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 793
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 771
    invoke-super {p0, p1}, Lcom/lge/app/floating/QslideView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 772
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on populate accessibility event. event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 577
    sget-object v3, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInterceptTouchEvent  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/TitleView;->mDownX:F

    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/lge/app/floating/TitleView;->mDownY:F

    .line 583
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/app/floating/FloatingWindow;->setTouchOffsetX(F)V

    .line 584
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/app/floating/FloatingWindow;->setTouchOffsetY(F)V

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/lge/app/floating/TitleView;->mDownX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v1, v3

    .line 590
    .local v1, "xMove":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/lge/app/floating/TitleView;->mDownY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 592
    .local v2, "yMove":I
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 593
    .local v0, "slop":I
    if-gt v1, v0, :cond_1

    if-le v2, v0, :cond_2

    .line 594
    :cond_1
    sget-object v3, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v4, "onInterceptTouchEvent  intercepted"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v3, 0x1

    .line 598
    .end local v0    # "slop":I
    .end local v1    # "xMove":I
    .end local v2    # "yMove":I
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 127
    invoke-super/range {p0 .. p5}, Lcom/lge/app/floating/QslideView;->onLayout(ZIIII)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/lge/app/floating/TitleView;->createSliderAnimators()V

    .line 131
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v1, "TitleView onLayout"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getDockState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->activateOpacitySlider(Z)V

    .line 135
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/lge/app/floating/TitleView;->layout(IIII)V

    .line 138
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const v5, 0x7f080001

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f080002

    .line 674
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isWindowDocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v1, " Window Docked. Ignore onProgressChanged"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mActivateAnimationOnSliderIgnored:Z

    if-eqz v0, :cond_4

    .line 679
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 681
    iput-boolean v2, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    .line 682
    iput p2, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    goto :goto_0

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 685
    iput-boolean v2, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    .line 686
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    goto :goto_0

    .line 689
    :cond_3
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mReservedOverlay:Z

    .line 690
    iput v4, p0, Lcom/lge/app/floating/TitleView;->mReservedProgress:I

    goto :goto_0

    .line 695
    :cond_4
    iget v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-le p2, v0, :cond_5

    .line 697
    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 698
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 700
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->runVibrate()V

    goto :goto_0

    .line 705
    :cond_5
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ge p2, v0, :cond_6

    if-eqz p3, :cond_6

    .line 706
    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 710
    :cond_6
    iget-boolean v0, p0, Lcom/lge/app/floating/TitleView;->mSupportsQuickOverlay:Z

    if-eqz v0, :cond_7

    .line 711
    iget v0, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    if-ge p2, v0, :cond_7

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v0

    if-nez v0, :cond_7

    .line 712
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v1, "entering overlay"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 714
    invoke-virtual {p1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 715
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->runVibrate()V

    .line 718
    :cond_7
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    int-to-float v1, p2

    iget v2, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/app/floating/FloatingWindow;->setOpacity(F)V

    .line 720
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 777
    sget-object v0, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on request send accessibility. child="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getFrameViewInterface()Lcom/lge/app/floating/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/app/floating/IFrameView;->getAttachedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    .line 781
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lge/app/floating/QslideView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekbar"    # Landroid/widget/SeekBar;

    .prologue
    .line 726
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/app/floating/TitleView;->mSliderOnTracking:Z

    .line 729
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 730
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 732
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    .line 733
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 734
    const/16 v1, 0x63

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekbar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v3, 0x0

    .line 742
    iput-boolean v3, p0, Lcom/lge/app/floating/TitleView;->mSliderOnTracking:Z

    .line 744
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    if-ne v1, v2, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/app/floating/FloatingWindow;->setOverlay(Z)V

    .line 748
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/lge/app/floating/TitleView;->mBackupOpacitySliderProgressInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 750
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 753
    return-void

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 458
    sget-object v1, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on touch TitleView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x0

    .line 462
    .local v0, "returnCode":Z
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lge/app/floating/FloatingWindow;->mIsInLowProfile:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->getOpacity()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 464
    sget-object v1, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v2, "LowProfile - Completly. Do not perform by touch Event."

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x1

    .line 476
    :goto_0
    return v1

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 468
    invoke-direct {p0, p2}, Lcom/lge/app/floating/TitleView;->handleTouchOpacitySlider(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    move v1, v0

    .line 476
    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/TitleView;->handleTouchCloseButton(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 473
    :cond_3
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/lge/app/floating/TitleView;->handleTouchFullscreenButton(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public performClose()V
    .locals 6

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mUpdateListener:Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/app/floating/FloatingWindow$OnUpdateListener;->onCloseRequested(Lcom/lge/app/floating/FloatingWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatableActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.lge.ltecall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/app/floating/FloatingWindow;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lge/app/floating/TitleView$2;

    invoke-direct {v2, p0}, Lcom/lge/app/floating/TitleView$2;-><init>(Lcom/lge/app/floating/TitleView;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 437
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/app/floating/FloatingWindow;->closeInner()V

    goto :goto_0
.end method

.method public setTouchOnSliderIgnored(Z)V
    .locals 0
    .param p1, "touchOnSliderIgnored"    # Z

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/lge/app/floating/TitleView;->mTouchOnSliderIgnored:Z

    .line 813
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->isInLowProfile()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->update(Z)V

    .line 202
    return-void
.end method

.method update(Z)V
    .locals 10
    .param p1, "withNoWindowAnimation"    # Z

    .prologue
    const/4 v3, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->isWindowAttached()Z

    move-result v6

    if-nez v6, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 164
    .local v2, "titleParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    .line 165
    const/4 v6, -0x1

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 171
    :goto_1
    iget-boolean v6, p0, Lcom/lge/app/floating/TitleView;->mSupportsQuickOverlay:Z

    if-eqz v6, :cond_5

    .line 172
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v7

    iget-boolean v7, v7, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideFullScreenButton:Z

    if-eqz v7, :cond_3

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 174
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v3

    iget-boolean v3, v3, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useOverlay:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 185
    :goto_4
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->updateDividers()V

    .line 186
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v7

    iget v7, v7, Lcom/lge/app/floating/FloatingWindow;->mAlpha:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 187
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getVisibility()I

    move-result v1

    .line 188
    .local v1, "oldVisibility":I
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    iget v3, v3, Lcom/lge/app/floating/FloatingWindow;->mAlpha:F

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_8

    move v0, v5

    .line 189
    .local v0, "newVisibility":I
    :goto_5
    if-eq v1, v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/lge/app/floating/FloatingWindow;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/lge/app/floating/TitleView;->setVisibility(I)V

    goto :goto_0

    .line 167
    .end local v0    # "newVisibility":I
    .end local v1    # "oldVisibility":I
    :cond_2
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mActivity:Lcom/lge/app/floating/FloatableActivity;

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "Animation.ZoomButtons"

    const-string v8, "style"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_3
    move v3, v4

    .line 172
    goto :goto_2

    :cond_4
    move v3, v5

    .line 174
    goto :goto_3

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 177
    iget-object v3, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->getOpacity()F

    move-result v6

    iget v7, p0, Lcom/lge/app/floating/TitleView;->mOpacitySteps:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_4

    .line 181
    :cond_6
    iget-object v7, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindowLayoutParams()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v6

    iget-boolean v6, v6, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideFullScreenButton:Z

    if-eqz v6, :cond_7

    move v6, v3

    :goto_6
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 182
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    move v6, v4

    .line 181
    goto :goto_6

    .line 188
    .restart local v1    # "oldVisibility":I
    :cond_8
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/app/floating/FloatingWindow;->titleShouldBeHidden()Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v5

    goto :goto_5

    :cond_9
    move v0, v4

    goto :goto_5
.end method

.method public updateDividers()V
    .locals 10

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    .line 206
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 207
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    .local v1, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    const v6, 0x7f0c000d

    invoke-virtual {p0, v6}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 209
    .local v3, "titleDivider1":Landroid/widget/ImageView;
    const v6, 0x7f0c000f

    invoke-virtual {p0, v6}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 210
    .local v4, "titleDivider2":Landroid/widget/ImageView;
    const v6, 0x7f0c0012

    invoke-virtual {p0, v6}, Lcom/lge/app/floating/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 212
    .local v5, "titleDivider3":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_2

    .line 213
    :cond_0
    sget-object v6, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    const-string v7, "Cannot updateDividers. - Fail to findViewById(titlsDivider)"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v1    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "titleDivider1":Landroid/widget/ImageView;
    .end local v4    # "titleDivider2":Landroid/widget/ImageView;
    .end local v5    # "titleDivider3":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return-void

    .line 216
    .restart local v1    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "titleDivider1":Landroid/widget/ImageView;
    .restart local v4    # "titleDivider2":Landroid/widget/ImageView;
    .restart local v5    # "titleDivider3":Landroid/widget/ImageView;
    :cond_2
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mLastDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v6, v1, :cond_3

    .line 217
    sget-object v6, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update title divider with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iput-object v1, p0, Lcom/lge/app/floating/TitleView;->mLastDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/app/floating/TitleView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/app/floating/FloatingWindow;->isInOverlay()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v9

    .line 225
    .local v0, "dividerAlpha":F
    :goto_1
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-ltz v6, :cond_4

    cmpl-float v6, v0, v9

    if-lez v6, :cond_6

    .line 226
    :cond_4
    sget-object v6, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid divider Alpha value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v0    # "dividerAlpha":F
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/lge/app/floating/TitleView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot updateDividers completly - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 229
    .restart local v0    # "dividerAlpha":F
    :cond_6
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 230
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 231
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 233
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v6, p0, Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
