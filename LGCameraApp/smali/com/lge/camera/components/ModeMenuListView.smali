.class public Lcom/lge/camera/components/ModeMenuListView;
.super Landroid/widget/ListView;
.source "ModeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/ModeMenuListView$PerformClick;,
        Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;,
        Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLING_DURATION:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private dy:I

.field private isClick:Z

.field private mActivePointerId:I

.field private mDeceleration:F

.field private mFirstVisiblePos:I

.field private mMaximumVelocity:I

.field private mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

.field private mPerformClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

.field private mPointPos:I

.field private mPressedStateDuration:I

.field private mTabRunnable:Ljava/lang/Runnable;

.field private mTapTimeout:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private old_y:F

.field private start:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    .line 40
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->mDeceleration:F

    .line 82
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTouchSlop:I

    .line 83
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->start:F

    .line 84
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->old_y:F

    .line 85
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->dy:I

    .line 86
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    .line 87
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    .line 88
    iput-boolean v0, p0, Lcom/lge/camera/components/ModeMenuListView;->isClick:Z

    .line 89
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 90
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mMaximumVelocity:I

    .line 91
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTapTimeout:I

    .line 92
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mPressedStateDuration:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    .line 269
    new-instance v0, Lcom/lge/camera/components/ModeMenuListView$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ModeMenuListView$3;-><init>(Lcom/lge/camera/components/ModeMenuListView;)V

    iput-object v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTabRunnable:Ljava/lang/Runnable;

    .line 279
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mPerformClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    .line 53
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ModeMenuListView;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    .line 40
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->mDeceleration:F

    .line 82
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTouchSlop:I

    .line 83
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->start:F

    .line 84
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->old_y:F

    .line 85
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->dy:I

    .line 86
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    .line 87
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    .line 88
    iput-boolean v0, p0, Lcom/lge/camera/components/ModeMenuListView;->isClick:Z

    .line 89
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 90
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mMaximumVelocity:I

    .line 91
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTapTimeout:I

    .line 92
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mPressedStateDuration:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    .line 269
    new-instance v0, Lcom/lge/camera/components/ModeMenuListView$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ModeMenuListView$3;-><init>(Lcom/lge/camera/components/ModeMenuListView;)V

    iput-object v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTabRunnable:Ljava/lang/Runnable;

    .line 279
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mPerformClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    .line 58
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ModeMenuListView;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    .line 40
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->mDeceleration:F

    .line 82
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTouchSlop:I

    .line 83
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->start:F

    .line 84
    iput v1, p0, Lcom/lge/camera/components/ModeMenuListView;->old_y:F

    .line 85
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->dy:I

    .line 86
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    .line 87
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    .line 88
    iput-boolean v0, p0, Lcom/lge/camera/components/ModeMenuListView;->isClick:Z

    .line 89
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 90
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mMaximumVelocity:I

    .line 91
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTapTimeout:I

    .line 92
    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mPressedStateDuration:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    .line 269
    new-instance v0, Lcom/lge/camera/components/ModeMenuListView$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ModeMenuListView$3;-><init>(Lcom/lge/camera/components/ModeMenuListView;)V

    iput-object v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mTabRunnable:Ljava/lang/Runnable;

    .line 279
    iput-object v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mPerformClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    .line 63
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ModeMenuListView;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/components/ModeMenuListView;)Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/ModeMenuListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/components/ModeMenuListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/ModeMenuListView;

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/components/ModeMenuListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/ModeMenuListView;

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/components/ModeMenuListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/ModeMenuListView;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/lge/camera/components/ModeMenuListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lge/camera/components/ModeMenuListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/components/ModeMenuListView;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/lge/camera/components/ModeMenuListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 68
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mTouchSlop:I

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mMaximumVelocity:I

    .line 70
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mTapTimeout:I

    .line 71
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mPressedStateDuration:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float v1, v2, v3

    .line 73
    .local v1, "ppi":F
    const v2, 0x43c10b3d

    mul-float/2addr v2, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/lge/camera/components/ModeMenuListView;->mDeceleration:F

    .line 77
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 44
    const-string v0, "CameraApp"

    const-string v1, "onInitializeAccessibilityEvent. return."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 263
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 267
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    .line 98
    .local v26, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    .line 100
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 101
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v28

    packed-switch v28, :pswitch_data_0

    .line 256
    :cond_1
    :goto_0
    :pswitch_0
    const/16 v28, 0x1

    return v28

    .line 107
    :pswitch_1
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    .line 108
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->start:F

    .line 109
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->old_y:F

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getFirstVisiblePosition()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    .line 111
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/ModeMenuListView;->pointToPosition(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mTabRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mTapTimeout:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/components/ModeMenuListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/components/ModeMenuListView;->isClick:Z

    goto :goto_0

    .line 117
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    move/from16 v16, v0

    .line 118
    .local v16, "pointPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 119
    .local v18, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v9, v0

    .line 120
    .local v9, "fy":I
    int-to-float v0, v9

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->start:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mTouchSlop:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_4

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getFirstVisiblePosition()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    move/from16 v28, v0

    sub-int v28, v16, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 123
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 124
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 126
    :cond_2
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/components/ModeMenuListView;->isClick:Z

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getHandler()Landroid/os/Handler;

    move-result-object v28

    if-eqz v28, :cond_3

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getHandler()Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mTabRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;->onTouchScrollStarted()V

    .line 135
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    int-to-float v0, v9

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->old_y:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->dy:I

    .line 136
    int-to-float v0, v9

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->old_y:F

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->dy:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/ModeMenuListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 141
    .end local v9    # "fy":I
    .end local v16    # "pointPos":I
    .end local v18    # "pointerIndex":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    .line 142
    .local v12, "motionPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getFirstVisiblePosition()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 144
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getMeasuredHeight()I

    move-result v11

    .line 146
    .local v11, "listHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 147
    .local v5, "childH":I
    sub-int v28, v11, v5

    div-int/lit8 v23, v28, 0x2

    .line 148
    .local v23, "target":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/ModeMenuListView;->isClick:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 149
    sub-int v28, v11, v5

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpg-float v28, v28, v27

    if-gtz v28, :cond_9

    add-int v28, v11, v5

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v28, v27

    if-ltz v28, :cond_9

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mPerformClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    move-object/from16 v28, v0

    if-nez v28, :cond_5

    .line 152
    new-instance v28, Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/components/ModeMenuListView$PerformClick;-><init>(Lcom/lge/camera/components/ModeMenuListView;Lcom/lge/camera/components/ModeMenuListView$1;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mPerformClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    .line 154
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/components/ModeMenuListView;->mPerformClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    .line 155
    .local v15, "performClick":Lcom/lge/camera/components/ModeMenuListView$PerformClick;
    iput-object v4, v15, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->mChild:Landroid/view/View;

    .line 156
    iput v12, v15, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->mClickMotionPosition:I

    .line 157
    invoke-virtual {v15}, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->rememberWindowAttachCount()V

    .line 159
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 160
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ModeMenuListView;->setPressed(Z)V

    .line 161
    new-instance v28, Lcom/lge/camera/components/ModeMenuListView$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/components/ModeMenuListView$1;-><init>(Lcom/lge/camera/components/ModeMenuListView;Lcom/lge/camera/components/ModeMenuListView$PerformClick;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mPressedStateDuration:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/components/ModeMenuListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    .end local v15    # "performClick":Lcom/lge/camera/components/ModeMenuListView$PerformClick;
    :cond_6
    :goto_1
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/components/ModeMenuListView;->isClick:Z

    .line 221
    .end local v5    # "childH":I
    .end local v11    # "listHeight":I
    .end local v23    # "target":I
    :cond_7
    :goto_2
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->old_y:F

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/VelocityTracker;->recycle()V

    .line 224
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 226
    :cond_8
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    goto/16 :goto_0

    .line 167
    .restart local v5    # "childH":I
    .restart local v11    # "listHeight":I
    .restart local v23    # "target":I
    :cond_9
    sub-int v28, v11, v5

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v28, v27

    if-gtz v28, :cond_a

    add-int v28, v11, v5

    div-int/lit8 v28, v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpg-float v28, v28, v27

    if-gez v28, :cond_6

    .line 169
    :cond_a
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getHandler()Landroid/os/Handler;

    move-result-object v28

    if-eqz v28, :cond_b

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getHandler()Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mTabRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    sub-int v28, v28, v23

    const/16 v29, 0xfa

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/ModeMenuListView;->smoothScrollBy(II)V

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    move/from16 v20, v0

    .line 175
    .local v20, "position":I
    new-instance v28, Lcom/lge/camera/components/ModeMenuListView$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/components/ModeMenuListView$2;-><init>(Lcom/lge/camera/components/ModeMenuListView;I)V

    const-wide/16 v30, 0xfa

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/components/ModeMenuListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 185
    .end local v20    # "position":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getHandler()Landroid/os/Handler;

    move-result-object v28

    if-eqz v28, :cond_d

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/ModeMenuListView;->getHandler()Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mTabRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    :cond_d
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 191
    .local v25, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v10, v0

    .line 193
    .local v10, "initialVelocity":I
    if-ltz v10, :cond_f

    const/16 v22, 0x1

    .line 194
    .local v22, "symbol":I
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 195
    .local v6, "childY":I
    sub-int v28, v6, v23

    rem-int v7, v28, v5

    .line 196
    .local v7, "distance":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v28

    div-int/lit8 v29, v5, 0x4

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e

    .line 197
    if-lez v10, :cond_10

    .line 198
    if-lez v7, :cond_e

    .line 199
    sub-int/2addr v7, v5

    .line 207
    :cond_e
    :goto_4
    div-int/lit8 v28, v10, 0x4

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 208
    .local v24, "tempVeloc":I
    rem-int v28, v24, v5

    sub-int v28, v24, v28

    mul-int v28, v28, v22

    sub-int v21, v7, v28

    .line 209
    .local v21, "scollDest":I
    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mDeceleration:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v8, v0

    .line 210
    .local v8, "duration":I
    const/16 v28, 0xfa

    move/from16 v0, v28

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 212
    const-string v28, "CameraApp"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "scollDest = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", duration = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/lge/camera/components/ModeMenuListView;->smoothScrollBy(II)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;->onTouchScrollEnd()V

    goto/16 :goto_2

    .line 193
    .end local v6    # "childY":I
    .end local v7    # "distance":I
    .end local v8    # "duration":I
    .end local v21    # "scollDest":I
    .end local v22    # "symbol":I
    .end local v24    # "tempVeloc":I
    :cond_f
    const/16 v22, -0x1

    goto/16 :goto_3

    .line 202
    .restart local v6    # "childY":I
    .restart local v7    # "distance":I
    .restart local v22    # "symbol":I
    :cond_10
    if-gez v7, :cond_e

    .line 203
    add-int/2addr v7, v5

    goto :goto_4

    .line 230
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childH":I
    .end local v6    # "childY":I
    .end local v7    # "distance":I
    .end local v10    # "initialVelocity":I
    .end local v11    # "listHeight":I
    .end local v12    # "motionPos":I
    .end local v22    # "symbol":I
    .end local v23    # "target":I
    .end local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ModeMenuListView;->setPressed(Z)V

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 232
    .local v13, "motionView":Landroid/view/View;
    if-eqz v13, :cond_11

    .line 233
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/View;->setPressed(Z)V

    .line 235
    :cond_11
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->old_y:F

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/VelocityTracker;->recycle()V

    .line 238
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 240
    :cond_12
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    goto/16 :goto_0

    .line 244
    .end local v13    # "motionView":Landroid/view/View;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v28

    const v29, 0xff00

    and-int v28, v28, v29

    shr-int/lit8 v19, v28, 0x8

    .line 246
    .local v19, "pointerIndexs":I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 247
    .local v17, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    move/from16 v28, v0

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 248
    if-nez v19, :cond_13

    const/4 v14, 0x1

    .line 249
    .local v14, "newPointerIndex":I
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/ModeMenuListView;->mActivePointerId:I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/ModeMenuListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 248
    .end local v14    # "newPointerIndex":I
    :cond_13
    const/4 v14, 0x0

    goto :goto_5

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setOnModeMenuListListener(Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    .line 49
    return-void
.end method
