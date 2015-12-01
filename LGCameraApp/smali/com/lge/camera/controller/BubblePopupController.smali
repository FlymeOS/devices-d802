.class public Lcom/lge/camera/controller/BubblePopupController;
.super Ljava/lang/Object;
.source "BubblePopupController.java"


# static fields
.field private static mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;


# instance fields
.field private mBubblePopupType:I

.field private mNotiComplete:Z

.field private mPopupView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v1, p0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    .line 39
    iput-boolean v1, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/BubblePopupController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/BubblePopupController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/BubblePopupController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/BubblePopupController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/BubblePopupController;Lcom/lge/camera/Mediator;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/BubblePopupController;
    .param p1, "x1"    # Lcom/lge/camera/Mediator;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/controller/BubblePopupController;->setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V

    return-void
.end method

.method public static get()Lcom/lge/camera/controller/BubblePopupController;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/lge/camera/controller/BubblePopupController;

    invoke-direct {v0}, Lcom/lge/camera/controller/BubblePopupController;-><init>()V

    sput-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    .line 47
    :cond_0
    sget-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    return-object v0
.end method

.method private isBottomMarginNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 373
    iget v1, p0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    if-ne v1, v0, :cond_0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEqualDegree(ZII)Z
    .locals 3
    .param p1, "landscape"    # Z
    .param p2, "current"    # I
    .param p3, "input"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    if-eqz p1, :cond_2

    .line 271
    if-ne p2, p3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_2
    add-int/lit8 v2, p2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, p3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V
    .locals 6
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;
    .param p2, "aniView"    # Landroid/view/View;
    .param p3, "show"    # Z

    .prologue
    .line 305
    const-string v4, "CameraApp"

    const-string v5, "qflSettingAnimation-start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040008

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 313
    .local v3, "showAni":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040009

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 316
    .local v2, "hideAni":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 318
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    .end local v2    # "hideAni":Landroid/view/animation/Animation;
    .end local v3    # "showAni":Landroid/view/animation/Animation;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 320
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "hideAni":Landroid/view/animation/Animation;
    .restart local v3    # "showAni":Landroid/view/animation/Animation;
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 321
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    if-eqz p3, :cond_4

    move-object v0, v3

    .line 324
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_1
    if-eqz v0, :cond_0

    .line 325
    new-instance v4, Lcom/lge/camera/controller/BubblePopupController$2;

    invoke-direct {v4, p0, p2, p1, p3}, Lcom/lge/camera/controller/BubblePopupController$2;-><init>(Lcom/lge/camera/controller/BubblePopupController;Landroid/view/View;Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 347
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_4
    move-object v0, v2

    .line 323
    goto :goto_1
.end method

.method private setLayout(Lcom/lge/camera/Mediator;Lcom/lge/camera/components/RotateLayout;I)V
    .locals 22
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;
    .param p2, "rl"    # Lcom/lge/camera/components/RotateLayout;
    .param p3, "degree"    # I

    .prologue
    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "currentLanguage":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 120
    .local v12, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const v19, 0x7f0d0032

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 121
    .local v4, "bubbleView":Landroid/view/View;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/RotateLayout;->measure(II)V

    .line 122
    const v19, 0x7f0d0033

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/lge/camera/components/RotateTextView;

    .line 124
    .local v15, "rtv":Lcom/lge/camera/components/RotateTextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    const v19, 0x7f0a02ed

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 131
    const v19, 0x7f0a03ac

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 135
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 138
    const v19, 0x7f0a02f4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 141
    :cond_3
    invoke-static {v12}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 142
    const/4 v6, 0x1

    .line 143
    .local v6, "isConfigureLandscape":Z
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 144
    const/16 v19, 0xc

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 145
    const/16 v19, 0x15

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f090008

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    .line 154
    .local v8, "lcd_width":I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f090009

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 156
    .local v7, "lcd_height":I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f090230

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    .line 158
    .local v18, "topMargin":I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f090232

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 160
    .local v3, "bottomMargin":I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0900a4

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    .line 162
    .local v9, "leftMargin":I
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f09001a

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f09001d

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v20

    add-int v14, v19, v20

    .line 166
    .local v14, "rightMargin":I
    const/4 v10, 0x0

    .line 167
    .local v10, "maxWidth":I
    const/16 v16, 0x0

    .line 169
    .local v16, "tempBottomMargin":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v0, v6, v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->isEqualDegree(ZII)Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v19, 0xb4

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v0, v6, v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->isEqualDegree(ZII)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 172
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f09004c

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0902cf

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v17

    .line 176
    .local v17, "thumbHeight":I
    sub-int v19, v17, v3

    div-int/lit8 v19, v19, 0x2

    add-int v16, v16, v19

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/BubblePopupController;->isBottomMarginNeeded()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0902c5

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v19

    add-int v16, v16, v19

    .line 186
    :cond_5
    sub-int v19, v8, v9

    sub-int v19, v19, v14

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v20

    sub-int v10, v19, v20

    .line 189
    const-string v19, "gu"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string v19, "te"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string v19, "mr"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 191
    invoke-virtual {v15}, Lcom/lge/camera/components/RotateTextView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11, v10}, Lcom/lge/camera/util/Common;->breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 194
    :cond_6
    invoke-virtual {v15, v11}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 196
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v0, v6, v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->isEqualDegree(ZII)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/BubblePopupController;->isBottomMarginNeeded()Z

    move-result v19

    if-nez v19, :cond_8

    const v13, 0x7f0200dc

    .line 201
    .local v13, "resId":I
    :goto_2
    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    .end local v17    # "thumbHeight":I
    :goto_3
    if-eqz v6, :cond_11

    .line 249
    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 250
    move/from16 v0, v18

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 251
    iput v9, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 252
    move/from16 v0, v16

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 260
    :goto_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    goto/16 :goto_0

    .line 147
    .end local v3    # "bottomMargin":I
    .end local v7    # "lcd_height":I
    .end local v8    # "lcd_width":I
    .end local v9    # "leftMargin":I
    .end local v10    # "maxWidth":I
    .end local v13    # "resId":I
    .end local v14    # "rightMargin":I
    .end local v16    # "tempBottomMargin":I
    .end local v18    # "topMargin":I
    :cond_7
    const/16 v19, 0xc

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    const/16 v19, 0x14

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 149
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 198
    .restart local v3    # "bottomMargin":I
    .restart local v7    # "lcd_height":I
    .restart local v8    # "lcd_width":I
    .restart local v9    # "leftMargin":I
    .restart local v10    # "maxWidth":I
    .restart local v14    # "rightMargin":I
    .restart local v16    # "tempBottomMargin":I
    .restart local v17    # "thumbHeight":I
    .restart local v18    # "topMargin":I
    :cond_8
    const v13, 0x7f0200e3

    goto :goto_2

    .line 205
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/BubblePopupController;->isBottomMarginNeeded()Z

    move-result v19

    if-nez v19, :cond_a

    const v13, 0x7f0200dd

    .line 209
    .restart local v13    # "resId":I
    :goto_5
    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 205
    .end local v13    # "resId":I
    :cond_a
    const v13, 0x7f0200de

    goto :goto_5

    .line 212
    .end local v17    # "thumbHeight":I
    :cond_b
    move/from16 v16, v3

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/BubblePopupController;->isBottomMarginNeeded()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0902c6

    invoke-static/range {v19 .. v20}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v19

    sub-int v16, v16, v19

    .line 221
    :cond_c
    sub-int v19, v7, v18

    sub-int v19, v19, v3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v20

    sub-int v10, v19, v20

    .line 224
    const-string v19, "gu"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "te"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "mr"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 226
    invoke-virtual {v15}, Lcom/lge/camera/components/RotateTextView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11, v10}, Lcom/lge/camera/util/Common;->breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 229
    :cond_d
    invoke-virtual {v15, v11}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 231
    const/16 v19, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v0, v6, v1, v2}, Lcom/lge/camera/controller/BubblePopupController;->isEqualDegree(ZII)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/BubblePopupController;->isBottomMarginNeeded()Z

    move-result v19

    if-nez v19, :cond_e

    const v13, 0x7f0200df

    .line 237
    .restart local v13    # "resId":I
    :goto_6
    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 233
    .end local v13    # "resId":I
    :cond_e
    const v13, 0x7f0200e2

    goto :goto_6

    .line 240
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/BubblePopupController;->isBottomMarginNeeded()Z

    move-result v19

    if-nez v19, :cond_10

    const v13, 0x7f0200e0

    .line 244
    .restart local v13    # "resId":I
    :goto_7
    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 240
    .end local v13    # "resId":I
    :cond_10
    const v13, 0x7f0200e1

    goto :goto_7

    .line 254
    .restart local v13    # "resId":I
    :cond_11
    move/from16 v0, v18

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 255
    iput v9, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 256
    move/from16 v0, v16

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 257
    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_4

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initializeNotiComplete()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    .line 369
    return-void
