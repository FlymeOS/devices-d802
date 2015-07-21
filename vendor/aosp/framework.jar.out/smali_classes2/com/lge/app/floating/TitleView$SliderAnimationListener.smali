.class Lcom/lge/app/floating/TitleView$SliderAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TitleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderAnimationListener"
.end annotation


# instance fields
.field private final mSliderWidthActive:I

.field private final mSliderWidthInactive:I

.field final synthetic this$0:Lcom/lge/app/floating/TitleView;


# direct methods
.method public constructor <init>(Lcom/lge/app/floating/TitleView;II)V
    .locals 6
    .param p2, "inactiveWidth"    # I
    .param p3, "activeWidth"    # I

    .prologue
    .line 378
    iput-object p1, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 379
    # getter for: Lcom/lge/app/floating/TitleView;->mFullscreenButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$500(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getRight()I

    move-result v1

    .line 380
    .local v1, "fullButtonRight":I
    # getter for: Lcom/lge/app/floating/TitleView;->mCustomButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$600(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getRight()I

    move-result v0

    .line 381
    .local v0, "customButtonRight":I
    invoke-virtual {p1}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getRight()I

    move-result v3

    .line 382
    .local v3, "myRight":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 384
    .local v2, "myLeftLimit":I
    # getter for: Lcom/lge/app/floating/TitleView;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$700(Lcom/lge/app/floating/TitleView;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 385
    # getter for: Lcom/lge/app/floating/TitleView;->mCloseButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$800(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getRight()I

    move-result v2

    .line 388
    :cond_0
    # getter for: Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$900(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 389
    # getter for: Lcom/lge/app/floating/TitleView;->mTitleDivider:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/lge/app/floating/TitleView;->access$900(Lcom/lge/app/floating/TitleView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 391
    :cond_1
    sub-int v4, v3, p3

    if-ge v4, v2, :cond_2

    .line 392
    sub-int v4, v3, v2

    if-ge v4, p2, :cond_3

    .line 393
    move p3, p2

    .line 398
    :cond_2
    :goto_0
    iput p2, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthInactive:I

    .line 399
    iput p3, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthActive:I

    .line 400
    return-void

    .line 395
    :cond_3
    sub-int p3, v3, v2

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 418
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 406
    .local v1, "o":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 407
    .local v0, "fraction":F
    if-eqz v1, :cond_0

    .line 408
    check-cast v1, Ljava/lang/Float;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 410
    :cond_0
    iget-object v3, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v3}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 411
    .local v2, "sliderParams":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthInactive:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthActive:I

    iget v5, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->mSliderWidthInactive:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 412
    iget-object v3, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v3}, Lcom/lge/app/floating/TitleView;->getOpacitySlider()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v3, p0, Lcom/lge/app/floating/TitleView$SliderAnimationListener;->this$0:Lcom/lge/app/floating/TitleView;

    invoke-virtual {v3}, Lcom/lge/app/floating/TitleView;->getTitleText()Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 414
    return-void
.end method
