.class public Lcom/lge/camera/components/ZoomProgressBar;
.super Landroid/widget/ImageView;
.source "ZoomProgressBar.java"


# instance fields
.field private mCurs:I

.field private mInit:Z

.field private mMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    .line 20
    iput v1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mCurs:I

    .line 21
    iput-boolean v1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    .line 20
    iput v1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mCurs:I

    .line 21
    iput-boolean v1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    return v0
.end method

.method public initZoomProgressBar(I)V
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    .line 34
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 53
    iget-boolean v4, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    if-nez v4, :cond_0

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomProgressBar;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 58
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomProgressBar;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 59
    .local v3, "width":F
    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    .line 60
    iget v4, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    int-to-float v4, v4

    div-float v1, v4, v0

    .line 61
    .local v1, "step":F
    cmpl-float v4, v1, v5

    if-lez v4, :cond_1

    .line 62
    iget v4, p0, Lcom/lge/camera/components/ZoomProgressBar;->mCurs:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v2, v4

    .line 63
    .local v2, "value":I
    int-to-float v4, v2

    sub-float v4, v0, v4

    invoke-virtual {p1, v5, v4, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 66
    .end local v1    # "step":F
    .end local v2    # "value":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mInit:Z

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    iget v0, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 45
    iget p1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mMax:I

    .line 47
    :cond_1
    iput p1, p0, Lcom/lge/camera/components/ZoomProgressBar;->mCurs:I

    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomProgressBar;->invalidate()V

    goto :goto_0
.end method
