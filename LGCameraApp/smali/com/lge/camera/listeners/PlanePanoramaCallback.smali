.class public Lcom/lge/camera/listeners/PlanePanoramaCallback;
.super Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;
.source "PlanePanoramaCallback.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;Landroid/view/View;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;
    .param p2, "base"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;-><init>(Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->initView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/listeners/PlanePanoramaCallback;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/listeners/PlanePanoramaCallback;
    .param p1, "x1"    # [B

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->doTakePreview([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/listeners/PlanePanoramaCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/listeners/PlanePanoramaCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->doTakePicture()V

    return-void
.end method

.method private adjustAttachPositionBoxOutline(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "outlineSize"    # Landroid/graphics/Point;
    .param p2, "gapWithGuideBox"    # Landroid/graphics/Point;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 631
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_0

    .line 632
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 636
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_0

    .line 637
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 638
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 642
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    .line 643
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 644
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 648
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private adjustBoxPosition(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "attachedPos"    # Landroid/graphics/Point;
    .param p2, "guidePos"    # Landroid/graphics/Point;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 715
    :goto_0
    return-void

    .line 709
    :pswitch_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 710
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private adjustGuidePositionBox(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/Point;
    .param p2, "end"    # Landroid/graphics/Point;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 487
    :pswitch_0
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 492
    :pswitch_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 497
    :pswitch_2
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 502
    :pswitch_3
    iget v0, p2, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private alignMagneticMarginHorizontal(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "attachedPos"    # Landroid/graphics/Point;
    .param p2, "guidePos"    # Landroid/graphics/Point;

    .prologue
    const v2, 0x7f02044d

    .line 373
    iget-boolean v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isOnMagneticVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mStatus:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 375
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v0, :cond_1

    .line 376
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 380
    :goto_0
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachCurrentBgId:I

    if-eq v0, v2, :cond_0

    .line 381
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 382
    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachCurrentBgId:I

    .line 385
    :cond_0
    return-void

    .line 378
    :cond_1
    iget v0, p2, Landroid/graphics/Point;->y:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private alignMagneticMarginVertical(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 9
    .param p1, "attachedPos"    # Landroid/graphics/Point;
    .param p2, "guidePos"    # Landroid/graphics/Point;

    .prologue
    const v8, 0x3dcccccd    # 0.1f

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 388
    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v4, :cond_2

    .line 389
    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 390
    .local v0, "barH":I
    int-to-double v4, v0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxAdjustHor:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v1, v4

    .line 391
    .local v1, "centerH":I
    int-to-float v4, v0

    mul-float/2addr v4, v8

    float-to-int v3, v4

    .line 392
    .local v3, "margin":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int v2, v1, v4

    .line 393
    .local v2, "gap":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 394
    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 403
    :goto_0
    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 421
    :goto_1
    return-void

    .line 396
    :cond_0
    if-lez v2, :cond_1

    .line 397
    iget v4, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 399
    :cond_1
    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 405
    .end local v0    # "barH":I
    .end local v1    # "centerH":I
    .end local v2    # "gap":I
    .end local v3    # "margin":I
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 406
    .restart local v0    # "barH":I
    int-to-double v4, v0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxAdjustVer:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v1, v4

    .line 407
    .restart local v1    # "centerH":I
    int-to-float v4, v0

    mul-float/2addr v4, v8

    float-to-int v3, v4

    .line 408
    .restart local v3    # "margin":I
    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int v2, v1, v4

    .line 409
    .restart local v2    # "gap":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 410
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 419
    :goto_2
    iput v1, p2, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 412
    :cond_3
    if-lez v2, :cond_4

    .line 413
    iget v4, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 415
    :cond_4
    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Point;->x:I

    goto :goto_2
.end method

.method private checkNeedFinish()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, "end":I
    const/4 v1, 0x0

    .line 973
    .local v1, "lastGuide":I
    const/4 v2, 0x0

    .line 974
    .local v2, "lastGuideW":I
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 975
    .local v3, "locBar":[I
    new-array v4, v5, [I

    fill-array-data v4, :array_1

    .line 976
    .local v4, "locBox":[I
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 977
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBarLayout()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 978
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v5

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 1003
    :goto_0
    int-to-float v5, v2

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 1004
    iput-boolean v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mNeedStop:Z

    .line 1005
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->hideViews()V

    .line 1007
    :cond_0
    return-void

    .line 980
    :pswitch_0
    aget v0, v3, v7

    .line 981
    aget v1, v4, v7

    .line 982
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 983
    goto :goto_0

    .line 985
    :pswitch_1
    aget v5, v3, v7

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v6}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBarLayout()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v0, v5, v6

    .line 986
    aget v5, v4, v7

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    add-int v1, v5, v6

    .line 987
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 988
    goto :goto_0

    .line 990
    :pswitch_2
    aget v0, v3, v8

    .line 991
    aget v1, v4, v8

    .line 992
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    .line 993
    goto :goto_0

    .line 995
    :pswitch_3
    aget v5, v3, v8

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v6}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBarLayout()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 996
    aget v5, v4, v8

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    add-int v1, v5, v6

    .line 997
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    .line 998
    goto :goto_0

    .line 974
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 975
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 978
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkStatusAfterPictureTaken(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 158
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStatusAfterPictureTaken mNeedStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mNeedStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mNeedStop:Z

    if-eqz v0, :cond_0

    .line 160
    const/16 p1, 0xb

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mNeedStop:Z

    .line 164
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 172
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 173
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 175
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->resetPreviewSkipCount()V

    .line 176
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 168
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->stopPanorama()V

    .line 169
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private checkVeryFar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1086
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mStatus:[I

    aget v2, v2, v5

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 1088
    const/4 v1, 0x0

    .line 1089
    .local v1, "progressBarLength":F
    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    mul-int/lit8 v0, v2, 0x2

    .line 1090
    .local v0, "barMargin":I
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v2

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 1110
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDistGuideAttachPos:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 1111
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mStatus:[I

    const/4 v3, 0x7

    aput v3, v2, v5

    .line 1114
    .end local v0    # "barMargin":I
    .end local v1    # "progressBarLength":F
    :cond_0
    return-void

    .line 1092
    .restart local v0    # "barMargin":I
    .restart local v1    # "progressBarLength":F
    :pswitch_0
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    int-to-float v1, v2

    .line 1094
    goto :goto_0

    .line 1096
    :pswitch_1
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    int-to-float v1, v2

    .line 1097
    goto :goto_0

    .line 1099
    :pswitch_2
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    int-to-float v1, v2

    .line 1101
    goto :goto_0

    .line 1103
    :pswitch_3
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    int-to-float v1, v2

    .line 1105
    goto :goto_0

    .line 1090
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doPreviewStateJob([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewImageMini:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewW:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewH:I

    invoke-static {v0, p1, v1, v2}, Lcom/lge/camera/util/ColorConverter;->yuv420spToBitmap(Landroid/graphics/Bitmap;[BII)V

    .line 213
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewMiniCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewMiniCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewImageMini:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreviewMini:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewMini()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDisplayPreviewImageMini:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 221
    return-void
.end method

.method private doTakePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 956
    const-string v0, "CameraApp"

    const-string v1, "doTakePicture START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 959
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "doTakePicture EXIT"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setRequestTakePicture(Z)V

    .line 964
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->increseCntReqShoot()V

    .line 965
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 966
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v2, v2, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 967
    const-string v0, "CameraApp"

    const-string v1, "doTakePicture END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doTakePreview([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 939
    const-string v0, "CameraApp"

    const-string v1, "doTakePreview START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 942
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "doTakePreview EXIT"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->increseCntReqShoot()V

    .line 947
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->onPictureTakenPreview([B)V

    .line 948
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getNumOfShoot()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 949
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->playPanoramaShutterSound()V

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 952
    const-string v0, "CameraApp"

    const-string v1, "doTakePreview END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doTakingStateJob([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getMorphoPanoramaGP()Lcom/lge/morpho/core/MorphoPanoramaGP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->isProcessingFinishTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCount:I

    .line 1068
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getMorphoPanoramaGP()Lcom/lge/morpho/core/MorphoPanoramaGP;

    move-result-object v0

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mUseImage:I

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageID:[I

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mMotionData:[B

    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mStatus:[I

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/morpho/core/MorphoPanoramaGP;->attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v8

    .line 1070
    .local v8, "ret":I
    if-eqz v8, :cond_2

    .line 1071
    const-string v0, "CameraApp"

    const-string v1, "attachPreview() -> 0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->checkVeryFar()V

    .line 1076
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->showTakingTextGuide()Z

    move-result v7

    .line 1077
    .local v7, "isOk":Z
    if-eqz v7, :cond_0

    .line 1081
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->showTakingGuiGuide([B)V

    goto :goto_0
.end method

.method private drawAdjustBox(Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .locals 11
    .param p1, "guidePos"    # Landroid/graphics/Point;
    .param p2, "attachedPos"    # Landroid/graphics/Point;
    .param p3, "fw"    # I
    .param p4, "fh"    # I

    .prologue
    const/4 v3, 0x0

    .line 424
    const/4 v6, 0x2

    .line 425
    .local v6, "outline_margin_ratio":I
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    sub-int v7, v0, p3

    .line 426
    .local v7, "x0":I
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    add-int v8, v0, p3

    .line 427
    .local v8, "x1":I
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    sub-int v9, v0, p4

    .line 428
    .local v9, "y0":I
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    add-int v10, v0, p4

    .line 429
    .local v10, "y1":I
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v0, :cond_0

    .line 430
    mul-int/lit8 v0, v9, 0xa

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v9

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 432
    mul-int/lit8 v0, v10, 0xa

    div-int/lit8 v0, v0, 0x64

    sub-int v0, v10, v0

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 441
    :goto_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 442
    .local v5, "p":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 443
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 444
    const/16 v0, 0x84

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v2, v9

    int-to-float v3, v8

    int-to-float v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 447
    return-void

    .line 435
    .end local v5    # "p":Landroid/graphics/Paint;
    :cond_0
    mul-int/lit8 v0, v7, 0xa

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v7

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 437
    mul-int/lit8 v0, v8, 0xa

    div-int/lit8 v0, v0, 0x64

    sub-int v0, v8, v0

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_0
.end method

.method private drawAttachGuideHorizontal(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "attachedPos"    # Landroid/graphics/Point;
    .param p2, "guidePos"    # Landroid/graphics/Point;

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isOnMagneticVertical:Z

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isShowHorizontalArrow:Z

    .line 344
    :goto_0
    return-void

    .line 339
    :cond_0
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v0, :cond_1

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideHorizontalToHor(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideHorizontalToVer(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private drawAttachGuideHorizontalToHor(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "attachedPos"    # Landroid/graphics/Point;
    .param p2, "guidePos"    # Landroid/graphics/Point;

    .prologue
    .line 347
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int v0, v3, v4

    .line 348
    .local v0, "gap":I
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideAreaLength:I

    int-to-float v3, v3

    sget v4, Lcom/lge/camera/listeners/PlanePanoramaCallback;->PREVIEW_GUIDE_AREA_RATIO_HOR_HOR:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 349
    .local v1, "margin":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v1, v3

    if-lez v3, :cond_0

    const/4 v2, 0x0

    .line 350
    .local v2, "needDraw":Z
    :goto_0
    iput-boolean v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isShowHorizontalArrow:Z

    .line 352
    if-ltz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideHorizontalToHorLeft()V

    .line 357
    :goto_1
    return-void

    .line 349
    .end local v2    # "needDraw":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 355
    .restart local v2    # "needDraw":Z
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideHorizontalToHorRight()V

    goto :goto_1
.end method

.method private drawAttachGuideHorizontalToVer(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "attachedPos"    # Landroid/graphics/Point;
    .param p2, "guidePos"    # Landroid/graphics/Point;

    .prologue
    .line 360
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int v0, v3, v4

    .line 361
    .local v0, "gap":I
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideAreaLength:I

    int-to-float v3, v3

    sget v4, Lcom/lge/camera/listeners/PlanePanoramaCallback;->PREVIEW_GUIDE_AREA_RATIO_HOR_VER:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 362
    .local v1, "margin":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v1, v3

    if-lez v3, :cond_0

    const/4 v2, 0x0

    .line 363
    .local v2, "needDraw":Z
    :goto_0
    iput-boolean v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isShowHorizontalArrow:Z

    .line 365
    if-ltz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideHorizontalToVerLeft()V

    .line 370
    :goto_1
    return-void

    .line 362
    .end local v2    # "needDraw":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 368
    .restart local v2    # "needDraw":Z
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideHorizontalToVerRight()V

    goto :goto_1
.end method

.method private drawAttachGuideVertical(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "attachedPos"    # Landroid/graphics/Point;

    .prologue
    .line 281
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v0, :cond_0

    .line 282
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideVerticalToHor(Landroid/graphics/Point;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideVerticalToVer(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private drawAttachGuideVerticalToHor(Landroid/graphics/Point;)V
    .locals 10
    .param p1, "attachedPos"    # Landroid/graphics/Point;

    .prologue
    .line 289
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 290
    .local v0, "barH":I
    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 291
    .local v1, "centerH":I
    int-to-float v5, v0

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 292
    .local v3, "margin":I
    iget v5, p1, Landroid/graphics/Point;->y:I

    sub-int v2, v5, v1

    .line 293
    .local v2, "gap":I
    int-to-float v5, v0

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 294
    .local v4, "marginRedZone":I
    invoke-virtual {p0, v2, v4}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->checkAttachBoxRedZone(II)V

    .line 296
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 297
    iget-boolean v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isShowHorizontalArrow:Z

    if-nez v5, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->hideGuideCase()V

    .line 300
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isOnMagneticVertical:Z

    .line 309
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isOnMagneticVertical:Z

    .line 303
    if-gez v2, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideVerticalToHorDown()V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideVerticalToHorUp()V

    goto :goto_0
.end method

.method private drawAttachGuideVerticalToVer(Landroid/graphics/Point;)V
    .locals 10
    .param p1, "attachedPos"    # Landroid/graphics/Point;

    .prologue
    .line 312
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 313
    .local v0, "barH":I
    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    iget v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    int-to-double v8, v5

    sub-double/2addr v6, v8

    double-to-int v1, v6

    .line 314
    .local v1, "centerH":I
    int-to-float v5, v0

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 315
    .local v3, "margin":I
    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int v2, v5, v1

    .line 316
    .local v2, "gap":I
    int-to-float v5, v0

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 317
    .local v4, "marginRedZone":I
    invoke-virtual {p0, v2, v4}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->checkAttachBoxRedZone(II)V

    .line 319
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 320
    iget-boolean v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isShowHorizontalArrow:Z

    if-nez v5, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->hideGuideCase()V

    .line 323
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isOnMagneticVertical:Z

    .line 332
    :goto_0
    return-void

    .line 325
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isOnMagneticVertical:Z

    .line 326
    if-gez v2, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideVerticalToVerUp()V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideVerticalToVerDown()V

    goto :goto_0
.end method

.method private drawAttchPositionBox(Landroid/graphics/Point;II)V
    .locals 10
    .param p1, "attachedPos"    # Landroid/graphics/Point;
    .param p2, "fw"    # I
    .param p3, "fh"    # I

    .prologue
    const/4 v9, 0x0

    .line 538
    const/4 v4, 0x2

    .line 539
    .local v4, "outline_margin_ratio":I
    new-instance v5, Landroid/graphics/Point;

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    sub-int/2addr v6, p2

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    iget v8, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    sub-int/2addr v7, p3

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 540
    .local v5, "start":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    iget v8, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    add-int/2addr v7, p3

    invoke-direct {v0, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 542
    .local v0, "end":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 543
    .local v1, "gapWithGuideBox":Landroid/graphics/Point;
    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v6, :cond_2

    .line 545
    iget v6, v5, Landroid/graphics/Point;->y:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    mul-int/lit8 v7, v7, 0xa

    div-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 548
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v7, v7, 0xa

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/graphics/Point;->y:I

    .line 553
    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    sub-int/2addr v6, v7

    sub-int v2, v6, p3

    .line 554
    .local v2, "maxStartH":I
    iget v6, v5, Landroid/graphics/Point;->y:I

    if-le v6, v2, :cond_0

    .line 555
    iput v2, v5, Landroid/graphics/Point;->y:I

    .line 571
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    invoke-static {v6, v7}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v6

    iget v7, v5, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 572
    .local v3, "outlineSize":Landroid/graphics/Point;
    invoke-direct {p0, v3, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->setAttachPositionBoxOutlineLayout(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 573
    invoke-direct {p0, v5, v3, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->setAttachPositionBoxArrowTextLayout(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 575
    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideDrawingSkipCount:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 576
    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideDrawingSkipCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideDrawingSkipCount:I

    .line 591
    :cond_1
    :goto_1
    return-void

    .line 558
    .end local v2    # "maxStartH":I
    .end local v3    # "outlineSize":Landroid/graphics/Point;
    :cond_2
    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v7, v7, 0xa

    div-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 561
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v7, v7, 0xa

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 565
    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    sub-int/2addr v6, v7

    sub-int v2, v6, p2

    .line 566
    .restart local v2    # "maxStartH":I
    iget v6, v5, Landroid/graphics/Point;->x:I

    if-le v6, v2, :cond_0

    .line 567
    iput v2, v5, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 578
    .restart local v3    # "outlineSize":Landroid/graphics/Point;
    :cond_3
    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    .line 580
    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 582
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5

    .line 584
    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 586
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 588
    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private drawBarGuide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageW:I

    .line 225
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageH:I

    .line 226
    iput v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    .line 227
    iput v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    .line 229
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 231
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawProgressImage()V

    .line 236
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawBoxes()V

    .line 237
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawProgressOutline()V

    .line 238
    return-void
.end method

.method private drawBoxes()V
    .locals 12

    .prologue
    .line 718
    iget-boolean v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mNeedStop:Z

    if-eqz v8, :cond_0

    .line 787
    :goto_0
    return-void

    .line 721
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 722
    .local v0, "attachedPos":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 723
    .local v6, "guidePos":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 724
    .local v1, "attachedPosOrg":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 725
    .local v7, "guidePosOrg":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getMorphoPanoramaGP()Lcom/lge/morpho/core/MorphoPanoramaGP;

    move-result-object v8

    invoke-virtual {v8, v0, v6}, Lcom/lge/morpho/core/MorphoPanoramaGP;->getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I

    .line 727
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRoratePreview()I

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->rotatePreviewPoints(Landroid/graphics/Point;I)V

    .line 728
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRoratePreview()I

    move-result v8

    invoke-virtual {p0, v6, v8}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->rotatePreviewPoints(Landroid/graphics/Point;I)V

    .line 730
    invoke-direct {p0, v0, v6}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->adjustBoxPosition(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 732
    iget v8, v0, Landroid/graphics/Point;->x:I

    iput v8, v1, Landroid/graphics/Point;->x:I

    .line 733
    iget v8, v0, Landroid/graphics/Point;->y:I

    iput v8, v1, Landroid/graphics/Point;->y:I

    .line 734
    iget v8, v6, Landroid/graphics/Point;->x:I

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 735
    iget v8, v6, Landroid/graphics/Point;->y:I

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 737
    invoke-direct {p0, v0, v6}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->alignMagneticMarginHorizontal(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 738
    invoke-direct {p0, v0, v6}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->alignMagneticMarginVertical(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 740
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    iget v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    if-ge v8, v9, :cond_4

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageH:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    :goto_1
    float-to-double v2, v8

    .line 742
    .local v2, "barLengthRatio":D
    iget v8, v0, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    mul-double/2addr v8, v2

    double-to-int v8, v8

    iput v8, v0, Landroid/graphics/Point;->x:I

    .line 743
    iget v8, v0, Landroid/graphics/Point;->y:I

    int-to-double v8, v8

    mul-double/2addr v8, v2

    double-to-int v8, v8

    iput v8, v0, Landroid/graphics/Point;->y:I

    .line 744
    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    mul-double/2addr v8, v2

    double-to-int v8, v8

    iput v8, v6, Landroid/graphics/Point;->x:I

    .line 745
    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-double v8, v8

    mul-double/2addr v8, v2

    double-to-int v8, v8

    iput v8, v6, Landroid/graphics/Point;->y:I

    .line 746
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    int-to-double v8, v8

    mul-double/2addr v8, v2

    double-to-int v8, v8

    iput v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    .line 747
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    int-to-double v8, v8

    mul-double/2addr v8, v2

    double-to-int v8, v8

    iput v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    .line 749
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v8, :cond_5

    .line 750
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    iget v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    div-int/lit8 v9, v9, 0x4

    iget v10, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    .line 757
    :goto_2
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRotateUI()I

    move-result v8

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRotateUI()I

    move-result v8

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_6

    .line 758
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v8

    iget v5, v8, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 759
    .local v5, "fw":I
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v8

    iget v4, v8, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 760
    .local v4, "fh":I
    sget-boolean v8, Lcom/lge/camera/listeners/PlanePanoramaCallback;->ADJUST_CURRENT_FRAME_ASPECT_RATIO:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 761
    mul-int/lit8 v8, v5, 0x50

    div-int/lit8 v4, v8, 0x64

    .line 772
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v8

    iget v8, v8, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    div-int v8, v5, v8

    int-to-double v8, v8

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 773
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v8

    iget v8, v8, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    div-int v8, v4, v8

    int-to-double v8, v8

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v4, v8

    .line 775
    sget-boolean v8, Lcom/lge/camera/listeners/PlanePanoramaCallback;->ADJUST_CURRENT_FRAME_ASPECT_RATIO:Z

    if-eqz v8, :cond_3

    .line 776
    invoke-direct {p0, v6, v0, v5, v4}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAdjustBox(Landroid/graphics/Point;Landroid/graphics/Point;II)V

    .line 779
    :cond_3
    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget v10, v0, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v11, v0, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-static {v8, v9, v10, v11}, Lcom/lge/camera/util/Util;->distance(FFFF)F

    move-result v8

    iput v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDistGuideAttachPos:F

    .line 780
    invoke-direct {p0, v6, v0, v5, v4}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawGuidePositionBox(Landroid/graphics/Point;Landroid/graphics/Point;II)V

    .line 781
    invoke-direct {p0, v0, v5, v4}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttchPositionBox(Landroid/graphics/Point;II)V

    .line 783
    invoke-direct {p0, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideVertical(Landroid/graphics/Point;)V

    .line 784
    invoke-direct {p0, v1, v7}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawAttachGuideHorizontal(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 785
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v8, v9

    iget-boolean v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isOnMagneticVertical:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->isShowHorizontalArrow:Z

    if-nez v8, :cond_7

    const/4 v8, 0x1

    :goto_4
    invoke-direct {p0, v9, v8}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->showDirectionArrow(IZ)V

    goto/16 :goto_0

    .line 740
    .end local v2    # "barLengthRatio":D
    .end local v4    # "fh":I
    .end local v5    # "fw":I
    :cond_4
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    int-to-float v8, v8

    iget v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageW:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto/16 :goto_1

    .line 752
    .restart local v2    # "barLengthRatio":D
    :cond_5
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    iget v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    div-int/lit8 v9, v9, 0x4

    iget v10, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    goto/16 :goto_2

    .line 764
    :cond_6
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v8

    iget v5, v8, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 765
    .restart local v5    # "fw":I
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v8

    iget v4, v8, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 766
    .restart local v4    # "fh":I
    sget-boolean v8, Lcom/lge/camera/listeners/PlanePanoramaCallback;->ADJUST_CURRENT_FRAME_ASPECT_RATIO:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v8, :cond_2

    .line 767
    mul-int/lit8 v8, v5, 0x50

    div-int/lit8 v4, v8, 0x64

    goto/16 :goto_3

    .line 785
    :cond_7
    const/4 v8, 0x0

    goto :goto_4
.end method

.method private drawGuidePositionBox(Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .locals 9
    .param p1, "guidePos"    # Landroid/graphics/Point;
    .param p2, "attachedPos"    # Landroid/graphics/Point;
    .param p3, "fw"    # I
    .param p4, "fh"    # I

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    .line 450
    new-instance v4, Landroid/graphics/Point;

    iget v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    sub-int/2addr v5, p3

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    iget v7, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v7

    sub-int/2addr v6, p4

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 451
    .local v4, "start":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    iget v7, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v7

    add-int/2addr v6, p4

    invoke-direct {v2, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 453
    .local v2, "end":Landroid/graphics/Point;
    iget v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v5, :cond_1

    .line 454
    iget v5, v4, Landroid/graphics/Point;->y:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v6, v6, 0xa

    div-int/lit8 v6, v6, 0x64

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 457
    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v6, v6, 0xa

    div-int/lit8 v6, v6, 0x64

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Point;->y:I

    .line 460
    iget v5, v4, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v5

    int-to-float v3, v5

    .line 471
    .local v3, "maxDistance":F
    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->adjustGuidePositionBox(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 473
    const/high16 v1, 0x437f0000    # 255.0f

    .line 474
    .local v1, "alphaMax":F
    iget v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDistGuideAttachPos:F

    cmpl-float v5, v5, v3

    if-ltz v5, :cond_2

    const/4 v0, 0x0

    .line 476
    .local v0, "alpha":F
    :goto_1
    div-float v5, v0, v8

    invoke-direct {p0, v5, v4, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->setGuidePositionBoxLayout(FLandroid/graphics/Point;Landroid/graphics/Point;)V

    .line 478
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 481
    :cond_0
    return-void

    .line 462
    .end local v0    # "alpha":F
    .end local v1    # "alphaMax":F
    .end local v3    # "maxDistance":F
    :cond_1
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->x:I

    mul-int/lit8 v6, v6, 0xa

    div-int/lit8 v6, v6, 0x64

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 465
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v6, v6, 0xa

    div-int/lit8 v6, v6, 0x64

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideBoxLineWidth:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Point;->x:I

    .line 468
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    invoke-static {v5, v6}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v5

    int-to-float v3, v5

    .restart local v3    # "maxDistance":F
    goto :goto_0

    .line 474
    .restart local v1    # "alphaMax":F
    :cond_2
    iget v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDistGuideAttachPos:F

    sub-float v5, v3, v5

    div-float/2addr v5, v3

    mul-float v0, v8, v5

    goto :goto_1
.end method

.method private drawProgressImage()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    const/4 v6, 0x0

    .line 243
    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    .line 246
    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageH:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageH:I

    .line 247
    iput v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    .line 248
    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageH:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageH:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageW:I

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageH:I

    mul-int/lit8 v4, v4, 0x50

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 254
    .local v0, "src":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    int-to-double v4, v4

    mul-double/2addr v4, v10

    double-to-int v4, v4

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxOutlineNinePatchMargin:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxOutlineNinePatchMargin:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxOutlineNinePatchMargin:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxOutlineNinePatchMargin:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    .line 277
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 278
    return-void

    .line 258
    .end local v0    # "src":Landroid/graphics/Rect;
    :pswitch_0
    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageW:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageW:I

    .line 259
    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageW:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetX:I

    .line 260
    iput v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->offsetY:I

    .line 261
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageW:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageW:I

    mul-int/lit8 v3, v3, 0x50

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mProgressImageH:I

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 268
    .restart local v0    # "src":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarW:I

    int-to-double v4, v3

    mul-double/2addr v4, v10

    double-to-int v3, v4

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarH:I

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private drawProgressOutline()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mOutline:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020446

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mOutline:Landroid/graphics/drawable/NinePatchDrawable;

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mOutline:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectPreview:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 795
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mOutline:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 796
    return-void
.end method

.method private setAttachPositionBoxArrowTextLayout(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 12
    .param p1, "start"    # Landroid/graphics/Point;
    .param p2, "outlineSize"    # Landroid/graphics/Point;
    .param p3, "gapWithGuideBox"    # Landroid/graphics/Point;

    .prologue
    .line 659
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_2

    .line 660
    const/4 v2, 0x0

    .line 661
    .local v2, "barStartMargin":I
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v8, :cond_3

    .line 662
    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    .line 667
    :goto_0
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachRotateLayoutArrow:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v8}, Lcom/lge/camera/components/RotateLayout;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v9

    add-int v0, v8, v9

    .line 669
    .local v0, "arrowLeftW":I
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachRotateLayoutArrow:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v8}, Lcom/lge/camera/components/RotateLayout;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v9

    add-int v1, v8, v9

    .line 670
    .local v1, "arrowUpH":I
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mCurDegree:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mCurDegree:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_1

    .line 671
    :cond_0
    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 672
    .local v5, "gapWH":I
    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v8, :cond_4

    .line 673
    sub-int/2addr v0, v5

    .line 674
    add-int/2addr v1, v5

    .line 681
    .end local v5    # "gapWH":I
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 686
    .local v6, "lpFrameArrow":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v0

    iget v9, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 687
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v8}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBarLayout()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v1

    iget v9, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 689
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->outlineLocationArrow:[I

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 692
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->outlineLocationText:[I

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 693
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->outlineLocationArrow:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->outlineLocationText:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int v4, v8, v9

    .line 694
    .local v4, "gapW":I
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->outlineLocationArrow:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->outlineLocationText:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int v3, v8, v9

    .line 696
    .local v3, "gapH":I
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 698
    .local v7, "lpFrameText":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 699
    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v3

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 700
    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    .end local v0    # "arrowLeftW":I
    .end local v1    # "arrowUpH":I
    .end local v2    # "barStartMargin":I
    .end local v3    # "gapH":I
    .end local v4    # "gapW":I
    .end local v6    # "lpFrameArrow":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "lpFrameText":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void

    .line 664
    .restart local v2    # "barStartMargin":I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 676
    .restart local v0    # "arrowLeftW":I
    .restart local v1    # "arrowUpH":I
    .restart local v5    # "gapWH":I
    :cond_4
    add-int/2addr v0, v5

    .line 677
    sub-int/2addr v1, v5

    goto :goto_1
.end method

.method private setAttachPositionBoxOutlineLayout(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6
    .param p1, "outlineSize"    # Landroid/graphics/Point;
    .param p2, "gapWithGuideBox"    # Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x0

    .line 594
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 595
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v3, :cond_3

    .line 596
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 601
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->adjustAttachPositionBoxOutline(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 603
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mCurDegree:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mCurDegree:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 604
    :cond_0
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 605
    .local v2, "temp":I
    iget v3, p1, Landroid/graphics/Point;->x:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 606
    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 609
    .end local v2    # "temp":I
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 611
    .local v0, "lpArrow":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 612
    iget v3, p1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 613
    iget v3, p1, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 614
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 617
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 619
    .local v1, "lpText":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 620
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 621
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 622
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    .end local v0    # "lpArrow":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "lpText":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .line 598
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private setBarLayoutMargin(I)V
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 900
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBarLayout()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 903
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090009

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 905
    .local v1, "dispW":I
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090008

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 908
    .local v0, "dispH":I
    packed-switch p1, :pswitch_data_0

    .line 935
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBarLayout()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    return-void

    .line 911
    :pswitch_0
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 912
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 913
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 915
    :cond_0
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 916
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 917
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 918
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewPanelWidth:I

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewPanelBottmMargin:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 922
    :pswitch_1
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 923
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 925
    :cond_1
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 926
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 927
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 928
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mQuickButtonWidth:I

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 929
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewPanelWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewPanelBottmMargin:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 908
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidePositionBoxLayout(FLandroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "alpha"    # F
    .param p2, "start"    # Landroid/graphics/Point;
    .param p3, "end"    # Landroid/graphics/Point;

    .prologue
    .line 512
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 515
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 517
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 518
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 519
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 520
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->distance(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 522
    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    if-nez v1, :cond_1

    .line 523
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideAreaLength:I

    .line 524
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 525
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarLayoutMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 526
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBarLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 533
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 528
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGuideAreaLength:I

    .line 529
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mRectProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 530
    iget v1, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 531
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBarLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private showDirectionArrow(IZ)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "show"    # Z

    .prologue
    const/16 v3, 0xf

    const/16 v2, 0xe

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 799
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 800
    .local v6, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v6}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 801
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 802
    packed-switch p1, :pswitch_data_0

    .line 831
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/lge/camera/components/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/AnimationUtil;->startShowingAnimation(Landroid/view/View;ZJLandroid/view/animation/Animation$AnimationListener;Z)V

    .line 834
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    invoke-static {v0, p2}, Lcom/lge/camera/util/AnimationUtil;->startAnimationList(Landroid/widget/ImageView;Z)V

    .line 835
    return-void

    .line 804
    :pswitch_0
    const/16 v0, 0x14

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 805
    invoke-virtual {v6, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 806
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDirectionArrowMargin:I

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 807
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 810
    :pswitch_1
    const/16 v0, 0x15

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 811
    invoke-virtual {v6, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 812
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDirectionArrowMargin:I

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 813
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 816
    :pswitch_2
    const/16 v0, 0xa

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 817
    invoke-virtual {v6, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 818
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDirectionArrowMargin:I

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 819
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 822
    :pswitch_3
    const/16 v0, 0xc

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 823
    invoke-virtual {v6, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 824
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mDirectionArrowMargin:I

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 825
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showDirectionGuide()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v0

    aget v0, v0, v1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v0

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    .line 842
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPrevDirection:I

    if-ne v0, v3, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->showDirectionGuideDirAuto()V

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0, v2, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setVisiblePreviewBar(ZZ)V

    .line 847
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setVisiblePreviewMini(ZZ)V

    .line 848
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0, v1, v2, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setVisibleArrowGuide(ZZZ)V

    .line 849
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setVisibleTakingGuide(ZZ)V

    .line 850
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setStatus(I)V

    .line 851
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setShutterButtonImage(ZI)V

    .line 853
    :cond_1
    return-void
.end method

.method private showDirectionGuideDirAuto()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 856
    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v4

    aget v4, v4, v3

    packed-switch v4, :pswitch_data_0

    .line 872
    :goto_0
    new-instance v1, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;

    invoke-direct {v1}, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;-><init>()V

    .line 873
    .local v1, "newPreviewSize":Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;
    new-instance v0, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;

    invoke-direct {v0}, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;-><init>()V

    .line 874
    .local v0, "newOutputSize":Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getMorphoPanoramaGP()Lcom/lge/morpho/core/MorphoPanoramaGP;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->getImageSize(Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;)I

    .line 875
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v2

    iget v4, v1, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;->width:I

    iput v4, v2, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 876
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v2

    iget v4, v1, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;->height:I

    iput v4, v2, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 877
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v2

    iget v4, v0, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;->width:I

    iput v4, v2, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 878
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v2

    iget v4, v0, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;->height:I

    iput v4, v2, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 880
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v2

    aget v2, v2, v3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v2

    aget v2, v2, v3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    .line 882
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRoratePreview()I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRoratePreview()I

    move-result v2

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_4

    .line 883
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    .line 894
    :goto_1
    iget v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppDeviceRotation:I

    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->allocateDisplayBuffers(I)V

    .line 895
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v2

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->setBarLayoutMargin(I)V

    .line 896
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRoratePreview()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mCurDegree:I

    .line 897
    return-void

    .line 859
    .end local v0    # "newOutputSize":Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;
    .end local v1    # "newPreviewSize":Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;
    :pswitch_0
    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppDeviceRotation:I

    if-ne v4, v5, :cond_2

    :goto_2
    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 864
    :pswitch_1
    iget v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppDeviceRotation:I

    if-ne v4, v5, :cond_3

    move v2, v3

    :cond_3
    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mAppPanoramaDirection:I

    goto/16 :goto_0

    .line 887
    .restart local v0    # "newOutputSize":Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;
    .restart local v1    # "newPreviewSize":Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    goto :goto_1

    .line 892
    :cond_5
    iput v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCropAdjust:I

    goto :goto_1

    .line 856
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showTakingGuiGuide([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1010
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getMorphoPanoramaGP()Lcom/lge/morpho/core/MorphoPanoramaGP;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/morpho/core/MorphoPanoramaGP;->getCurrentDirection([I)I

    move-result v2

    .line 1011
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 1012
    const-string v3, "CameraApp"

    const-string v4, "getCurrentDirection() -> 0x%x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :cond_0
    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPrevDirection:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPrevDirection:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPrevDirection:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 1018
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->drawBarGuide()V

    .line 1023
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1024
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getBar()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mBarImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1027
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageID:[I

    aget v3, v3, v7

    if-ltz v3, :cond_3

    .line 1028
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->checkNeedFinish()V

    .line 1030
    move-object v0, p1

    .line 1031
    .local v0, "finalData":[B
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1032
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageIDList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageID:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageStatusList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mStatus:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1036
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v3, Lcom/lge/camera/listeners/PlanePanoramaCallback$1;

    invoke-direct {v3, p0, v0}, Lcom/lge/camera/listeners/PlanePanoramaCallback$1;-><init>(Lcom/lge/camera/listeners/PlanePanoramaCallback;[B)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1051
    .end local v0    # "finalData":[B
    .end local v1    # "mHandler":Landroid/os/Handler;
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getDirection()[I

    move-result-object v3

    aget v3, v3, v7

    iput v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPrevDirection:I

    .line 1052
    return-void

    .line 1020
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->showDirectionGuide()V

    goto :goto_0

    .line 1049
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewBuff()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_1
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getSyncObj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    monitor-exit v1

    .line 208
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->playRecordingSound(Z)V

    .line 191
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setStatus(I)V

    .line 192
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getOrientationDegree()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setShutterButtonImage(ZI)V

    .line 195
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setVisibleTakingGuide(ZZ)V

    .line 196
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setVisibleArrowGuide(ZZZ)V

    .line 199
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->resetPreviewSkipCount()V

    .line 201
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->resetImageIdAndStatusList()V

    .line 203
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 204
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 206
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->rotateGuide(I)V

    .line 207
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x0

    .line 124
    const-string v3, "CameraApp"

    const-string v4, "onPictureTaken START"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->setRequestTakePicture(Z)V

    .line 126
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getSyncObj()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 127
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getMorphoPanoramaGP()Lcom/lge/morpho/core/MorphoPanoramaGP;

    move-result-object v3

    if-nez v3, :cond_1

    .line 128
    :cond_0
    const-string v3, "CameraApp"

    const-string v5, "exit onPictureTaken"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    monitor-exit v4

    .line 155
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageIDList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    .local v0, "id":I
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageStatusList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    .local v1, "status":I
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageIDList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 134
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageStatusList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    new-instance v2, Lcom/lge/morpho/utils/multimedia/StillImageData;

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCount:I

    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mMotionData:[B

    invoke-direct {v2, v0, v3, p1, v5}, Lcom/lge/morpho/utils/multimedia/StillImageData;-><init>(II[B[B)V

    .line 139
    .local v2, "stillImageData":Lcom/lge/morpho/utils/multimedia/StillImageData;
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->addStillImage(Lcom/lge/morpho/utils/multimedia/StillImageData;)V

    .line 152
    invoke-direct {p0, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->checkStatusAfterPictureTaken(I)V

    .line 153
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const-string v3, "CameraApp"

    const-string v4, "onPictureTaken END"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0    # "id":I
    .end local v1    # "status":I
    .end local v2    # "stillImageData":Lcom/lge/morpho/utils/multimedia/StillImageData;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPictureTakenPreview([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 78
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getSyncObj()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getMorphoPanoramaGP()Lcom/lge/morpho/core/MorphoPanoramaGP;

    move-result-object v3

    if-nez v3, :cond_1

    .line 80
    :cond_0
    monitor-exit v4

    .line 120
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageIDList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, "id":I
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageStatusList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 84
    .local v1, "status":I
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageIDList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mImageStatusList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    new-instance v2, Lcom/lge/morpho/utils/multimedia/StillImageData;

    iget v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewCount:I

    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mMotionData:[B

    invoke-direct {v2, v0, v3, p1, v5}, Lcom/lge/morpho/utils/multimedia/StillImageData;-><init>(II[B[B)V

    .line 89
    .local v2, "stillImageData":Lcom/lge/morpho/utils/multimedia/StillImageData;
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->addStillImage(Lcom/lge/morpho/utils/multimedia/StillImageData;)V

    .line 103
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPictureTakenPreview mNeedStop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mNeedStop:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mNeedStop:Z

    if-eqz v3, :cond_2

    .line 105
    const/16 v1, 0xb

    .line 106
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mNeedStop:Z

    .line 109
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 119
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "id":I
    .end local v1    # "status":I
    .end local v2    # "stillImageData":Lcom/lge/morpho/utils/multimedia/StillImageData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 113
    .restart local v0    # "id":I
    .restart local v1    # "status":I
    .restart local v2    # "stillImageData":Lcom/lge/morpho/utils/multimedia/StillImageData;
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->stopPanorama()V

    .line 114
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getSyncObj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    monitor-exit v1

    .line 75
    :goto_0
    return-void

    .line 59
    :cond_0
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewSkipCount:I

    if-lez v0, :cond_1

    .line 60
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewSkipCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mPreviewSkipCount:I

    .line 61
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewBuff()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 62
    monitor-exit v1

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 65
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewMini()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->doPreviewStateJob([B)V

    .line 67
    monitor-exit v1

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_3

    .line 72
    invoke-direct {p0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->doTakingStateJob([B)V

    .line 74
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
