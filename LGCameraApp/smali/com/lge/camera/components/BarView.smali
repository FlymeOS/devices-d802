.class public abstract Lcom/lge/camera/components/BarView;
.super Landroid/widget/RelativeLayout;
.source "BarView.java"


# static fields
.field public static CURSOR_MIN_STEP:I = 0x0

.field public static CURSOR_ONE_STEP_MINUS:I = 0x0

.field public static final CURSOR_ONE_STEP_MINUS_BUTTON:I = -0x1

.field public static CURSOR_ONE_STEP_PLUS:I = 0x0

.field public static final CURSOR_ONE_STEP_PLUS_BUTTON:I = 0x1

.field public static final NONE_SETTING_KEY:Ljava/lang/String; = "none"

.field public static final TYPE_3D_DEPTH_BAR:I = 0x3

.field public static final TYPE_BEAUTYSHOT_BAR:I = 0x2

.field public static final TYPE_BRIGHTNESS_BAR:I = 0x1

.field public static final TYPE_MANUAL_FOCUS_BAR:I = 0x8

.field public static final TYPE_SETTING_3D_DEPTH_BAR:I = 0x7

.field public static final TYPE_SETTING_BEAUTYSHOT_BAR:I = 0x6

.field public static final TYPE_SETTING_BRIGHTNESS_BAR:I = 0x5

.field public static final TYPE_SETTING_BRIGHTNESS_BAR_EXPAND:I = 0x9

.field public static final TYPE_SETTING_ZOOM_BAR:I = 0x4

.field public static final TYPE_ZOOM_BAR:I


# instance fields
.field protected CURSOR_HEIGHT:F

.field protected CURSOR_HEIGHT_PORT:F

.field protected CURSOR_POS_HEIGHT:I

.field protected CURSOR_POS_HEIGHT_PORT:I

.field protected CURSOR_POS_WIDTH:I

.field protected CURSOR_WIDTH:F

.field protected LONG_PRESS_EVENT_DELAY:J

.field protected LONG_PRESS_JUDGE_TIMEOUT:J

.field protected MAX_CURSOR_POS:I

.field protected MAX_CURSOR_POS_PORT:I

.field protected MIN_CURSOR_POS:I

.field protected RELEASE_EXPAND_BOTTOM:I

.field protected RELEASE_EXPAND_LEFT:I

.field protected RELEASE_EXPAND_RIGHT:I

.field protected RELEASE_EXPAND_TOP:I

.field protected barSettingCommand:Ljava/lang/String;

.field protected barSettingKey:Ljava/lang/String;

.field protected cursorBGResId:I

.field protected cursorResId:I

.field protected mBarAction:Lcom/lge/camera/components/BarAction;

.field public mBarType:I

.field protected mButtonCheckTimer:Ljava/util/Timer;

.field protected mCursorMaxStep:I

.field protected mInitial:Z

.field public mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

.field public mOnLineTouchListener:Landroid/view/View$OnTouchListener;

.field protected mValue:I

.field protected minusButtonResId:I

.field protected minusButtonViewResId:I

.field protected plusButtonResId:I

