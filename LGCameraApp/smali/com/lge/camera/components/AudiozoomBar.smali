.class public Lcom/lge/camera/components/AudiozoomBar;
.super Landroid/widget/ImageView;
.source "AudiozoomBar.java"


# static fields
.field public static final FORWARD:I


# instance fields
.field private mCurs:F

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/AudiozoomBar;->mCurs:F

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/AudiozoomBar;->mCurs:F

    .line 33
    return-void
.end method


# virtual methods
.method public initRecProgressBar(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/camera/components/AudiozoomBar;->mWidth:I

    .line 37
    iput p2, p0, Lcom/lge/camera/components/AudiozoomBar;->mHeight:I

    .line 38
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    iget v1, p0, Lcom/lge/camera/components/AudiozoomBar;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/AudiozoomBar;->mCurs:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 54
    .local v0, "value":I
    const/4 v1, 0x0

    iget v2, p0, Lcom/lge/camera/components/AudiozoomBar;->mHeight:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/lge/camera/components/AudiozoomBar;->mWidth:I

    iget v4, p0, Lcom/lge/camera/components/AudiozoomBar;->mHeight:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 41
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 42
    const/16 p1, 0x64

    .line 46
    :cond_0
    :goto_0
    int-to-float v0, p1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/AudiozoomBar;->mCurs:F

    .line 47
    invoke-virtual {p0}, Lcom/lge/camera/components/AudiozoomBar;->invalidate()V

    .line 48
    return-void

    .line 43
    :cond_1
    if-gez p1, :cond_0

    .line 44
    const/4 p1, 0x0

    goto :goto_0
.end method