.end method

.method public removeBubblePopup(Lcom/lge/camera/Mediator;J)V
    .locals 2
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;
    .param p2, "duration"    # J

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 285
    :cond_0
    new-instance v0, Lcom/lge/camera/controller/BubblePopupController$1;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/controller/BubblePopupController$1;-><init>(Lcom/lge/camera/controller/BubblePopupController;Lcom/lge/camera/Mediator;)V

    invoke-virtual {p1, v0, p2, p3}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setNotiComplete(Z)V
    .locals 0
    .param p1, "complete"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    .line 279
    return-void
.end method

.method public showBubblePopup(Lcom/lge/camera/Mediator;IJ)V
    .locals 11
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;
    .param p2, "popupType"    # I
    .param p3, "duration"    # J

    .prologue
    const v9, 0x7f0d00c5

    const v8, 0x7f0d0031

    const v7, 0x7f030004

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "result":Z
    packed-switch p2, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0, p1, p3, p4}, Lcom/lge/camera/controller/BubblePopupController;->removeBubblePopup(Lcom/lge/camera/Mediator;J)V

    .line 109
    :cond_1
    return-void

    .line 58
    :pswitch_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    if-nez v3, :cond_0

    .line 62
    invoke-virtual {p1, v9}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 63
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 64
    invoke-virtual {p1, v7}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    .line 66
    :cond_2
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p1, v8}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "view":Landroid/view/View;
    iput p2, p0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    .line 71
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v3

    invoke-virtual {p0, p1, v3, v6}, Lcom/lge/camera/controller/BubblePopupController;->startRotation(Lcom/lge/camera/Mediator;IZ)V

    .line 72
    invoke-direct {p0, p1, v2, v5}, Lcom/lge/camera/controller/BubblePopupController;->setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V

    .line 73
    const/4 v0, 0x1

    .line 74
    iput-boolean v5, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    goto :goto_0

    .line 80
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "view":Landroid/view/View;
    :pswitch_1
    if-eqz p1, :cond_0

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_refocus"

    invoke-virtual {p1, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {p1, v9}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 86
    .restart local v1    # "vg":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 87
    invoke-virtual {p1, v7}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    .line 89
    :cond_3
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/lge/camera/controller/BubblePopupController;->mPopupView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p1, v8}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 93
    .restart local v2    # "view":Landroid/view/View;
    iput p2, p0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupType:I

    .line 94
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v3

    invoke-virtual {p0, p1, v3, v6}, Lcom/lge/camera/controller/BubblePopupController;->startRotation(Lcom/lge/camera/Mediator;IZ)V

    .line 95
    invoke-direct {p0, p1, v2, v5}, Lcom/lge/camera/controller/BubblePopupController;->setBubblePopupAnimation(Lcom/lge/camera/Mediator;Landroid/view/View;Z)V

    .line 96
    const/4 v0, 0x1

    .line 97
    iput-boolean v5, p0, Lcom/lge/camera/controller/BubblePopupController;->mNotiComplete:Z

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startRotation(Lcom/lge/camera/Mediator;IZ)V
    .locals 3
    .param p1, "mediator"    # Lcom/lge/camera/Mediator;
    .param p2, "degree"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 356
    if-nez p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const v2, 0x7f0d0031

    invoke-virtual {p1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 360
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 361
    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 362
    .local v0, "rl":Lcom/lge/camera/components/RotateLayout;
    invoke-direct {p0, p1, v0, p2}, Lcom/lge/camera/controller/BubblePopupController;->setLayout(Lcom/lge/camera/Mediator;Lcom/lge/camera/components/RotateLayout;I)V

    .line 363
    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/BubblePopupController;->mBubblePopupController:Lcom/lge/camera/controller/BubblePopupController;

    .line 52
    return-void
.end method
