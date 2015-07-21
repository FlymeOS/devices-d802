.class public Lorg/codeaurora/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/Performance$TouchInfo;
    }
.end annotation


# static fields
.field public static final ALL_CPUS_PC_DIS:I = 0x101

.field public static final ALL_CPUS_PWR_CLPS_DIS:I = 0x100

.field public static final CPU0_FREQ_NONTURBO_MAX:I = 0x20a

.field public static final CPU0_FREQ_TURBO_MAX:I = 0x2fe

.field public static final CPU0_MAX_FREQ_NONTURBO_MAX:I = 0x150a

.field public static final CPU1_FREQ_NONTURBO_MAX:I = 0x30a

.field public static final CPU1_FREQ_TURBO_MAX:I = 0x3fe

.field public static final CPU1_MAX_FREQ_NONTURBO_MAX:I = 0x160a

.field public static final CPU2_FREQ_NONTURBO_MAX:I = 0x40a

.field public static final CPU2_FREQ_TURBO_MAX:I = 0x4fe

.field public static final CPU2_MAX_FREQ_NONTURBO_MAX:I = 0x170a

.field public static final CPU3_FREQ_NONTURBO_MAX:I = 0x50a

.field public static final CPU3_FREQ_TURBO_MAX:I = 0x5fe

.field public static final CPU3_MAX_FREQ_NONTURBO_MAX:I = 0x180a

.field public static final CPUS_ON_2:I = 0x702

.field public static final CPUS_ON_3:I = 0x703

.field public static final CPUS_ON_LIMIT_1:I = 0x8fe

.field public static final CPUS_ON_LIMIT_2:I = 0x8fd

.field public static final CPUS_ON_LIMIT_3:I = 0x8fc

.field public static final CPUS_ON_MAX:I = 0x7ff

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field public static final SCHED_MIGRATE_COST:I = 0x3f01

.field public static final SCHED_PREFER_IDLE:I = 0x3e01

.field private static final TAG:Ljava/lang/String; = "Perf"

.field private static isFlingEnabled:Z

.field private static mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

.field private static mVelocityTracker:Landroid/view/VelocityTracker;


# instance fields
.field private handle:I

.field private mDivFact:I

.field private mHDragPix:I

.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private mWDragPix:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lorg/codeaurora/Performance;->isFlingEnabled:Z

    .line 144
    sput-object v1, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    .line 145
    sput-object v1, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/Performance;->handle:I

    .line 101
    const/4 v0, 0x6

    iput v0, p0, Lorg/codeaurora/Performance;->mDivFact:I

    .line 103
    iput v1, p0, Lorg/codeaurora/Performance;->mWDragPix:I

    .line 104
    iput v1, p0, Lorg/codeaurora/Performance;->mHDragPix:I

    .line 106
    const/16 v0, 0x96

    iput v0, p0, Lorg/codeaurora/Performance;->mMinVelocity:I

    .line 107
    const/16 v0, 0x5dc0

    iput v0, p0, Lorg/codeaurora/Performance;->mMaxVelocity:I

    .line 43
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lorg/codeaurora/Performance;->isFlingEnabled:Z

    return p0
.end method

.method private native native_cpu_setoptions(II)I
.end method

.method private native native_deinit()V
.end method