.field protected plusButtonViewResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/components/BarView;->CURSOR_MIN_STEP:I

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    .line 54
    const/4 v0, 0x1

    sput v0, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_PLUS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    .line 48
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    .line 49
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    .line 51
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 69
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 70
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 71
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 72
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 74
    const v0, 0x7f0d002e

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    .line 75
    const v0, 0x7f0d002c

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    .line 76
    const v0, 0x7f0d0030

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    .line 77
    const v0, 0x7f0d002f

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    .line 78
    const v0, 0x7f0d002a

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    .line 79
    const v0, 0x7f0d0029

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    .line 82
    const-string v0, "key_brightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    .line 83
    const-string v0, "com.lge.camera.command.setting.SetBrightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    .line 87
    iput-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 458
    new-instance v0, Lcom/lge/camera/components/BarView$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$5;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 535
    new-instance v0, Lcom/lge/camera/components/BarView$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$6;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    .line 48
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    .line 49
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    .line 51
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 69
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 70
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 71
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 72
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 74
    const v0, 0x7f0d002e

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    .line 75
    const v0, 0x7f0d002c

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    .line 76
    const v0, 0x7f0d0030

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    .line 77
    const v0, 0x7f0d002f

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    .line 78
    const v0, 0x7f0d002a

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    .line 79
    const v0, 0x7f0d0029

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    .line 82
    const-string v0, "key_brightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    .line 83
    const-string v0, "com.lge.camera.command.setting.SetBrightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    .line 87
    iput-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 458
    new-instance v0, Lcom/lge/camera/components/BarView$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$5;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 535
    new-instance v0, Lcom/lge/camera/components/BarView$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$6;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    .line 48
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    .line 49
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    .line 51
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 69
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    .line 70
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    .line 71
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    .line 72
    iput v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    .line 74
    const v0, 0x7f0d002e

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    .line 75
    const v0, 0x7f0d002c

    iput v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    .line 76
    const v0, 0x7f0d0030

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    .line 77
    const v0, 0x7f0d002f

    iput v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    .line 78
    const v0, 0x7f0d002a

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    .line 79
    const v0, 0x7f0d0029

    iput v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    .line 82
    const-string v0, "key_brightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    .line 83
    const-string v0, "com.lge.camera.command.setting.SetBrightness"

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    .line 87
    iput-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 458
    new-instance v0, Lcom/lge/camera/components/BarView$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$5;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 535
    new-instance v0, Lcom/lge/camera/components/BarView$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BarView$6;-><init>(Lcom/lge/camera/components/BarView;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 101
    return-void
.end method


# virtual methods
.method protected convertDegree(I)I
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method protected convertLayoutDegree(I)I
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->convertLayoutDegree(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method protected disallowTouchInParentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 602
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 190
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/BarView;->disallowTouchInParentView(Landroid/view/View;)V

    .line 191
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract getBarLayout()Lcom/lge/camera/components/RotateLayout;
.end method

.method protected abstract getBarParentLayout()Landroid/view/View;
.end method

.method public abstract getBarSettingValue()V
.end method

.method public getCursorMaxStep()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    return v0
.end method

.method public getCursorValue()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/lge/camera/components/BarView;->mValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/lge/camera/components/BarView;->mValue:I

    return v0
.end method

.method public initBar(Lcom/lge/camera/components/BarAction;)V
    .locals 4
    .param p1, "barAction"    # Lcom/lge/camera/components/BarAction;

    .prologue
    const/4 v3, 0x0

    .line 148
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->setVisibility(I)V

    .line 149
    iput-object p1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 150
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->setLayoutDimension()V

    .line 151
    iget v1, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getBarSettingValue()V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    .line 155
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1}, Lcom/lge/camera/components/BarAction;->getDegreeInBarAction()I

    move-result v0

    .line 156
    .local v0, "degree":I
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget v2, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    invoke-interface {v1, v2, v0, v3}, Lcom/lge/camera/components/BarAction;->setDegreeInBarAction(IIZ)V

    .line 157
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget v2, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    invoke-interface {v1, v2, v0, v3}, Lcom/lge/camera/components/BarAction;->setDegreeInBarAction(IIZ)V

    .line 158
    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/components/BarView;->startRotation(IZ)V

    .line 159
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->updateAllBars()V

    .line 160
    return-void
.end method

.method public isBarVisible()Z
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualsDegree(II)Z
    .locals 1
    .param p1, "current"    # I
    .param p2, "input"    # I

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 613
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getOrientation()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 620
    :cond_1
    :goto_0
    return v0

    .line 616
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->getOrientation()I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1}, Lcom/lge/camera/components/BarAction;->getOrientation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method protected isPlusButton(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_LEFT:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_RIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_TOP:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lge/camera/components/BarView;->RELEASE_EXPAND_BOTTOM:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 595
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onButtonTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 543
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v4

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v0}, Lcom/lge/camera/components/BarAction;->isSettingViewRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 582
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    move v4, v2

    .line 583
    goto :goto_0

    .line 553
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->disallowTouchInParentView(Landroid/view/View;)V

    .line 554
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 555
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/BarView;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 556
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 557
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    goto :goto_1

    .line 560
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 561
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->isPlusButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    move v6, v4

    .line 562
    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/components/BarView;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    goto :goto_1

    .line 564
    :cond_4
    const/4 v7, -0x1

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/lge/camera/components/BarView;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    goto :goto_1

    .line 568
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/BarView;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 569
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 570
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    goto :goto_1

    .line 576
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 577
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 578
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    .line 579
    invoke-virtual {p0, v4, v4, v2, v2}, Lcom/lge/camera/components/BarView;->updateBar(IZZZ)V

    goto :goto_1

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshBar()V
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/lge/camera/components/BarView;->mValue:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->setCursor(I)V

    .line 380
    return-void
