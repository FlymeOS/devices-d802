.class public Landroid/view/GripSuppressionFilter;
.super Ljava/lang/Object;
.source "GripSuppressionFilter.java"

# interfaces
.implements Landroid/view/IEventFilter;


# static fields
.field private static final DEFAULT_REGION:I = 0x5

.field private static final DEFAULT_SUPPRESSION_WIDTH:F = 0.5f


# instance fields
.field private final MAX_VELOCITY:I

.field private final WIDTH_RATIO:F

.field private act:Landroid/view/IEventFilter$ReturnAct;

.field private gripMask:Ljava/util/BitSet;

.field mContext:Landroid/content/Context;

.field private mGripRegion:I

.field private mRegionInfo:Landroid/view/RegionInfo;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mXdpi:F

.field private needToRepeat:Z

.field private reportIdBits:Ljava/util/BitSet;

.field private validXLeft:I

.field private validXRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    .line 41
    iput v2, p0, Landroid/view/GripSuppressionFilter;->mXdpi:F

    .line 46
    iput-object p1, p0, Landroid/view/GripSuppressionFilter;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_grip_region:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/GripSuppressionFilter;->mGripRegion:I

    .line 50
    iget v0, p0, Landroid/view/GripSuppressionFilter;->mGripRegion:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/GripSuppressionFilter;->mXdpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Landroid/view/GripSuppressionFilter;->mXdpi:F

    .line 52
    iget v0, p0, Landroid/view/GripSuppressionFilter;->mXdpi:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/GripSuppressionFilter;->mGripRegion:I

    .line 55
    :cond_0
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/view/GripSuppressionFilter;->MAX_VELOCITY:I

    .line 56
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroid/view/GripSuppressionFilter;->WIDTH_RATIO:F

    .line 58
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    .line 59
    new-instance v0, Landroid/view/RegionInfo;

    iget v1, p0, Landroid/view/GripSuppressionFilter;->mGripRegion:I

    invoke-direct {v0, v1}, Landroid/view/RegionInfo;-><init>(I)V

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    .line 60
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 61
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    .line 63
    invoke-virtual {p0}, Landroid/view/GripSuppressionFilter;->init()V

    .line 64
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 80
    .local v4, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 82
    .local v0, "action":I
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 83
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 85
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 87
    const/4 v9, 0x5

    if-eq v0, v9, :cond_0

    if-nez v0, :cond_2

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 89
    .local v3, "index":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 90
    .local v2, "id":I
    invoke-static {p1, v3}, Landroid/view/TouchEventFilter;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v9

    float-to-int v8, v9

    .line 92
    .local v8, "x":I
    iget v9, p0, Landroid/view/GripSuppressionFilter;->validXLeft:I

    if-lt v8, v9, :cond_1

    iget v9, p0, Landroid/view/GripSuppressionFilter;->validXRight:I

    if-le v8, v9, :cond_2

    .line 93
    :cond_1
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->set(I)V

    .line 97
    .end local v2    # "id":I
    .end local v3    # "index":I
    .end local v8    # "x":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_7

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 99
    .restart local v2    # "id":I
    invoke-static {p1, v1}, Landroid/view/TouchEventFilter;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v9

    float-to-int v8, v9

    .line 100
    .restart local v8    # "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v9

    float-to-int v6, v9

    .line 101
    .local v6, "widthMajor":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v9

    float-to-int v7, v9

    .line 102
    .local v7, "widthMinor":I
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 104
    .local v5, "velX":I
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 105
    int-to-float v9, v6

    int-to-float v10, v7

    iget v11, p0, Landroid/view/GripSuppressionFilter;->WIDTH_RATIO:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    iget v9, p0, Landroid/view/GripSuppressionFilter;->validXLeft:I

    if-lt v8, v9, :cond_3

    iget v9, p0, Landroid/view/GripSuppressionFilter;->validXRight:I

    if-le v8, v9, :cond_4

    :cond_3
    iget v9, p0, Landroid/view/GripSuppressionFilter;->MAX_VELOCITY:I

    if-le v5, v9, :cond_5

    .line 106
    :cond_4
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->clear(I)V

    .line 110
    :cond_5
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 111
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->set(I)V

    .line 97
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "id":I
    .end local v5    # "velX":I
    .end local v6    # "widthMajor":I
    .end local v7    # "widthMinor":I
    .end local v8    # "x":I
    :cond_7
    const/4 v9, 0x6

    if-eq v0, v9, :cond_8

    if-ne v0, v12, :cond_9

    .line 116
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 117
    .restart local v3    # "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 118
    .restart local v2    # "id":I
    iget-object v9, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v9, v2}, Ljava/util/BitSet;->clear(I)V

    .line 121
    .end local v2    # "id":I
    .end local v3    # "index":I
    :cond_9
    return v12
.end method

.method public getAct()Landroid/view/IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v0, p0, Landroid/view/GripSuppressionFilter;->act:Landroid/view/IEventFilter$ReturnAct;

    .line 69
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GripSuppressionFilter;->needToRepeat:Z

    .line 71
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v0}, Landroid/view/RegionInfo;->getLeftEdgeRegion()I

    move-result v0

    iput v0, p0, Landroid/view/GripSuppressionFilter;->validXLeft:I

    .line 72
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v0}, Landroid/view/RegionInfo;->getRightEdgeRegion()I

    move-result v0

    iput v0, p0, Landroid/view/GripSuppressionFilter;->validXRight:I

    .line 73
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 74
    iget-object v0, p0, Landroid/view/GripSuppressionFilter;->gripMask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 75
    return-void
.end method

.method public needToRepeat()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/view/GripSuppressionFilter;->needToRepeat:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GripSuppressionFilter : region["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/GripSuppressionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
