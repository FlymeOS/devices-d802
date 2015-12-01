.class public Lcom/lge/camera/components/RotationInfo;
.super Ljava/lang/Object;
.source "RotationInfo.java"


# static fields
.field protected static final ANIMATION_SPEED:I = 0xf0


# instance fields
.field protected mAnimationEndTime:J

.field protected mAnimationStartTime:J

.field protected mClockwise:Z

.field protected mCurrentDegree:I

.field protected mStartDegree:I

.field protected mTargetDegree:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    .line 18
    iput v0, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    .line 19
    iput v0, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    .line 20
    iput-wide v2, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    .line 21
    iput-wide v2, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    .line 22
    iput-boolean v0, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    return-void
.end method


# virtual methods
.method public calcCurrentDegree()Z
    .locals 6

    .prologue
    .line 104
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, "time":J
    iget-wide v4, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 106
    iget-wide v4, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    sub-long v4, v2, v4

    long-to-int v1, v4

    .line 107
    .local v1, "deltaTime":I
    iget v4, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    iget-boolean v5, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    if-eqz v5, :cond_0

    .end local v1    # "deltaTime":I
    :goto_0
    mul-int/lit16 v5, v1, 0xf0

    div-int/lit16 v5, v5, 0x3e8

    add-int v0, v4, v5

    .line 109
    .local v0, "degree":I
    if-ltz v0, :cond_1

    rem-int/lit16 v0, v0, 0x168

    .line 110
    :goto_1
    iput v0, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    .line 111
    const/4 v4, 0x1

    .line 115
    .end local v0    # "degree":I
    :goto_2
    return v4

    .line 107
    .restart local v1    # "deltaTime":I
    :cond_0
    neg-int v1, v1

    goto :goto_0

    .line 109
    .end local v1    # "deltaTime":I
    .restart local v0    # "degree":I
    :cond_1
    rem-int/lit16 v4, v0, 0x168

    add-int/lit16 v0, v4, 0x168

    goto :goto_1

    .line 113
    .end local v0    # "degree":I
    :cond_2
    iget v4, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    iput v4, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    .line 115
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getAnimationEndTime()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    return-wide v0
.end method

.method public getAnimationStartTime()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    return-wide v0
.end method

.method public getCurrentDegree()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    return v0
.end method

.method public getStartDegree()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    return v0
.end method

.method public getTargetDegree()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    return v0
.end method

.method public isClockwise()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    return v0
.end method

.method public setAnimationEndTime(J)V
    .locals 1
    .param p1, "mAnimationEndTime"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    .line 62
    return-void
.end method

.method public setAnimationStartTime(J)V
    .locals 1
    .param p1, "mAnimationStartTime"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    .line 54
    return-void
.end method

.method public setClockwise(Z)V
    .locals 0
    .param p1, "mClockwise"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    .line 70
    return-void
.end method

.method public setCurrentDegree(I)V
    .locals 0
    .param p1, "mCurrentDegree"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    .line 30
    return-void
.end method

.method public setDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/components/RotationInfo;->setDegree(IZ)V

    .line 74
    return-void
.end method

.method public setDegree(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 78
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 79
    :goto_0
    iget v1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 101
    :goto_1
    return-void

    .line 78
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 83
    :cond_1
    if-eqz p2, :cond_3

    .line 84
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    .line 85
    iget v1, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    iput v1, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    .line 89
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    .line 91
    iget v1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    iget v2, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 92
    .local v0, "diff":I
    if-ltz v0, :cond_4

    .line 96
    :goto_3
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 98
    :cond_2
    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    .line 100
    iget-wide v2, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0xf0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    goto :goto_1

    .line 87
    .end local v0    # "diff":I
    :cond_3
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    goto :goto_2

    .line 92
    .restart local v0    # "diff":I
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_3

    .line 98
    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public setStartDegree(I)V
    .locals 0
    .param p1, "mStartDegree"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    .line 38
    return-void
.end method

.method public setTargetDegree(I)V
    .locals 0
    .param p1, "mTargetDegree"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    .line 46
    return-void
.end method