.end method

.method public abstract releaseBar()V
.end method

.method public resetCursor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->setCursor(I)V

    .line 447
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->updateAllBars()V

    .line 448
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v0}, Lcom/lge/camera/components/BarAction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->setDisplayTimeout()V

    .line 371
    :cond_0
    return-void
.end method

.method public resetValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->setCursorValue(I)V

    .line 452
    return-void
.end method

.method public setBarResources(IIIIIII)V
    .locals 0
    .param p1, "barType"    # I
    .param p2, "cursor"    # I
    .param p3, "cursorBG"    # I
    .param p4, "minus"    # I
    .param p5, "minusView"    # I
    .param p6, "plus"    # I
    .param p7, "plusView"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    .line 132
    iput p2, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    .line 133
    iput p3, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    .line 135
    iput p4, p0, Lcom/lge/camera/components/BarView;->minusButtonResId:I

    .line 136
    iput p5, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    .line 138
    iput p6, p0, Lcom/lge/camera/components/BarView;->plusButtonResId:I

    .line 139
    iput p7, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    .line 140
    return-void
.end method

.method public setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setBarSettingValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 624
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/lge/camera/components/BarAction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 627
    :cond_0
    return-void
.end method

.method public setBarValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/BarView;->setCursorValue(I)V

    .line 375
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->refreshBar()V

    .line 376
    return-void
.end method

.method public setBarValueInitialization(JJIIII)V
    .locals 1
    .param p1, "longPressTime"    # J
    .param p3, "longPressDelay"    # J
    .param p5, "maxStep"    # I
    .param p6, "minStep"    # I
    .param p7, "onStepMinus"    # I
    .param p8, "oneStepPlus"    # I

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    .line 121
    iput-wide p3, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    .line 122
    iput p5, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 123
    sput p6, Lcom/lge/camera/components/BarView;->CURSOR_MIN_STEP:I

    .line 124
    sput p7, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_MINUS:I

    .line 125
    sput p8, Lcom/lge/camera/components/BarView;->CURSOR_ONE_STEP_PLUS:I

    .line 126
    return-void
.end method

