.class public Lcom/lge/camera/components/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field private static final DRAG_SCALE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DragView"


# instance fields
.field private mAnimationScale:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mLayout:Landroid/view/ViewGroup;

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lge/camera/components/DragView;->mAnimationScale:F

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/graphics/Bitmap;IIIIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vg"    # Landroid/view/ViewGroup;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "regX"    # I
    .param p5, "regY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/lge/camera/components/DragView;->mAnimationScale:F

    .line 47
    iput-object p2, p0, Lcom/lge/camera/components/DragView;->mLayout:Landroid/view/ViewGroup;

    .line 49
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    .local v6, "scale":Landroid/graphics/Matrix;
    move/from16 v0, p8

    int-to-float v8, v0

    .line 51
    .local v8, "scaleFactor":F
    const/4 v1, 0x0

    add-float/2addr v1, v8

    div-float v8, v1, v8

    .line 52
    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 53
    const/4 v7, 0x1

    move-object v1, p3

    move v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    iget-object v1, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/DragView;->mWidth:I

    .line 56
    iget-object v1, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/DragView;->mHeight:I

    .line 58
    add-int/lit8 v1, p4, 0x0

    iput v1, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    .line 59
    add-int/lit8 v1, p5, 0x0

    iput v1, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    .line 60
    return-void
.end method


# virtual methods
.method public move(II)V
    .locals 5
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/components/DragView;->layout(IIII)V

    .line 134
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 72
    .local v5, "p":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    const v0, -0x7722ffef

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget v7, p0, Lcom/lge/camera/components/DragView;->mAnimationScale:F

    .line 77
    .local v7, "scale":F
    const v0, 0x3f7fbe77    # 0.999f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v8, v0

    .line 79
    .local v8, "width":F
    mul-float v0, v8, v7

    sub-float v0, v8, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v0, v2

    .line 80
    .local v6, "offset":F
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 83
    .end local v6    # "offset":F
    .end local v8    # "width":F
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lge/camera/components/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 84
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/components/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/components/DragView;->setMeasuredDimension(II)V

    .line 65
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/camera/components/DragView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/camera/components/DragView;->mPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->invalidate()V

    .line 95
    return-void
.end method

.method public show(II)V
    .locals 7
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 99
    iget v5, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    sub-int v1, p1, v5

    .line 100
    .local v1, "l":I
    iget v5, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    sub-int v4, p2, v5

    .line 101
    .local v4, "t":I
    iget v5, p0, Lcom/lge/camera/components/DragView;->mRegistrationX:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/lge/camera/components/DragView;->mWidth:I

    add-int v3, v5, v6

    .line 102
    .local v3, "r":I
    iget v5, p0, Lcom/lge/camera/components/DragView;->mRegistrationY:I

    sub-int v5, p2, v5

    iget v6, p0, Lcom/lge/camera/components/DragView;->mHeight:I

    add-int v0, v5, v6

    .line 106
    .local v0, "b":I
    iget-object v5, p0, Lcom/lge/camera/components/DragView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/lge/camera/components/DragView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    .local v2, "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 110
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 111
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 112
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 114
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method
