.class public Lcom/lge/camera/controller/QuickButtonController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickButtonController.java"

# interfaces
.implements Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    }
.end annotation


# instance fields
.field private blockObject:Ljava/lang/Object;

.field private isForcedMenuDisable:Z

.field private isNeedEnableSwitcherLever:Z

.field private mButtonAnim:Landroid/view/animation/Animation;

.field private mButtonGroupEnable:[Z

.field private mCurrentDegree:I

.field private mMenuViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuTouchListener:Landroid/view/View$OnTouchListener;

.field private mSliding:Z

.field private mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 56
    iput-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;

    .line 57
    iput v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mCurrentDegree:I

    .line 58
    iput-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;

    .line 59
    const/16 v0, 0xc

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    .line 572
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;

    .line 573
    new-instance v0, Lcom/lge/camera/controller/QuickButtonController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickButtonController$1;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    .line 855
    iput-boolean v2, p0, Lcom/lge/camera/controller/QuickButtonController;->isNeedEnableSwitcherLever:Z

    .line 856
    new-instance v0, Lcom/lge/camera/controller/QuickButtonController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickButtonController$4;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mOnMenuTouchListener:Landroid/view/View$OnTouchListener;

    .line 1013
    iput-boolean v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z

    .line 1041
    iput-boolean v1, p0, Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z

    .line 100
    new-instance v0, Lcom/lge/camera/listeners/SmartCameraModeCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/SmartCameraModeCallback;-><init>(Lcom/lge/camera/listeners/SmartCameraModeCallback$SmartCameraModeFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;

    .line 101
    invoke-interface {p1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mCurrentDegree:I

    .line 102
    const/16 v0, 0x64

    invoke-direct {p0, v0, v2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/QuickButtonController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkOnClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/QuickButtonController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonResources(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/QuickButtonController;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;
    .param p1, "x1"    # Lcom/lge/camera/components/RotateImageButton;
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/QuickButtonController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/QuickButtonController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkSettingMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/QuickButtonController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->blockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickButtonController;->doSwapForEffectsRecording()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/QuickButtonController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickButtonController;->doSwapForEffectsCamera()V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/QuickButtonController;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/QuickButtonController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/QuickButtonController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->isNeedEnableSwitcherLever:Z

    return v0
.end method

.method static synthetic access$702(Lcom/lge/camera/controller/QuickButtonController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController;->isNeedEnableSwitcherLever:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/camera/controller/QuickButtonController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickButtonController;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z

    return p1
.end method

.method private addAudioZoomButton(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 381
    const/4 v0, 0x1

    .line 382
    .local v0, "isDim":Z
    const/4 v1, 0x1

    .line 383
    .local v1, "isEnable":Z
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v2

    .line 384
    .local v2, "margin":[I
    const/4 v3, 0x0

    .line 386
    .local v3, "resid":I
    const/4 v4, 0x0

    .line 388
    .local v4, "rib":Lcom/lge/camera/components/RotateImageButton;
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v9}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    const/4 v1, 0x0

    .line 390
    const/4 v0, 0x0

    .line 392
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getHeadsetstate()I

    move-result v5

    if-eq v5, v8, :cond_1

    const-string v5, "mute"

    iget-object v6, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_audio_recording"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 394
    :cond_1
    const/4 v1, 0x0

    .line 395
    const/4 v0, 0x0

    .line 398
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 399
    const v3, 0x7f020466

    .line 403
    :goto_0
    const v5, 0x7f020035

    invoke-direct {p0, p1, v8, v3, v5}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    .line 406
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0a0286

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 408
    if-eqz v4, :cond_3

    .line 409
    invoke-virtual {v4, v1}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 410
    invoke-direct {p0, v8, v1}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V

    .line 411
    invoke-direct {p0, v4, v0}, Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V

    .line 412
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v6, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v7, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v7, v7, v8

    invoke-direct {v6, p0, v4, v7}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v5, 0x0

    aget v5, v2, v5

    aget v6, v2, v9

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 415
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 416
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 417
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 419
    :cond_3
    return-void

    .line 401
    :cond_4
    const v3, 0x7f020465

    goto :goto_0
.end method

.method private addFlashButton(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # I

    .prologue
    const v6, 0x7f020035

    const/4 v5, 0x1

    .line 355
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 356
    .local v0, "margin":[I
    const/4 v1, 0x0

    .line 358
    .local v1, "rib":Lcom/lge/camera/components/RotateImageButton;
    const-string v2, "off"

    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const v2, 0x7f020468

    invoke-direct {p0, p1, v5, v2, v6}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0290

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 375
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 376
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 377
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 378
    return-void

    .line 365
    :cond_0
    const v2, 0x7f020469

    invoke-direct {p0, p1, v5, v2, v6}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 369
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0291

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private addModeMenuButton(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # I

    .prologue
    .line 216
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 217
    .local v0, "margin":[I
    const/4 v7, 0x7

    const v8, 0x7f020488

    const v9, 0x7f020035

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    .line 219
    .local v4, "rib":Lcom/lge/camera/components/RotateImageButton;
    const v7, 0x7f0a035c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "message":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0a0354

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    const/16 v7, 0x31

    const/16 v8, 0x31

    const/16 v9, 0x31

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextColor(I)V

    .line 223
    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextShadowColor(I)V

    .line 224
    invoke-virtual {v4, v2}, Lcom/lge/camera/components/RotateImageButton;->setText(Ljava/lang/String;)V

    .line 226
    iget-object v7, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v8, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v4, v9}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-direct {p0, v4, v7, v8}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 229
    const v7, 0x7f090226

    invoke-static {p1, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextSize(I)V

    .line 230
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setTextScaleX(F)V

    .line 232
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 233
    .local v6, "tp":Landroid/graphics/Paint;
    const v7, 0x7f090226

    invoke-static {p1, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    const v7, 0x7f090227

    invoke-static {p1, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    int-to-float v3, v7

    .line 240
    .local v3, "quickButtonTargetWidth":F
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 243
    .local v1, "mearsureText":F
    const/4 v5, 0x0

    .line 245
    .local v5, "scaleFactor":F
    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    .line 250
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_0

    .line 251
    div-float v5, v3, v1

    .line 259
    :cond_0
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scaleFactor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    .line 261
    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setTextScaleX(F)V

    .line 265
    :cond_1
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 266
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 267
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 268
    return-void
.end method

.method private addNewFlashButton(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const v9, 0x7f020035

    const/16 v8, 0xa

    .line 295
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v2

    .line 296
    .local v2, "margin":[I
    const/4 v3, 0x0

    .line 298
    .local v3, "rib":Lcom/lge/camera/components/RotateImageButton;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_flash"

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "flash":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v0, v4, v8

    .line 300
    .local v0, "enable":Z
    const-string v4, "off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_2

    .line 301
    :cond_0
    const v4, 0x7f020468

    invoke-direct {p0, p1, v8, v4, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 303
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0a0290

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 316
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V

    .line 317
    iget-object v7, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v8, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    if-nez v0, :cond_5

    move v4, v5

    :goto_1
    invoke-direct {v8, p0, v3, v0, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;ZZ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    aget v4, v2, v6

    aget v5, v2, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 319
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 320
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 321
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 322
    :cond_1
    return-void

    .line 304
    :cond_2
    const-string v4, "on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "torch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 305
    :cond_3
    const v4, 0x7f020469

    invoke-direct {p0, p1, v8, v4, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 307
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0a0291

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_4
    const-string v4, "auto"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    const v4, 0x7f020467

    invoke-direct {p0, p1, v8, v4, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 311
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0a028f

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move v4, v6

    .line 317
    goto :goto_1
.end method

.method private addNewLightButton(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # I

    .prologue
    const v9, 0x7f020035

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v8, 0xb

    .line 325
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v2

    .line 326
    .local v2, "margin":[I
    const/4 v3, 0x0

    .line 328
    .local v3, "rib":Lcom/lge/camera/components/RotateImageButton;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_light"

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "light":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v0, v4, v8

    .line 330
    .local v0, "enable":Z
    const-string v4, "off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_2

    .line 331
    :cond_0
    const v4, 0x7f020468

    invoke-direct {p0, p1, v8, v4, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 334
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0a0290

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 346
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V

    .line 347
    iget-object v7, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v8, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    if-nez v0, :cond_3

    move v4, v5

    :goto_1
    invoke-direct {v8, p0, v3, v0, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;ZZ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    aget v4, v2, v6

    aget v5, v2, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 349
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 350
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 351
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 352
    :cond_1
    return-void

    .line 336
    :cond_2
    const-string v4, "on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    const v4, 0x7f020469

    invoke-direct {p0, p1, v8, v4, v9}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 340
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0a0291

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v4, v6

    .line 347
    goto :goto_1
.end method

.method private addNewSwapButton(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # I

    .prologue
    const/16 v5, 0x9

    .line 283
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 284
    .local v0, "margin":[I
    const v2, 0x7f02046d

    const v3, 0x7f020035

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 286
    .local v1, "rib":Lcom/lge/camera/components/RotateImageButton;
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0047

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 289
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 290
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 291
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 292
    return-void
.end method

.method private addObjectTrackingButton(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # I

    .prologue
    const/4 v5, 0x3

    .line 422
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 423
    .local v0, "margin":[I
    const/4 v1, 0x0

    .line 425
    .local v1, "rib":Lcom/lge/camera/components/RotateImageButton;
    const v2, 0x7f02046b

    const v3, 0x7f020035

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 431
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 432
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 433
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 434
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0287

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method private addSettingButton(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # I

    .prologue
    const/16 v5, 0x8

    .line 271
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v0

    .line 272
    .local v0, "margin":[I
    const v2, 0x7f02046c

    const v3, 0x7f020035

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v1

    .line 274
    .local v1, "rib":Lcom/lge/camera/components/RotateImageButton;
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0045

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    new-instance v3, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aget-boolean v4, v4, v5

    invoke-direct {v3, p0, v1, v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;-><init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V

    .line 277
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 278
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/QuickButtonController;->setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V

    .line 279
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 280
    return-void
.end method

.method private checkOnClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v1

    if-nez v1, :cond_1

    .line 909
    :cond_0
    :goto_0
    return v0

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isNullSettingView()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSettingViewRemoving()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    const-string v1, "CameraApp"

    const-string v2, "settingview is not null && Removing!!!  ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPressedShutterButton()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 903
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "ShutterButton pressed.. ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 906
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSettingMenu()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 884
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 886
    :cond_1
    return-void
.end method

.method private doSwapForEffectsCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 838
    const-string v0, "CameraApp"

    const-string v1, "SwapCameraPrepared-start, dual camera is active"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->effectCameraStopPreviewByCallFrom(I)V

    .line 841
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V

    .line 843
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 844
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 845
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 846
    invoke-virtual {p0, v4, v4}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 847
    return-void
.end method

.method private doSwapForEffectsRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 823
    const-string v0, "CameraApp"

    const-string v1, "SwapCameraPrepared-start, liveeffect is active"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreviewByCallFrom(I)V

    .line 826
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 829
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->setCheckClickTime(J)V

    .line 831
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 832
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 833
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 834
    invoke-virtual {p0, v4, v4}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 835
    return-void
.end method

.method private getButton(Landroid/content/Context;III)Lcom/lge/camera/components/RotateImageButton;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonType"    # I
    .param p3, "buttonRes"    # I
    .param p4, "bgRes"    # I

    .prologue
    .line 199
    new-instance v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-direct {v0, p1}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "rib":Lcom/lge/camera/components/RotateImageButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setRotateIconOnly(Z)V

    .line 201
    if-lez p4, :cond_0

    .line 202
    invoke-virtual {v0, p4}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 204
    :cond_0
    if-lez p3, :cond_1

    .line 205
    invoke-virtual {v0, p3}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 207
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 208
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setTag(Ljava/lang/Object;)V

    .line 209
    return-object v0
.end method

.method private hasButton(II)Z
    .locals 8
    .param p1, "buttonType"    # I
    .param p2, "location"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 172
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 195
    :goto_0
    return v5

    .line 175
    :cond_1
    const/4 v0, 0x0

    .line 176
    .local v0, "button":Lcom/lge/camera/components/RotateImageButton;
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 177
    .local v4, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v4}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 180
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonLocation(I)[I

    move-result-object v2

    .line 181
    .local v2, "margin":[I
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    aget v5, v2, v7

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 185
    aget v5, v2, v6

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 191
    :goto_1
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v5, v6

    .line 192
    goto :goto_0

    .line 187
    :cond_3
    const/16 v5, 0x15

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    aget v5, v2, v7

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 189
    aget v5, v2, v6

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .end local v2    # "margin":[I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    :cond_4
    move v5, v7

    .line 195
    goto :goto_0
.end method

.method private isNeedDisableDefaultIcon(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 505
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 514
    :goto_0
    return v2

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 510
    .local v1, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 511
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->isNeedDefault()Z

    move-result v2

    goto :goto_0

    .end local v1    # "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    :cond_3
    move v2, v3

    .line 514
    goto :goto_0
.end method

.method private setAlphaAnimation(Landroid/view/View;III)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "duration"    # I

    .prologue
    .line 1020
    if-eqz p1, :cond_0

    .line 1021
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    new-instance v0, Lcom/lge/camera/controller/QuickButtonController$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController$5;-><init>(Lcom/lge/camera/controller/QuickButtonController;Landroid/view/View;I)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 1039
    :cond_0
    return-void
.end method

.method private setButtonGroupEnable(IZ)V
    .locals 2
    .param p1, "buttonType"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1220
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 1221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 1222
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aput-boolean p2, v1, v0

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonGroupEnable:[Z

    aput-boolean p2, v1, p1

    .line 1227
    :cond_1
    return-void
.end method

.method private setButtonLayout(Lcom/lge/camera/components/RotateImageButton;II)V
    .locals 4
    .param p1, "buttonView"    # Lcom/lge/camera/components/RotateImageButton;
    .param p2, "leftMargin"    # I
    .param p3, "topMargin"    # I

    .prologue
    const/4 v3, -0x2

    .line 543
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-nez v2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    if-eqz p1, :cond_0

    .line 547
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 550
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 552
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 559
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0198

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 560
    .local v1, "quickButtonView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 561
    check-cast v1, Landroid/widget/RelativeLayout;

    .end local v1    # "quickButtonView":Landroid/view/View;
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 554
    :cond_2
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 555
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 556
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private setButtonLocation(I)[I
    .locals 5
    .param p1, "location"    # I

    .prologue
    .line 1296
    const/4 v1, 0x0

    .line 1297
    .local v1, "marginLeft":I
    const/4 v2, 0x0

    .line 1298
    .local v2, "marginTop":I
    packed-switch p1, :pswitch_data_0

    .line 1349
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3

    .line 1300
    :pswitch_0
    const v3, 0x7f090228

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1301
    const v3, 0x7f090229

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1302
    goto :goto_0

    .line 1304
    :pswitch_1
    const v3, 0x7f09022a

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1305
    const v3, 0x7f09022b

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1306
    goto :goto_0

    .line 1308
    :pswitch_2
    const v3, 0x7f09022c

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1309
    const v3, 0x7f09022d

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1310
    goto :goto_0

    .line 1312
    :pswitch_3
    const v3, 0x7f09022e

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1313
    const v3, 0x7f09022f

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1314
    goto :goto_0

    .line 1317
    :pswitch_4
    const v3, 0x7f09021c

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1318
    const v3, 0x7f09021d

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1319
    goto :goto_0

    .line 1321
    :pswitch_5
    const v3, 0x7f09021e

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1322
    const v3, 0x7f09021f

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1323
    goto :goto_0

    .line 1325
    :pswitch_6
    const v3, 0x7f090220

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1326
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_1

    :cond_0
    const v0, 0x7f09024e

    .line 1332
    .local v0, "id":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1333
    goto/16 :goto_0

    .line 1326
    .end local v0    # "id":I
    :cond_1
    const v0, 0x7f090221

    goto :goto_1

    .line 1335
    :pswitch_7
    const v3, 0x7f090222

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1336
    const v3, 0x7f090223

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1337
    goto/16 :goto_0

    .line 1339
    :pswitch_8
    const v3, 0x7f090224

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1340
    const v3, 0x7f090225

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1341
    goto/16 :goto_0

    .line 1343
    :pswitch_9
    const v3, 0x7f09021a

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v1

    .line 1344
    const v3, 0x7f09021b

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->getPixelFromDimens(I)I

    move-result v2

    .line 1345
    goto/16 :goto_0

    .line 1298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setMenuClickListener(Lcom/lge/camera/components/RotateImageButton;)V
    .locals 1
    .param p1, "rib"    # Lcom/lge/camera/components/RotateImageButton;

    .prologue
    .line 567
    if-eqz p1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    :cond_0
    return-void
.end method

.method private setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    .locals 2
    .param p1, "rib"    # Lcom/lge/camera/components/RotateImageButton;
    .param p2, "enable"    # Z

    .prologue
    .line 1230
    if-nez p1, :cond_0

    .line 1243
    :goto_0
    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/camera/controller/QuickButtonController$11;-><init>(Lcom/lge/camera/controller/QuickButtonController;ZLcom/lge/camera/components/RotateImageButton;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setMenuTouchListener(Lcom/lge/camera/components/RotateImageButton;)V
    .locals 1
    .param p1, "rib"    # Lcom/lge/camera/components/RotateImageButton;

    .prologue
    .line 850
    if-eqz p1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mOnMenuTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcom/lge/camera/components/RotateImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 853
    :cond_0
    return-void
.end method

.method private setQuickButtonResources(I)V
    .locals 10
    .param p1, "type"    # I

    .prologue
    const v4, 0x7f020468

    const/16 v3, 0xb

    const/4 v9, 0x1

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 438
    sparse-switch p1, :sswitch_data_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 440
    :sswitch_0
    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const v0, 0x7f0a0290

    invoke-virtual {p0, v9, v4, v0}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 445
    :cond_1
    const v0, 0x7f020469

    const v1, 0x7f0a0291

    invoke-virtual {p0, v9, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 451
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_light"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 452
    .local v7, "light":Ljava/lang/String;
    const-string v0, "off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickButtonController;->isNeedDisableDefaultIcon(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    :cond_2
    const v0, 0x7f0a0290

    invoke-virtual {p0, v3, v4, v0}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 459
    :cond_3
    const v0, 0x7f020469

    const v1, 0x7f0a0291

    invoke-virtual {p0, v3, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto :goto_0

    .line 465
    .end local v7    # "light":Ljava/lang/String;
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v8

    .line 467
    .local v8, "start":Z
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_4

    .line 468
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->startObjectTrackingFocus(IIIII)V

    .line 471
    :cond_4
    if-eqz v8, :cond_5

    .line 472
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopAudiozoom()V

    .line 473
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setAudiozoomStartInRecording(Z)V

    .line 474
    const/4 v0, 0x2

    const v1, 0x7f020465

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    goto :goto_0

    .line 477
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startAudiozoom()V

    .line 478
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v9}, Lcom/lge/camera/ControllerFunction;->setAudiozoomStartInRecording(Z)V

    .line 479
    const/4 v0, 0x2

    const v1, 0x7f020466

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    goto/16 :goto_0

    .line 484
    .end local v8    # "start":Z
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 485
    .local v6, "flash":Ljava/lang/String;
    const-string v0, "off"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickButtonController;->isNeedDisableDefaultIcon(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 486
    :cond_6
    const v0, 0x7f0a0290

    invoke-virtual {p0, v2, v4, v0}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto/16 :goto_0

    .line 489
    :cond_7
    const-string v0, "on"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "torch"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 490
    :cond_8
    const v0, 0x7f020469

    const v1, 0x7f0a0291

    invoke-virtual {p0, v2, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto/16 :goto_0

    .line 493
    :cond_9
    const-string v0, "auto"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const v0, 0x7f020467

    const v1, 0x7f0a028f

    invoke-virtual {p0, v2, v0, v1}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    goto/16 :goto_0

    .line 438
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method private setRotation(IZ)V
    .locals 3
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1003
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1011
    :cond_0
    return-void

    .line 1006
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1007
    .local v1, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1008
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public addQuickButton(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonType"    # I
    .param p3, "location"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/camera/controller/QuickButtonController;->addQuickButton(Landroid/content/Context;III)V

    .line 169
    return-void
.end method

.method public addQuickButton(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonType"    # I
    .param p3, "orientation"    # I
    .param p4, "location"    # I

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p4}, Lcom/lge/camera/controller/QuickButtonController;->hasButton(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 158
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget p3, p0, Lcom/lge/camera/controller/QuickButtonController;->mCurrentDegree:I

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    if-eq v0, p3, :cond_3

    .line 162
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result p3

    .line 164
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/lge/camera/controller/QuickButtonController;->setRotation(IZ)V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addFlashButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 134
    :pswitch_2
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addAudioZoomButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 137
    :pswitch_3
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addObjectTrackingButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 140
    :pswitch_4
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addModeMenuButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 143
    :pswitch_5
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addSettingButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 146
    :pswitch_6
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addNewSwapButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 149
    :pswitch_7
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addNewFlashButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 152
    :pswitch_8
    invoke-direct {p0, p1, p4}, Lcom/lge/camera/controller/QuickButtonController;->addNewLightButton(Landroid/content/Context;I)V

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public changeButtonResource(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "resId"    # I

    .prologue
    .line 518
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 527
    :cond_0
    return-void

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 523
    .local v1, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 524
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public changeButtonResource(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "resId"    # I
    .param p3, "descriptionId"    # I

    .prologue
    .line 530
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 540
    :cond_0
    return-void

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 535
    .local v1, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 536
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 537
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public doSmartCameraModeCallback([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doSmartCameraModeCallback([I)V

    .line 1373
    return-void
.end method

.method public initController()V
    .locals 3

    .prologue
    .line 113
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-nez v1, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00d1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    .line 122
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    iget-object v1, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a019d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0
.end method

.method public isSliding()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mSliding:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->unbind()V

    .line 1367
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 1368
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z

    .line 1360
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->removeQuickButtonAll()V

    .line 1361
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1362
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1354
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 1355
    return-void
.end method

.method public refreshQuickButton()V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$12;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickButtonController$12;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1259
    return-void
.end method

.method public releaseAllButtonsEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1048
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1049
    .local v1, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->setEnable(Z)V

    goto :goto_0

    .line 1051
    .end local v1    # "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    :cond_0
    const/16 v2, 0x64

    invoke-direct {p0, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V

    .line 1052
    return-void
.end method

.method public removeQuickButton(I)V
    .locals 7
    .param p1, "buttonType"    # I

    .prologue
    .line 969
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0198

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 975
    .local v2, "quickButtonView":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    .line 976
    .local v3, "rib":Lcom/lge/camera/components/RotateImageButton;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 977
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    invoke-virtual {v5}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 978
    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 979
    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->clearAnimation()V

    .line 980
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 981
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 982
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 986
    .end local v1    # "i":I
    .end local v2    # "quickButtonView":Landroid/widget/RelativeLayout;
    .end local v3    # "rib":Lcom/lge/camera/components/RotateImageButton;
    .end local v4    # "size":I
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "Excetion:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 976
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "quickButtonView":Landroid/widget/RelativeLayout;
    .restart local v3    # "rib":Lcom/lge/camera/components/RotateImageButton;
    .restart local v4    # "size":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public removeQuickButtonAll()V
    .locals 6

    .prologue
    .line 950
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d0198

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 956
    .local v3, "quickButtonView":Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 957
    .local v2, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->clearAnimation()V

    .line 958
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 959
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 963
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    .end local v3    # "quickButtonView":Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "Excetion:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 961
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "quickButtonView":Landroid/widget/RelativeLayout;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 962
    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/QuickButtonController;->setButtonGroupEnable(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setAllMenuEnable(ZZ)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "dimByEnable"    # Z

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController$10;-><init>(Lcom/lge/camera/controller/QuickButtonController;ZZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setButtonRemainEnabled(IZ)V
    .locals 2
    .param p1, "buttonType"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController$7;-><init>(Lcom/lge/camera/controller/QuickButtonController;IZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1106
    return-void
.end method

.method public setButtonRemainEnabled(IZZ)V
    .locals 2
    .param p1, "buttonType"    # I
    .param p2, "enable"    # Z
    .param p3, "useDefaultIconDisable"    # Z

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController$8;-><init>(Lcom/lge/camera/controller/QuickButtonController;IZZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1140
    return-void
.end method

.method public setButtonRemainRefresh()V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$6;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickButtonController$6;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method public setMenuEnable(IZZ)V
    .locals 2
    .param p1, "buttonType"    # I
    .param p2, "enable"    # Z
    .param p3, "dimByEnable"    # Z

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickButtonController$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController$9;-><init>(Lcom/lge/camera/controller/QuickButtonController;IZZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setQuickButtonForcedDisable(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z

    .line 1045
    return-void
.end method

.method public setSmartCameraMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 5
    .param p1, "lgParams"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 1262
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1263
    const-string v2, "CameraApp"

    const-string v3, "SetSmartCameraMode : model is not supported."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1269
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSmartCameraMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const/4 v1, 0x0

    .line 1272
    .local v1, "needParameters":Z
    if-nez p1, :cond_2

    .line 1273
    const/4 v1, 0x1

    .line 1274
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object p1

    .line 1277
    :cond_2
    if-eqz p2, :cond_3

    .line 1278
    const-string v2, "on"

    invoke-virtual {p1, v2}, Lcom/lge/hardware/LGCamera$LGParameters;->setSceneDetectMode(Ljava/lang/String;)V

    .line 1279
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;

    invoke-virtual {v2, v3}, Lcom/lge/hardware/LGCamera;->setISPDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V

    .line 1280
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "hdr-mode"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :goto_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1288
    :try_start_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "setParameters failed: "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1282
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    const-string v2, "off"

    invoke-virtual {p1, v2}, Lcom/lge/hardware/LGCamera$LGParameters;->setSceneDetectMode(Ljava/lang/String;)V

    .line 1283
    iget-object v2, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/hardware/LGCamera;->setISPDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V

    goto :goto_1
.end method

.method public setVisible(IIZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "visible"    # I
    .param p3, "animation"    # Z

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 913
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mInit:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 947
    :cond_0
    return-void

    .line 917
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 923
    :cond_3
    const/16 v2, 0x64

    .line 924
    .local v2, "tag":I
    iget-object v3, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 925
    .local v1, "quickButton":Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 926
    const/16 v3, 0x64

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    .line 927
    :cond_5
    if-nez p2, :cond_7

    .line 928
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 930
    if-eqz p3, :cond_6

    .line 931
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/lge/camera/controller/QuickButtonController;->setAlphaAnimation(Landroid/view/View;III)V

    goto :goto_0

    .line 933
    :cond_6
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDefaultColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 934
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0

    .line 938
    :cond_7
    if-eqz p3, :cond_8

    .line 939
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-direct {p0, v3, v6, v5, v7}, Lcom/lge/camera/controller/QuickButtonController;->setAlphaAnimation(Landroid/view/View;III)V

    goto :goto_0

    .line 941
    :cond_8
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getQuickButtonDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 942
    invoke-virtual {v1}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public startLightOffAni()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 752
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d00e7

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 753
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d00e8

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 755
    .local v1, "imgView":Landroid/widget/ImageView;
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 756
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 758
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 759
    .local v2, "mAniFocusAlpha":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 760
    .local v0, "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 761
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 762
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 763
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 765
    new-instance v4, Lcom/lge/camera/controller/QuickButtonController$2;

    invoke-direct {v4, p0}, Lcom/lge/camera/controller/QuickButtonController$2;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 782
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 783
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 784
    return-void
.end method

.method public startLightOnAni()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 789
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d00e7

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 790
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d00e8

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 792
    .local v1, "imgView":Landroid/widget/ImageView;
    const v4, 0x7f02042b

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 793
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 795
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 796
    .local v2, "mAniFocusAlpha":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 797
    .local v0, "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 798
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 799
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 800
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 802
    new-instance v4, Lcom/lge/camera/controller/QuickButtonController$3;

    invoke-direct {v4, p0}, Lcom/lge/camera/controller/QuickButtonController$3;-><init>(Lcom/lge/camera/controller/QuickButtonController;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 818
    iget-object v4, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 819
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 820
    return-void
.end method

.method public startRotation(IZ)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iput p1, p0, Lcom/lge/camera/controller/QuickButtonController;->mCurrentDegree:I

    .line 999
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setRotation(IZ)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickButtonController;->removeQuickButtonAll()V

    .line 107
    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 108
    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mButtonAnim:Landroid/view/animation/Animation;

    .line 109
    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController;->mSmartCameraModeCallback:Lcom/lge/camera/listeners/SmartCameraModeCallback;

    .line 110
    return-void
.end method
