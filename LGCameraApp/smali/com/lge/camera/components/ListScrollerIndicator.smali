.class public Lcom/lge/camera/components/ListScrollerIndicator;
.super Landroid/widget/ImageView;
.source "ListScrollerIndicator.java"


# static fields
.field private static final DRAW_NONE:I = 0x0

.field private static final DRAW_START:I = 0x1


# instance fields
.field private dx:F

.field private dy:F

.field private mCurValue:I

.field private mDrawState:I

.field private mMaxValue:I

.field private saveCount:I

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    iput v1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mMaxValue:I

    .line 24
    iput v1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mCurValue:I

    .line 25
    iput v1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->saveCount:I

    .line 26
    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewWidth:F

    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewHeight:F

    .line 27
    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dx:F

    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dy:F

    .line 28
    iput v1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mDrawState:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mMaxValue:I

    .line 24
    iput v1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mCurValue:I

    .line 25
    iput v1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->saveCount:I

    .line 26
    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewWidth:F

    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewHeight:F

    .line 27
    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dx:F

    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dy:F

    .line 28
    iput v1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mDrawState:I

    .line 36
    return-void
.end method


# virtual methods
.method public initListScrollerIndicator(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mMaxValue:I

    .line 40
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/components/ListScrollerIndicator;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mMaxValue:I

    if-eqz v4, :cond_0

    .line 63
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mDrawState:I

    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->saveCount:I

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 71
    .local v2, "cursorWidth":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v1, v4

    .line 73
    .local v1, "cursorHeight":F
    invoke-virtual {p0}, Lcom/lge/camera/components/ListScrollerIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewWidth:F

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/components/ListScrollerIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewHeight:F

    .line 76
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewWidth:F

    sub-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dx:F

    .line 78
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mMaxValue:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 79
    iput v6, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dy:F

    .line 91
    :goto_1
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dx:F

    iget v5, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dy:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dx:F

    neg-float v4, v4

    iget v5, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dy:F

    neg-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->saveCount:I

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 81
    :cond_2
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewHeight:F

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mMaxValue:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 82
    .local v3, "step":F
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mCurValue:I

    if-nez v4, :cond_3

    .line 83
    iput v6, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dy:F

    goto :goto_1

    .line 84
    :cond_3
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mCurValue:I

    iget v5, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mMaxValue:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    .line 85
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->viewHeight:F

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dy:F

    goto :goto_1

    .line 87
    :cond_4
    iget v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mCurValue:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/lge/camera/components/ListScrollerIndicator;->dy:F

    goto :goto_1
.end method

.method public setCursor(I)V
    .locals 1
    .param p1, "curValue"    # I

    .prologue
    .line 43
    iget v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mCurValue:I

    if-eq v0, p1, :cond_0

    .line 44
    iput p1, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mCurValue:I

    .line 45
    invoke-virtual {p0}, Lcom/lge/camera/components/ListScrollerIndicator;->postInvalidate()V

    .line 47
    :cond_0
    return-void
.end method

.method public setDraw(Z)V
    .locals 1
    .param p1, "draw"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/lge/camera/components/ListScrollerIndicator;->mDrawState:I

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