.method public setCursor(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    new-instance v1, Lcom/lge/camera/components/BarView$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/components/BarView$4;-><init>(Lcom/lge/camera/components/BarView;I)V

    invoke-interface {v0, v1}, Lcom/lge/camera/components/BarAction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setCursorMaxStep(I)V
    .locals 0
    .param p1, "maxStep"    # I

    .prologue
    .line 605
    iput p1, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 606
    return-void
.end method

.method public setCursorValue(I)V
    .locals 0
    .param p1, "mValue"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/lge/camera/components/BarView;->mValue:I

    .line 97
    return-void
.end method

.method public setDisplayTimeout()V
    .locals 3

    .prologue
    .line 356
    iget-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 360
    :cond_0
    iget v1, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/16 v0, 0x1388

    .line 363
    .local v0, "duration":I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const-string v2, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/components/BarAction;->doCommandDelayed(Ljava/lang/String;I)V

    goto :goto_0

    .line 360
    .end local v0    # "duration":I
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_1
.end method

.method public abstract setLayoutDimension()V
.end method

.method public setListener(Z)V
    .locals 3
    .param p1, "set"    # Z

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 166
    :cond_0
    if-eqz p1, :cond_2

    .line 167
    iget v0, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    if-ne v0, v2, :cond_1

    .line 168
    iget v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    :cond_1
    iget v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 173
    :cond_2
    iget v0, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    if-ne v0, v2, :cond_3

    .line 174
    iget v0, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    iget v0, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    :cond_3
    iget v0, p0, Lcom/lge/camera/components/BarView;->cursorBGResId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public showControl(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-boolean v1, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 336
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BarView-showControl:mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/components/BarView;->mValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-eqz p1, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->setDisplayTimeout()V

    .line 348
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->setVisibility(I)V

    goto :goto_0

    .line 340
    :cond_2
    iget v1, p0, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 341
    iget v1, p0, Lcom/lge/camera/components/BarView;->plusButtonViewResId:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 342
    iget v1, p0, Lcom/lge/camera/components/BarView;->minusButtonViewResId:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 343
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    .line 344
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->releaseBar()V

    goto :goto_1

    .line 348
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public startRotation(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    const v4, 0x7f0900c1

    const/4 v5, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getBarLayout()Lcom/lge/camera/components/RotateLayout;

    move-result-object v2

    .line 647
    .local v2, "rl":Lcom/lge/camera/components/RotateLayout;
    if-nez v2, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 652
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 653
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 655
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->getBarParentLayout()Landroid/view/View;

    move-result-object v1

    .line 657
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 659
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, p1, v5}, Lcom/lge/camera/components/BarView;->isEqualsDegree(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 660
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 661
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 662
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v4, 0x7f0900be

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 664
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 683
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 665
    :cond_3
    const/16 v3, 0x5a

    invoke-virtual {p0, p1, v3}, Lcom/lge/camera/components/BarView;->isEqualsDegree(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 666
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 668
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 669
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 670
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 671
    :cond_4
    const/16 v3, 0xb4

    invoke-virtual {p0, p1, v3}, Lcom/lge/camera/components/BarView;->isEqualsDegree(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 672
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 673
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 674
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 675
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v4, 0x7f0900bd

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 676
    :cond_5
    const/16 v3, 0x10e

    invoke-virtual {p0, p1, v3}, Lcom/lge/camera/components/BarView;->isEqualsDegree(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 677
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 678
    iget-object v3, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v3, v4}, Lcom/lge/camera/components/BarAction;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 680
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 681
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V
    .locals 6
    .param p1, "t"    # Ljava/util/TimerTask;
    .param p2, "judge"    # J
    .param p4, "interval"    # J
    .param p6, "v"    # Landroid/view/View;

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 314
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :cond_2
    new-instance v0, Ljava/util/Timer;

    const-string v1, "timer_long_press_check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    .line 318
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public stopTimerTask()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 326
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BarView;->mButtonCheckTimer:Ljava/util/Timer;

    .line 329
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iput-object v1, p0, Lcom/lge/camera/components/BarView;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 113
    iput-object v1, p0, Lcom/lge/camera/components/BarView;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BarView;->setListener(Z)V

    .line 115
    iput-object v1, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    .line 116
    return-void
.end method

.method public updateAllBars()V
    .locals 3

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget v1, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    iget v2, p0, Lcom/lge/camera/components/BarView;->mValue:I

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/components/BarAction;->updateAllBars(II)V

    goto :goto_0
.end method

.method public updateBar(IZZZ)V
    .locals 4
    .param p1, "step"    # I
    .param p2, "others"    # Z
    .param p3, "isLongTouch"    # Z
    .param p4, "actionEnd"    # Z

    .prologue
    .line 195
    iget v0, p0, Lcom/lge/camera/components/BarView;->mValue:I

    .line 196
    .local v0, "lValue":I
    iget-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-nez v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    add-int v1, v0, p1

    .line 205
    .local v1, "updatedValue":I
    iget v2, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    if-le v1, v2, :cond_2

    .line 206
    iget v1, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 209
    :cond_2
    if-gez v1, :cond_3

    .line 210
    const/4 v1, 0x0

    .line 213
    :cond_3
    if-eq v1, v0, :cond_0

    .line 215
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->setCursorValue(I)V

    .line 217
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    new-instance v3, Lcom/lge/camera/components/BarView$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/components/BarView$1;-><init>(Lcom/lge/camera/components/BarView;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    if-eqz p3, :cond_5

    .line 224
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/components/BarView;->setBarSettingValue(Ljava/lang/String;I)V

    .line 225
    iget v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 226
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->doCommandNoneParameter(Ljava/lang/String;)V

    .line 244
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    .line 245
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->updateAllBars()V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    new-instance v3, Lcom/lge/camera/components/BarView$2;

    invoke-direct {v3, p0}, Lcom/lge/camera/components/BarView$2;-><init>(Lcom/lge/camera/components/BarView;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/components/BarAction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "step"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "others"    # Z
    .param p5, "isLongTouch"    # Z
    .param p6, "actionEnd"    # Z

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/lge/camera/components/BarView;->updateBar(IZZZ)V

    .line 299
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 300
    new-instance v0, Lcom/lge/camera/components/BarView$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/components/BarView$3;-><init>(Lcom/lge/camera/components/BarView;Landroid/view/View;ILandroid/view/MotionEvent;ZZ)V

    iget-wide v4, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_JUDGE_TIMEOUT:J

    iget-wide v6, p0, Lcom/lge/camera/components/BarView;->LONG_PRESS_EVENT_DELAY:J

    move-object v2, p0

    move-object v3, v0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/lge/camera/components/BarView;->startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V

    goto :goto_0
.end method

.method public updateBarWithValue(IZ)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "actionEnd"    # Z

    .prologue
    .line 250
    iget v1, p0, Lcom/lge/camera/components/BarView;->mValue:I

    .line 251
    .local v1, "lValue":I
    iget-boolean v2, p0, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v2}, Lcom/lge/camera/components/BarAction;->isPreviewing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    if-eqz p2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/components/BarView;->setBarSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 260
    :cond_2
    move v1, p1

    .line 262
    iget v2, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    if-le v1, v2, :cond_3

    .line 263
    iget v1, p0, Lcom/lge/camera/components/BarView;->mCursorMaxStep:I

    .line 265
    :cond_3
    sget v2, Lcom/lge/camera/components/BarView;->CURSOR_MIN_STEP:I

    if-ge v1, v2, :cond_4

    .line 266
    sget v1, Lcom/lge/camera/components/BarView;->CURSOR_MIN_STEP:I

    .line 269
    :cond_4
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->setCursor(I)V

    .line 270
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BarView;->setCursorValue(I)V

    .line 272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "mValue"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    iget v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    if-nez v1, :cond_5

    .line 277
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->barSettingKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/components/BarView;->setBarSettingValue(Ljava/lang/String;I)V

    .line 280
    :cond_5
    iget v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/lge/camera/components/BarView;->mBarType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 282
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/components/BarAction;->doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    .line 288
    invoke-virtual {p0}, Lcom/lge/camera/components/BarView;->updateAllBars()V

    goto :goto_0

    .line 284
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    iget-object v3, p0, Lcom/lge/camera/components/BarView;->barSettingCommand:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lcom/lge/camera/components/BarAction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
