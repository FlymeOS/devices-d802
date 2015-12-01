.class public Lcom/lge/gestureshot/library/HandInfo;
.super Ljava/lang/Object;
.source "HandInfo.java"


# instance fields
.field public mDetID:I

.field public mEvent:I

.field public mGestureType:I

.field public mHeight:I

.field public mMinX:I

.field public mMinY:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mDetID:I

    .line 23
    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    .line 24
    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    .line 25
    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    .line 26
    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    .line 27
    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mEvent:I

    .line 28
    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mGestureType:I

    .line 29
    return-void
.end method


# virtual methods
.method public compareHandInfo(Lcom/lge/gestureshot/library/HandInfo;)Z
    .locals 3
    .param p1, "handInfo"    # Lcom/lge/gestureshot/library/HandInfo;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "ret":Z
    iget v1, p1, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    iget v2, p0, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    iget v2, p0, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    iget v2, p0, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    iget v2, p0, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/lge/gestureshot/library/HandInfo;->mEvent:I

    iget v2, p0, Lcom/lge/gestureshot/library/HandInfo;->mEvent:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/lge/gestureshot/library/HandInfo;->mGestureType:I

    iget v2, p0, Lcom/lge/gestureshot/library/HandInfo;->mGestureType:I

    if-ne v1, v2, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 56
    :cond_0
    return v0
.end method

.method public setHandInfo(Lcom/lge/gestureshot/library/HandInfo;)V
    .locals 1
    .param p1, "handInfo"    # Lcom/lge/gestureshot/library/HandInfo;

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 36
    :cond_0
    iget v0, p1, Lcom/lge/gestureshot/library/HandInfo;->mDetID:I

    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mDetID:I

    .line 37
    iget v0, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    .line 38
    iget v0, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    .line 39
    iget v0, p1, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    .line 40
    iget v0, p1, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    .line 41
    iget v0, p1, Lcom/lge/gestureshot/library/HandInfo;->mEvent:I

    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mEvent:I

    .line 42
    iget v0, p1, Lcom/lge/gestureshot/library/HandInfo;->mGestureType:I

    iput v0, p0, Lcom/lge/gestureshot/library/HandInfo;->mGestureType:I

    goto :goto_0
.end method
