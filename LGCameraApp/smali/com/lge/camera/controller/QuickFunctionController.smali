.class public Lcom/lge/camera/controller/QuickFunctionController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickFunctionController.java"


# instance fields
.field private alpha:F

.field private blockObject:Ljava/lang/Object;

.field private isForcedMenuDisable:Z

.field private mCheckClickTime:J

.field private mDegree:I

.field private mDegreeSlidingDrawer:I

.field private mMenu:I

.field private mMenuEnabled:[Z

.field private mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mQFLanimation:Landroid/view/animation/Animation;

.field private mSliding:Z

.field private mTargetX:I

.field private mTargetY:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 54
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 55
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    .line 60
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->alpha:F

    .line 62
    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    .line 63
    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;

    .line 191
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionController$4;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    .line 402
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionController$5;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 939
    iput-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z

    .line 1497
    iput-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z

    .line 67
    return-void

    .line 58
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/QuickFunctionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mTargetX:I

    return p1
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/QuickFunctionController;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/camera/controller/QuickFunctionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mTargetY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/QuickFunctionController;II)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/QuickFunctionController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIconSetTag(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/QuickFunctionController;)F
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->alpha:F

    return v0
.end method

.method static synthetic access$1402(Lcom/lge/camera/controller/QuickFunctionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/QuickFunctionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController;->checkOnClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->blockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/QuickFunctionController;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/QuickFunctionController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/QuickFunctionController;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/QuickFunctionController;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->findTargetView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/QuickFunctionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/QuickFunctionController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkOnClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 424
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v2, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isNullSettingView()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSettingViewRemoving()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    const-string v1, "CameraApp"

    const-string v2, "settingview is not null && Removing!!!  ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    const-string v1, "CameraApp"

    const-string v2, "ShutterButton pressed.. ->> block menu click"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPressedShutterButton()Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-eq v2, v1, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 455
    :cond_4
    const-string v1, "CameraApp"

    const-string v2, "Video state is recording."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 461
    goto/16 :goto_0
.end method

.method private checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "strPref"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "subMenuMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 1451
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return v0

    .line 1454
    :cond_1
    if-eqz p1, :cond_0

    .line 1457
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 1458
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findTargetView(Landroid/view/View;)I
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 465
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v4, :cond_1

    .line 466
    const/4 v2, 0x0

    .line 497
    :cond_0
    :goto_0
    return v2

    .line 468
    :cond_1
    const/4 v2, 0x0

    .line 469
    .local v2, "targetIndex":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 470
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 471
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 472
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 474
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0d019a

    if-ne v4, v5, :cond_3

    .line 475
    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 480
    iget v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mTargetX:I

    iget v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mTargetY:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 481
    move v2, v0

    .line 493
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    .line 494
    const/4 v2, 0x0

    goto :goto_0

    .line 485
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v4

    if-eq v5, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v5, v4, :cond_5

    .line 487
    :cond_4
    move v2, v0

    .line 488
    goto :goto_2

    .line 471
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getMenuIconResource(II)I
    .locals 7
    .param p1, "menuIndex"    # I
    .param p2, "iconIndex"    # I

    .prologue
    .line 1113
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v5, :cond_1

    .line 1114
    const/4 v3, 0x0

    .line 1132
    :cond_0
    :goto_0
    return v3

    .line 1116
    :cond_1
    const/4 v3, 0x0

    .line 1118
    .local v3, "menuIconResource":I
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, p1}, Lcom/lge/camera/ControllerFunction;->getQFIndexListItem(I)Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1122
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    .line 1123
    .local v2, "keyIndex":I
    iget-object v5, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v2}, Lcom/lge/camera/ControllerFunction;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 1124
    .local v4, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_0

    .line 1127
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v5

    aget v3, v5, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyIndex":I
    .end local v4    # "pref":Lcom/lge/camera/setting/ListPreference;
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "CameraApp"

    const-string v6, "ArrayIndexOutOfBoundsException:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1130
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initLiveEffectMenus()V
    .locals 4

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00e3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 79
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00ef

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00f0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 83
    .local v1, "slidingDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    new-instance v2, Lcom/lge/camera/controller/QuickFunctionController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/QuickFunctionController$1;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setOnDrawerOpenListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;)V

    .line 104
    new-instance v2, Lcom/lge/camera/controller/QuickFunctionController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/QuickFunctionController$2;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setOnDrawerCloseListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "slidingDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 131
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a019d

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0
.end method

