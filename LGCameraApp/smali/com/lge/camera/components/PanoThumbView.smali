.class public Lcom/lge/camera/components/PanoThumbView;
.super Landroid/widget/RelativeLayout;
.source "PanoThumbView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private ARROW_MARGIN:I

.field private BOTTOM_MARGIN:I

.field public final DIRECTION_DOWN:I

.field public final DIRECTION_INIT:I

.field public final DIRECTION_LEFT:I

.field public final DIRECTION_RIGHT:I

.field public final DIRECTION_UP:I

.field private GUIDE_BOX_MARGIN:I

.field private THUMB_MARGIN:I

.field private mDHeight:I

.field private mDWidth:I

.field private mDirect:I

.field private mThumbHeight:I

.field private mThumbWidth:I

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private moveRatioHeight:F

.field private moveRatioWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_INIT:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_RIGHT:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_LEFT:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_DOWN:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->DIRECTION_UP:I

    .line 33
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    .line 42
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    .line 43
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    .line 44
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    .line 45
    iput v1, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    .line 52
    const v0, 0x7f09008e

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    .line 54
    const v0, 0x7f09008d

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09008f

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    .line 57
    const v0, 0x7f090090

    invoke-static {p1, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    .line 58
    return-void
.end method

.method private setGuidRect()V
    .locals 10

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0xf

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-eqz v4, :cond_0

    .line 123
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "setGuidRect"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const v4, 0x7f0d011f

    invoke-virtual {p0, v4}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .local v1, "movingRectImage":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .local v0, "mlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 82
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 83
    const v4, 0x7f0d011e

    invoke-virtual {p0, v4}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 84
    .local v2, "nextRectImage":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    .local v3, "nlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 86
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 88
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 89
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 90
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 91
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 92
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 93
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 94
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 98
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 99
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 100
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 101
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 102
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 103
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    packed-switch v4, :pswitch_data_0

    .line 122
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 110
    :pswitch_1
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 111
    const/16 v4, 0x15

    invoke-virtual {v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 114
    :pswitch_2
    invoke-virtual {v3, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 117
    :pswitch_3
    invoke-virtual {v3, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNextRect()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/16 v4, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 386
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-nez v2, :cond_0

    .line 456
    :goto_0
    return-void

    .line 389
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "setNextRect"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const v2, 0x7f0d011e

    invoke-virtual {p0, v2}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 392
    .local v0, "nextRectImage":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 393
    .local v1, "nlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 395
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 396
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    packed-switch v2, :pswitch_data_0

    .line 454
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 398
    :pswitch_0
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 399
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 400
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 401
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNextRect nlp.leftMargin + mThumbWidth= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNextRect mTotalWidth= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    if-lt v2, v3, :cond_1

    .line 405
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 407
    :cond_1
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 408
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 409
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 410
    invoke-virtual {v1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 413
    :pswitch_1
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 414
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 415
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 416
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 417
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    if-lt v2, v3, :cond_2

    .line 418
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 420
    :cond_2
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 421
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 422
    invoke-virtual {v1, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 423
    const/16 v2, 0x15

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 426
    :pswitch_2
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 427
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 428
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 429
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 430
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 431
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    if-lt v2, v3, :cond_3

    .line 432
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 434
    :cond_3
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 435
    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 436
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 439
    :pswitch_3
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 440
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 441
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 442
    iget v2, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 443
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 444
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 445
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    if-lt v2, v3, :cond_4

    .line 446
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 448
    :cond_4
    invoke-virtual {v1, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 449
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public arrowAnimation(Z)V
    .locals 5
    .param p1, "start"    # Z

    .prologue
    .line 283
    const v3, 0x7f0d0120

    invoke-virtual {p0, v3}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 285
    .local v1, "arrowView":Landroid/widget/ImageView;
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 286
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 287
    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 296
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 290
    .restart local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "CameraApp"

    const-string v4, "ClassCastException : "

    invoke-static {v3, v4, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init(IIIIIIII)V
    .locals 2
    .param p1, "tW"    # I
    .param p2, "tH"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "dw"    # I
    .param p6, "dh"    # I
    .param p7, "enginInputW"    # I
    .param p8, "engineInputH"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    .line 62
    iput p2, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    .line 63
    iput p3, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    .line 64
    iput p4, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    .line 65
    iput p5, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    .line 66
    iput p6, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    .line 67
    iget v0, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    int-to-float v0, v0

    int-to-float v1, p7

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioWidth:F

    .line 68
    iget v0, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    int-to-float v0, v0

    int-to-float v1, p8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioHeight:F

    .line 70
    invoke-direct {p0}, Lcom/lge/camera/components/PanoThumbView;->setGuidRect()V

    .line 71
    return-void
.end method

.method public setDirection(II)V
    .locals 13
    .param p1, "direction"    # I
    .param p2, "degree"    # I

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0x15

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 126
    iput p1, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    .line 127
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-nez v5, :cond_0

    .line 250
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Panorama Thumb - direction : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", degree = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 134
    add-int/lit16 v5, p2, 0x10e

    rem-int/lit16 p2, v5, 0x168

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 139
    invoke-virtual {v2, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    const v5, 0x7f0d0120

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    .local v1, "arrowView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    .local v0, "alp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 145
    const v5, 0x7f0d011d

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 146
    .local v3, "thumbImage":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    .local v4, "tlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 148
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 238
    :goto_1
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/PanoThumbView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    const/16 v5, 0xb4

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->setBackgroundColor(I)V

    .line 241
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 247
    const v5, 0x7f0d0121

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {p0, v9}, Lcom/lge/camera/components/PanoThumbView;->arrowAnimation(Z)V

    goto/16 :goto_0

    .line 152
    :pswitch_0
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 153
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 154
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 155
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 156
    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 157
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 158
    invoke-virtual {v2, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 160
    const v5, 0x7f02043c

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 162
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 163
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 164
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 165
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 166
    const/16 v5, 0xf

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 167
    invoke-virtual {v0, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 169
    invoke-virtual {v4, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 173
    :pswitch_1
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalWidth:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 174
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 175
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 176
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 177
    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 179
    invoke-virtual {v2, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    const v5, 0x7f02043b

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 183
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 184
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 185
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 186
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 187
    const/16 v5, 0xf

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    invoke-virtual {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    invoke-virtual {v4, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 194
    :pswitch_2
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 195
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 196
    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 197
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 198
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 199
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 200
    invoke-virtual {v2, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    const v5, 0x7f02043a

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 204
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 205
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 206
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 207
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 208
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    invoke-virtual {v0, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    const/16 v5, 0xa

    invoke-virtual {v4, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 215
    :pswitch_3
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 216
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mTotalHeight:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 217
    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 218
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 219
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 220
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->THUMB_MARGIN:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 221
    invoke-virtual {v2, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 223
    const v5, 0x7f02043d

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 225
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 226
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 227
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->ARROW_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 228
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 229
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 230
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 232
    invoke-virtual {v4, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMovingRect(III)V
    .locals 12
    .param p1, "hMove"    # I
    .param p2, "vMove"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v11, 0xf

    const/16 v10, 0xe

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 299
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-nez v5, :cond_0

    .line 383
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v4, 0x0

    .line 304
    .local v4, "transMove":I
    const v5, 0x7f0d011f

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 305
    .local v1, "movingRectImage":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 306
    .local v0, "mlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 308
    const v5, 0x7f0d011e

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 309
    .local v2, "nextRectImage":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 311
    .local v3, "nlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    .line 312
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    packed-switch v5, :pswitch_data_0

    .line 376
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    const-string v5, "CameraApp"

    const-string v6, "setMovingRect setNextRect"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/lge/camera/components/PanoThumbView;->setNextRect()V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->invalidate()V

    goto :goto_0

    .line 314
    :pswitch_0
    int-to-float v5, p1

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioWidth:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 315
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 316
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 317
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 318
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 319
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    if-gt v5, v6, :cond_2

    .line 320
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 322
    :cond_2
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 323
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 324
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 325
    invoke-virtual {v0, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 328
    :pswitch_1
    neg-int v5, p1

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioWidth:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 329
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 330
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 331
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 332
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v7, p0, Lcom/lge/camera/components/PanoThumbView;->mDWidth:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 333
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    if-gt v5, v6, :cond_3

    .line 334
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 336
    :cond_3
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 337
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 338
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 339
    invoke-virtual {v0, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 340
    const/16 v5, 0x15

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 343
    :pswitch_2
    int-to-float v5, p2

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioHeight:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 344
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 345
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 346
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 347
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 348
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 349
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v7, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 350
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    if-gt v5, v6, :cond_4

    .line 351
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 353
    :cond_4
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 354
    invoke-virtual {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 355
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 358
    :pswitch_3
    neg-int v5, p2

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->moveRatioHeight:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 359
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbWidth:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 360
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbHeight:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 361
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 362
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->BOTTOM_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 363
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 364
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 365
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v7, p0, Lcom/lge/camera/components/PanoThumbView;->mDHeight:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 366
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    if-gt v5, v6, :cond_5

    .line 367
    iget v5, p0, Lcom/lge/camera/components/PanoThumbView;->GUIDE_BOX_MARGIN:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 369
    :cond_5
    invoke-virtual {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 370
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 5
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "nextGuide"    # Z

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 253
    iget v1, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    if-eqz v1, :cond_0

    .line 254
    const v1, 0x7f0d011d

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    .line 258
    if-nez p1, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoThumbView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 261
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 262
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/PanoThumbView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/PanoThumbView;->setBackgroundColor(I)V

    .line 264
    const v1, 0x7f0d0120

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    const v1, 0x7f0d0121

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    const v1, 0x7f0d011f

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v1, 0x7f0d011e

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/PanoThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/PanoThumbView;->arrowAnimation(Z)V

    .line 270
    iput v3, p0, Lcom/lge/camera/components/PanoThumbView;->mDirect:I

    .line 271
    iget-object v1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    iput-object p1, p0, Lcom/lge/camera/components/PanoThumbView;->mThumbnail:Landroid/graphics/Bitmap;

    .line 280
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    if-eqz p2, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/lge/camera/components/PanoThumbView;->setNextRect()V

    goto :goto_0
.end method