.method private native native_perf_lock_acq(II[I)I
.end method

.method private native native_perf_lock_rel(I)I
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lorg/codeaurora/Performance;->native_deinit()V

    .line 270
    return-void
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 2
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "rc":I
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v1, p1, p2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/Performance;->handle:I

    .line 92
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    if-nez v1, :cond_0

    .line 93
    const/4 v0, -0x1

    .line 94
    :cond_0
    return v0
.end method

.method public varargs perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "duration"    # I
    .param p4, "list"    # [I

    .prologue
    .line 151
    const/4 v10, -0x1

    .line 152
    .local v10, "rc":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 153
    .local v3, "actionMasked":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 154
    .local v9, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 155
    .local v8, "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    float-to-int v13, v15

    .line 156
    .local v13, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    float-to-int v11, v15

    .line 158
    .local v11, "x":I
    int-to-float v15, v11

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-int v4, v15

    .line 159
    .local v4, "dx":I
    int-to-float v15, v13

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-int v5, v15

    .line 161
    .local v5, "dy":I
    const/4 v7, 0x0

    .line 163
    .local v7, "isBoostRequired":Z
    packed-switch v3, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    const/4 v15, 0x1

    if-ne v7, v15, :cond_1

    .line 254
    move-object/from16 v0, p0

    iget v15, v0, Lorg/codeaurora/Performance;->handle:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v15, v1, v2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/codeaurora/Performance;->handle:I

    .line 255
    move-object/from16 v0, p0

    iget v15, v0, Lorg/codeaurora/Performance;->handle:I

    if-eqz v15, :cond_1

    .line 256
    const/4 v10, 0x0

    .line 259
    :cond_1
    return v10

    .line 165
    :pswitch_0
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_4

    .line 167
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    sput-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 174
    :goto_1
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_2

    .line 176
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 178
    :cond_2
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-nez v15, :cond_3

    .line 179
    new-instance v15, Lorg/codeaurora/Performance$TouchInfo;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/codeaurora/Performance$TouchInfo;-><init>(Lorg/codeaurora/Performance;)V

    sput-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    .line 181
    :cond_3
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-eqz v15, :cond_0

    .line 183
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->reset()V
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$100(Lorg/codeaurora/Performance$TouchInfo;)V

    .line 185
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setStartXY(II)V
    invoke-static {v15, v4, v5}, Lorg/codeaurora/Performance$TouchInfo;->access$200(Lorg/codeaurora/Performance$TouchInfo;II)V

    .line 187
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mWDragPix:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mHDragPix:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setDragWH(II)V
    invoke-static/range {v15 .. v17}, Lorg/codeaurora/Performance$TouchInfo;->access$300(Lorg/codeaurora/Performance$TouchInfo;II)V

    goto/16 :goto_0

    .line 171
    :cond_4
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 194
    :pswitch_1
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_5

    .line 196
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 199
    :cond_5
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-eqz v15, :cond_0

    .line 200
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurX:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$400(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    sub-int v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 201
    .local v12, "xdiff":I
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurY:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$500(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    sub-int v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 203
    .local v14, "ydiff":I
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->setXY(II)V
    invoke-static {v15, v4, v5}, Lorg/codeaurora/Performance$TouchInfo;->access$600(Lorg/codeaurora/Performance$TouchInfo;II)V

    .line 205
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$700(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    if-gt v12, v15, :cond_6

    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$800(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    if-le v14, v15, :cond_0

    .line 208
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 215
    .end local v12    # "xdiff":I
    .end local v14    # "ydiff":I
    :pswitch_2
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_7

    .line 217
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 219
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mMaxVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 220
    sget-object v15, Lorg/codeaurora/Performance;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v15

    float-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 222
    .local v6, "initialVelocity":I
    move-object/from16 v0, p0

    iget v15, v0, Lorg/codeaurora/Performance;->mMinVelocity:I

    if-le v6, v15, :cond_7

    .line 224
    move/from16 v0, p3

    int-to-float v15, v0

    const/high16 v16, 0x3f800000    # 1.0f

    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codeaurora/Performance;->mMinVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    div-float v16, v16, v17

    mul-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p3, v0

    .line 226
    const/4 v7, 0x1

    .line 227
    goto/16 :goto_0

    .line 230
    .end local v6    # "initialVelocity":I
    :cond_7
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-eqz v15, :cond_0

    .line 231
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurX:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$400(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    sub-int v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 232
    .restart local v12    # "xdiff":I
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mCurY:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$500(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    sub-int v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 234
    .restart local v14    # "ydiff":I
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragW:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$700(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    if-gt v12, v15, :cond_8

    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # getter for: Lorg/codeaurora/Performance$TouchInfo;->mMinDragH:I
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$800(Lorg/codeaurora/Performance$TouchInfo;)I

    move-result v15

    if-le v14, v15, :cond_0

    .line 237
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 244
    .end local v12    # "xdiff":I
    .end local v14    # "ydiff":I
    :pswitch_3
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    if-eqz v15, :cond_0

    .line 245
    sget-object v15, Lorg/codeaurora/Performance;->mTouchInfo:Lorg/codeaurora/Performance$TouchInfo;

    # invokes: Lorg/codeaurora/Performance$TouchInfo;->reset()V
    invoke-static {v15}, Lorg/codeaurora/Performance$TouchInfo;->access$100(Lorg/codeaurora/Performance$TouchInfo;)V

    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public perfLockRelease()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v0}, Lorg/codeaurora/Performance;->native_perf_lock_rel(I)I

    move-result v0

    return v0
.end method