.method private setMenuDisableForInit(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "menu":I
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDim(IZ)V

    goto :goto_0
.end method

.method private setMenuIconSetTag(I)V
    .locals 7
    .param p1, "menuIndex"    # I

    .prologue
    .line 1070
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v4, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1074
    :cond_0
    const/4 v2, 0x0

    .line 1075
    .local v2, "keyIndex":I
    const/4 v3, 0x0

    .line 1078
    .local v3, "pref":Lcom/lge/camera/setting/ListPreference;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->getQFIndexListItem(I)Ljava/lang/String;

    move-result-object v1

    .line 1080
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1081
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v1}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    .line 1082
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v2}, Lcom/lge/camera/ControllerFunction;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1084
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4, v3}, Lcom/lge/camera/components/RotateImageButton;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CameraApp"

    const-string v5, "IndexOutOfBoundsException:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1087
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "menuIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keyIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearSubMenu()V
    .locals 3

    .prologue
    .line 1242
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v1, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00e9

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1247
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1248
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00ed

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1251
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00ee

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1255
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    goto :goto_0
.end method

.method public getMenu()I
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenu:I

    return v0
.end method

.method public getMenuIconResource(I)I
    .locals 9
    .param p1, "menuIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 1136
    iget-boolean v6, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v6, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v5

    .line 1139
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, p1}, Lcom/lge/camera/ControllerFunction;->getQFIndexListItem(I)Ljava/lang/String;

    move-result-object v2

    .line 1140
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1144
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v2}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v3

    .line 1145
    .local v3, "keyIndex":I
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v3}, Lcom/lge/camera/ControllerFunction;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 1146
    .local v4, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_0

    .line 1150
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1152
    .local v1, "iconIndex":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1153
    :try_start_0
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v6

    aget v5, v6, v1

    goto :goto_0

    .line 1155
    :cond_2
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v6

    const/4 v7, 0x0

    aget v5, v6, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "ArrayIndexOutOfBoundsException:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1159
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pref.getValue():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", iconIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMenuView(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v0, :cond_0

    .line 926
    const/4 v0, 0x0

    .line 928
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getQFLMenuEnable()[Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    return-object v0
.end method

.method public getSelectedMenuKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 501
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v3, :cond_0

    .line 502
    const-string v1, ""

    .line 513
    :goto_0
    return-object v1

    .line 504
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 505
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 506
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "key":Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected menu key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1281
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useHideQFLWhenSettingMenuDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    goto :goto_0
.end method

.method public initController()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initLiveEffectMenus()V

    .line 71
    return-void
.end method

.method public initEnabled()V
    .locals 3

    .prologue
    .line 160
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v1, :cond_1

    .line 166
    :cond_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initMenu()V
    .locals 4

    .prologue
    .line 171
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v2, :cond_0

    .line 188
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuHiddenTouchViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d019a

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/controller/QuickFunctionController$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/QuickFunctionController$3;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected isEqualPreferenceAndSubmenu(Ljava/lang/String;)Z
    .locals 7
    .param p1, "strPref"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x12

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1396
    iget-boolean v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v4, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return v2

    .line 1399
    :cond_1
    const-string v4, "key_preview_size_on_device"

    const/4 v5, 0x2

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_scene_mode"

    const/4 v5, 0x3

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_focus"

    const/4 v5, 0x4

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_setting"

    const/4 v5, 0x5

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_setting"

    const/16 v5, 0x10

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_zoom"

    const/4 v5, 0x6

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_brightness"

    const/4 v5, 0x7

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_flash"

    const/16 v5, 0x8

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_flash"

    const/16 v5, 0x9

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_video_duration"

    const/16 v5, 0xa

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_save_direction"

    const/16 v5, 0xb

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_voiceshutter"

    const/16 v5, 0x13

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_uplus_box"

    const/16 v5, 0x18

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_camera_picturesize"

    const/16 v5, 0xc

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_video_audio_recording"

    const/16 v5, 0xd

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_beautyshot"

    const/16 v5, 0xf

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_live_effect"

    invoke-direct {p0, p1, v4, v6}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_camera_shot_mode"

    const/16 v5, 0x11

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_camera_3d_depth"

    const/16 v5, 0x17

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_smart_mode"

    const/16 v5, 0x1a

    invoke-direct {p0, p1, v4, v5}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_video_record_mode"

    invoke-direct {p0, p1, v4, v6}, Lcom/lge/camera/controller/QuickFunctionController;->checkPreferenceAndSubMenu(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 1430
    goto/16 :goto_0

    .line 1433
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_0

    .line 1435
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentMenuKey()Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, "curKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v0}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1438
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 1443
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 1444
    goto/16 :goto_0
.end method

.method public isSliding()Z
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mSliding:Z

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d019a

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    :cond_0
    const/4 v0, 0x0

    .line 1336
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1382
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v0, :cond_0

    .line 1393
    :goto_0
    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1387
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    .line 1389
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 1390
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mQFLanimation:Landroid/view/animation/Animation;

    .line 1392
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1353
    const-string v0, "CameraApp"

    const-string v1, "QFL onPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    iput-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z

    .line 1355
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v0, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkPreviewPanelController()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1367
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1369
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 1370
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1373
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_0

    .line 1377
    :cond_4
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1342
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->quickFunctionControllerRefresh(Z)V

    .line 1347
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    .line 1348
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 1349
    return-void
.end method

.method public qflHide()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1317
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v3, :cond_1

    .line 1329
    :cond_0
    return-void

    .line 1320
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d019a

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1321
    .local v1, "qfl":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1322
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1325
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    .line 1326
    .local v2, "rib":Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "duration"    # I
    .param p3, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1464
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v2, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d019a

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1468
    .local v1, "qflView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1469
    if-nez p3, :cond_2

    .line 1470
    new-instance p3, Lcom/lge/camera/controller/QuickFunctionController$17;

    .end local p3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-direct {p3, p0, p1, v1}, Lcom/lge/camera/controller/QuickFunctionController$17;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZLandroid/view/View;)V

    .line 1487
    .restart local p3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1488
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 1489
    .local v0, "direction":I
    :goto_1
    if-eqz p1, :cond_4

    .line 1490
    invoke-static {v1, v0, p2, p3}, Lcom/lge/camera/util/Util;->slideIn(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    goto :goto_0

    .line 1488
    .end local v0    # "direction":I
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 1492
    .restart local v0    # "direction":I
    :cond_4
    invoke-static {v1, v0, p2, p3}, Lcom/lge/camera/util/Util;->slideOut(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public qflShow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1291
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v3, :cond_1

    .line 1314
    :cond_0
    return-void

    .line 1294
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "on"

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_smart_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1299
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1305
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d019a

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1306
    .local v1, "qfl":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1307
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1310
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    .line 1311
    .local v2, "rib":Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v2, v6}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public quickFunctionControllerRefresh(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1204
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v2, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isLiveEffectDrawerOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPIPFrameDrawerOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1210
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    :cond_4
    if-eqz p1, :cond_5

    .line 1215
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 1219
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 1220
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit()V

    .line 1222
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x5

    .local v1, "size":I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 1223
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1217
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    goto :goto_1

    .line 1225
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_9

    .line 1227
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_setting"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(ZI)V

    .line 1231
    :goto_3
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1233
    const-string v2, "key_voiceshutter"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDisableForInit(Ljava/lang/String;)V

    .line 1235
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    const-string v2, "key_audiozoom"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuDisableForInit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1229
    :cond_9
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    goto :goto_3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->resetQFIndex()V

    .line 154
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initEnabled()V

    .line 155
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->quickFunctionControllerRefresh(Z)V

    goto :goto_0
.end method

.method public restoreLiveEffectSubMenu()V
    .locals 0

    .prologue
    .line 1583
    return-void
.end method

.method public setAllMenuEnabled(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "dimByEnable"    # Z

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController$13;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1015
    :cond_0
    return-void
.end method

.method public setAllMenuIcons()V
    .locals 2

    .prologue
    .line 1037
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$15;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/QuickFunctionController$15;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1067
    :cond_0
    return-void
.end method

.method public setAllMenuSelected(Z)V
    .locals 4
    .param p1, "selected"    # Z

    .prologue
    .line 1178
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v2, :cond_1

    .line 1187
    :cond_0
    return-void

    .line 1181
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1182
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1183
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1184
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 1182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAllMenuSelected(ZI)V
    .locals 4
    .param p1, "selected"    # Z
    .param p2, "exception"    # I

    .prologue
    .line 1190
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v2, :cond_1

    .line 1201
    :cond_0
    return-void

    .line 1193
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1194
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1195
    if-eq v0, p2, :cond_2

    .line 1196
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1197
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 1194
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCheckClickTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 378
    iput-wide p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    .line 379
    return-void
.end method

.method public setCheckToggleTime(I)Z
    .locals 6
    .param p1, "usage"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 399
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 384
    :pswitch_0
    iget-wide v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2ee

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    goto :goto_0

    .line 391
    :pswitch_1
    iget-wide v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/camera/controller/QuickFunctionController;->mCheckClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setLimitationToLiveeffect(Z)V
    .locals 0
    .param p1, "beSet"    # Z

    .prologue
    .line 1586
    return-void
.end method

.method public setMenu(I)V
    .locals 0
    .param p1, "menuIndex"    # I

    .prologue
    .line 932
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenu:I

    .line 933
    return-void
.end method

.method public setMenuDim(IZ)V
    .locals 2
    .param p1, "menuIndex"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1092
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/camera/controller/QuickFunctionController$16;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZI)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMenuEnableForDualRecording(Z)V
    .locals 0
    .param p1, "beSet"    # Z

    .prologue
    .line 1589
    return-void
.end method

.method public setMenuEnabled(IZ)V
    .locals 2
    .param p1, "menuIndex"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v0, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuEnabled:[Z

    aput-boolean p2, v0, p1

    .line 953
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/camera/controller/QuickFunctionController$12;-><init>(Lcom/lge/camera/controller/QuickFunctionController;ZI)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMenuIcon(II)V
    .locals 2
    .param p1, "menuIndex"    # I
    .param p2, "iconIndex"    # I

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/QuickFunctionController$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController$14;-><init>(Lcom/lge/camera/controller/QuickFunctionController;II)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMenuSelected(IZ)V
    .locals 4
    .param p1, "menuIndex"    # I
    .param p2, "selected"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1166
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 1170
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p0, v3, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(ZI)V

    .line 1172
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 1173
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public setMmsLimit()V
    .locals 4

    .prologue
    .line 1259
    iget-boolean v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-nez v1, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 1265
    .local v0, "videoSizePrefIndex":I
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1266
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimitUiQfl(Z)V

    goto :goto_0

    .line 1268
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "preview size setting is not in QFL"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMmsLimit(Z)V
    .locals 0
    .param p1, "mmsVideo"    # Z

    .prologue
    .line 1577
    return-void
.end method

.method public setMmsLimitUiQfl(Z)V
    .locals 0
    .param p1, "mmsVideo"    # Z

    .prologue
    .line 1580
    return-void
.end method

.method public setQuickFunctionMenuForcedDisable(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 942
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->isForcedMenuDisable:Z

    .line 943
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1274
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflShow()V

    .line 1276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    .line 1278
    :cond_0
    return-void
.end method

.method public slideQFLIn(Z)V
    .locals 5
    .param p1, "useAnimation"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1504
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1512
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    .line 1514
    if-nez p1, :cond_3

    .line 1515
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflShow()V

    .line 1516
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 1517
    .local v1, "menu":Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setClickable(Z)V

    .line 1518
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1521
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "menu":Lcom/lge/camera/components/RotateImageButton;
    :cond_3
    const/16 v2, 0xc8

    new-instance v3, Lcom/lge/camera/controller/QuickFunctionController$18;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/QuickFunctionController$18;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {p0, v4, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public slideQFLOut(Z)V
    .locals 5
    .param p1, "useAnimation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1543
    iget-boolean v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1574
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    if-nez p1, :cond_3

    .line 1550
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionController;->mMenuViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 1551
    .local v1, "menu":Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setClickable(Z)V

    .line 1552
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1554
    .end local v1    # "menu":Lcom/lge/camera/components/RotateImageButton;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    goto :goto_0

    .line 1556
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    const/16 v2, 0xc8

    new-instance v3, Lcom/lge/camera/controller/QuickFunctionController$19;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/QuickFunctionController$19;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {p0, v4, v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public startAudiozoomMenuRotation(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 915
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    const/4 v0, 0x1

    .line 920
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    goto :goto_0
.end method

.method public startLiveEffectDrawerSubMenuRotation(I)V
    .locals 26
    .param p1, "degree"    # I

    .prologue
    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigurationChanging()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0d00f0

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0d00f4

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 628
    .local v12, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 629
    .local v13, "numPIPMask":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v7, "lArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/camera/components/RotateLayout;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v13, :cond_2

    .line 631
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 634
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 635
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 636
    .local v2, "anim":Landroid/view/animation/Animation;
    new-instance v23, Lcom/lge/camera/controller/QuickFunctionController$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$8;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 646
    const-wide/16 v24, 0x1f4

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 648
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v13, :cond_3

    .line 649
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 648
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 653
    .end local v2    # "anim":Landroid/view/animation/Animation;
    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_4

    .line 654
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 653
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 657
    :cond_4
    const/16 v20, 0x0

    .line 659
    .local v20, "sv_frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0d00f3

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20    # "sv_frameLayout":Landroid/widget/FrameLayout;
    check-cast v20, Landroid/widget/FrameLayout;

    .line 661
    .restart local v20    # "sv_frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 663
    .local v14, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const v23, 0x7f090278

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v8

    .line 664
    .local v8, "leftMargin":I
    const v23, 0x7f090279

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v11

    .line 666
    .local v11, "leftMargin_portrait":I
    const v23, 0x7f09027d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v21

    .line 667
    .local v21, "topMargin_land":I
    const v23, 0x7f09027e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v22

    .line 669
    .local v22, "topMargin_portrait_land":I
    const v23, 0x7f090287

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v3

    .line 670
    .local v3, "bottomMarginRotate":I
    const v23, 0x7f090288

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v4

    .line 671
    .local v4, "bottomMarginRotate_portrait":I
    const v23, 0x7f090285

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v9

    .line 672
    .local v9, "leftMarginRotate":I
    const v23, 0x7f090286

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v10

    .line 674
    .local v10, "leftMarginRotate_portrait":I
    const v23, 0x7f090281

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v18

    .line 675
    .local v18, "rlWidth":I
    const v23, 0x7f090283

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v19

    .line 676
    .local v19, "rlWidth_portrait":I
    const v23, 0x7f090282

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v16

    .line 677
    .local v16, "rlHeight":I
    const v23, 0x7f090284

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v17

    .line 681
    .local v17, "rlHeight_portrait":I
    move/from16 v5, p1

    .line 682
    .local v5, "convDegree":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-nez v23, :cond_5

    .line 683
    add-int/lit8 v23, p1, 0x5a

    move/from16 v0, v23

    rem-int/lit16 v5, v0, 0x168

    .line 686
    :cond_5
    sparse-switch v5, :sswitch_data_0

    .line 743
    :cond_6
    if-eqz v20, :cond_7

    .line 744
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_a

    .line 748
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 749
    .restart local v2    # "anim":Landroid/view/animation/Animation;
    new-instance v23, Lcom/lge/camera/controller/QuickFunctionController$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$9;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 759
    const-wide/16 v24, 0x1f4

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 760
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_a

    .line 761
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 760
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 689
    .end local v2    # "anim":Landroid/view/animation/Animation;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 690
    move/from16 v0, v21

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 691
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v13, :cond_6

    .line 692
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 694
    .local v15, "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 695
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 696
    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 697
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 698
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 701
    .end local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iput v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 702
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_6

    .line 703
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 705
    .restart local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 706
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 707
    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 708
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 709
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 715
    .end local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 716
    move/from16 v0, v22

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 717
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v13, :cond_6

    .line 718
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 720
    .restart local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 721
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 722
    move/from16 v0, v19

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 723
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 724
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 727
    .end local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    iput v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 728
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v13, :cond_6

    .line 729
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 731
    .restart local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 732
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 733
    move/from16 v0, v19

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 734
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 735
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 764
    .end local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    goto/16 :goto_0

    .line 686
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public startPIPFrameSubMenuRotation(I)V
    .locals 26
    .param p1, "degree"    # I

    .prologue
    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigurationChanging()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0d0123

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0d0127

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 776
    .local v12, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 777
    .local v13, "numPIPMask":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v7, "lArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/camera/components/RotateLayout;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v13, :cond_2

    .line 779
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 782
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 783
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 784
    .local v2, "anim":Landroid/view/animation/Animation;
    new-instance v23, Lcom/lge/camera/controller/QuickFunctionController$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$10;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 794
    const-wide/16 v24, 0x1f4

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 796
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v13, :cond_3

    .line 797
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 796
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 800
    .end local v2    # "anim":Landroid/view/animation/Animation;
    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_4

    .line 801
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 800
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 804
    :cond_4
    const/16 v20, 0x0

    .line 806
    .local v20, "sv_frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    const v24, 0x7f0d0126

    invoke-interface/range {v23 .. v24}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20    # "sv_frameLayout":Landroid/widget/FrameLayout;
    check-cast v20, Landroid/widget/FrameLayout;

    .line 808
    .restart local v20    # "sv_frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 810
    .local v14, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const v23, 0x7f090261

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v8

    .line 811
    .local v8, "leftMargin":I
    const v23, 0x7f090262

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v11

    .line 813
    .local v11, "leftMargin_portrait":I
    const v23, 0x7f090266

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v21

    .line 814
    .local v21, "topMargin_land":I
    const v23, 0x7f090267

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v22

    .line 816
    .local v22, "topMargin_portrait_land":I
    const v23, 0x7f090270

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v3

    .line 817
    .local v3, "bottomMarginRotate":I
    const v23, 0x7f090271

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v4

    .line 818
    .local v4, "bottomMarginRotate_portrait":I
    const v23, 0x7f09026e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v9

    .line 819
    .local v9, "leftMarginRotate":I
    const v23, 0x7f09026f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v10

    .line 821
    .local v10, "leftMarginRotate_portrait":I
    const v23, 0x7f09026a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v18

    .line 822
    .local v18, "rlWidth":I
    const v23, 0x7f09026c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v19

    .line 823
    .local v19, "rlWidth_portrait":I
    const v23, 0x7f09026b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v16

    .line 824
    .local v16, "rlHeight":I
    const v23, 0x7f09026d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v17

    .line 828
    .local v17, "rlHeight_portrait":I
    move/from16 v5, p1

    .line 829
    .local v5, "convDegree":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-nez v23, :cond_5

    .line 830
    add-int/lit8 v23, p1, 0x5a

    move/from16 v0, v23

    rem-int/lit16 v5, v0, 0x168

    .line 833
    :cond_5
    sparse-switch v5, :sswitch_data_0

    .line 890
    :cond_6
    if-eqz v20, :cond_7

    .line 891
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_a

    .line 895
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 896
    .restart local v2    # "anim":Landroid/view/animation/Animation;
    new-instance v23, Lcom/lge/camera/controller/QuickFunctionController$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController$11;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 906
    const-wide/16 v24, 0x1f4

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 907
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_a

    .line 908
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 907
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 836
    .end local v2    # "anim":Landroid/view/animation/Animation;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 837
    move/from16 v0, v21

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 838
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v13, :cond_6

    .line 839
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 841
    .local v15, "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 842
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 843
    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 844
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 845
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 848
    .end local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iput v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 849
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_6

    .line 850
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 852
    .restart local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 853
    iput v9, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 854
    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 855
    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 856
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 862
    .end local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 863
    move/from16 v0, v22

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 864
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v13, :cond_6

    .line 865
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 867
    .restart local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 868
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 869
    move/from16 v0, v19

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 870
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 871
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 874
    .end local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    iput v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 875
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v13, :cond_6

    .line 876
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual/range {v23 .. v23}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 878
    .restart local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 879
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 880
    move/from16 v0, v19

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 881
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 882
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lge/camera/components/RotateLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 911
    .end local v15    # "params2":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/QuickFunctionController;->mDegreeSlidingDrawer:I

    goto/16 :goto_0

    .line 833
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public startSubMenuRotation(I)V
    .locals 14
    .param p1, "degree"    # I

    .prologue
    .line 517
    iget-boolean v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mInit:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0d00ea

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    if-ne v12, p1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0d00ea

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateLayout;

    .line 523
    .local v6, "rl":Lcom/lge/camera/components/RotateLayout;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v0, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 524
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v12, Lcom/lge/camera/controller/QuickFunctionController$6;

    invoke-direct {v12, p0}, Lcom/lge/camera/controller/QuickFunctionController$6;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 534
    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 535
    invoke-virtual {v6, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 536
    const/4 v12, -0x1

    iput v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    .line 538
    iget-object v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0d00ec

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/HorizontalScrollView;

    .line 541
    .local v7, "s1":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v6, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 543
    invoke-virtual {v6}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 544
    .local v5, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 547
    .local v10, "scroll_face_params":Landroid/view/ViewGroup$MarginLayoutParams;
    move v1, p1

    .line 548
    .local v1, "convDegree":I
    iget-object v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v12

    if-nez v12, :cond_2

    .line 549
    add-int/lit8 v12, p1, 0x5a

    rem-int/lit16 v1, v12, 0x168

    .line 552
    :cond_2
    const v12, 0x7f0901df

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v2

    .line 553
    .local v2, "leftMargin":I
    const v12, 0x7f0901e0

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v11

    .line 554
    .local v11, "topMargin":I
    const v12, 0x7f0901dd

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v4

    .line 555
    .local v4, "menuWidth":I
    const v12, 0x7f0901de

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v3

    .line 556
    .local v3, "menuHeight":I
    const v12, 0x7f0901e2

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v8

    .line 557
    .local v8, "scrollWidth":I
    const v12, 0x7f0901e3

    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/QuickFunctionController;->getPixelFromDimens(I)I

    move-result v9

    .line 559
    .local v9, "scrollWidthPort":I
    sparse-switch v1, :sswitch_data_0

    .line 597
    :goto_1
    invoke-virtual {v6, v5}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    invoke-virtual {v7, v10}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v0, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 602
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    new-instance v12, Lcom/lge/camera/controller/QuickFunctionController$7;

    invoke-direct {v12, p0}, Lcom/lge/camera/controller/QuickFunctionController$7;-><init>(Lcom/lge/camera/controller/QuickFunctionController;)V

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 612
    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 613
    invoke-virtual {v6, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 615
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionController;->mDegree:I

    goto/16 :goto_0

    .line 562
    :sswitch_0
    iget-object v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 563
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 564
    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 565
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 566
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 567
    iput v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 569
    :cond_3
    sget v12, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    sub-int/2addr v12, v3

    sub-int/2addr v12, v11

    iput v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 570
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 571
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 572
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 573
    iput v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 578
    :sswitch_1
    iget-object v12, p0, Lcom/lge/camera/controller/QuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 579
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 580
    const/4 v12, 0x0

    iput v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 581
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 582
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 583
    iput v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 585
    :cond_4
    const/4 v12, 0x0

    iput v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 586
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 587
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 588
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 589
    iput v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method
