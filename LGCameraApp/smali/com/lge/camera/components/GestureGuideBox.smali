.class public Lcom/lge/camera/components/GestureGuideBox;
.super Landroid/widget/ImageView;
.source "GestureGuideBox.java"


# instance fields
.field private mBoxHorizon:Landroid/graphics/drawable/NinePatchDrawable;

.field private mBoxVertical:Landroid/graphics/drawable/NinePatchDrawable;

.field protected mDegree:I

.field private mHandHeight:I

.field private mHandWidth:I

.field private mInit:Z

.field private mLeftTopX:I

.field private mLeftTopY:I

.field private mNaviW:I

.field private mPannelW:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mQuickBtnW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopX:I

    .line 23
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopY:I

    .line 24
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandWidth:I

    .line 25
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandHeight:I

    .line 26
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewWidth:I

    .line 27
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewHeight:I

    .line 28
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mQuickBtnW:I

    .line 29
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mPannelW:I

    .line 30
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mNaviW:I

    .line 31
    iput-boolean v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mInit:Z

    .line 32
    iput-object v2, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxHorizon:Landroid/graphics/drawable/NinePatchDrawable;

    .line 33
    iput-object v2, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxVertical:Landroid/graphics/drawable/NinePatchDrawable;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mDegree:I

    .line 38
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/GestureGuideBox;->setWillNotDraw(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopX:I

    .line 23
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopY:I

    .line 24
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandWidth:I

    .line 25
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandHeight:I

    .line 26
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewWidth:I

    .line 27
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewHeight:I

    .line 28
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mQuickBtnW:I

    .line 29
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mPannelW:I

    .line 30
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mNaviW:I

    .line 31
    iput-boolean v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mInit:Z

    .line 32
    iput-object v2, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxHorizon:Landroid/graphics/drawable/NinePatchDrawable;

    .line 33
    iput-object v2, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxVertical:Landroid/graphics/drawable/NinePatchDrawable;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mDegree:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopX:I

    .line 23
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopY:I

    .line 24
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandWidth:I

    .line 25
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandHeight:I

    .line 26
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewWidth:I

    .line 27
    iput v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewHeight:I

    .line 28
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mQuickBtnW:I

    .line 29
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mPannelW:I

    .line 30
    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mNaviW:I

    .line 31
    iput-boolean v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mInit:Z

    .line 32
    iput-object v2, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxHorizon:Landroid/graphics/drawable/NinePatchDrawable;

    .line 33
    iput-object v2, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxVertical:Landroid/graphics/drawable/NinePatchDrawable;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mDegree:I

    .line 47
    return-void
.end method


# virtual methods
.method public getNinePatchDrawable(I)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 6
    .param p1, "resid"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 75
    .local v3, "chunk":[B
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mInit:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->initResources()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mInit:Z

    .line 54
    :cond_0
    return-void
.end method

.method public initResources()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f020293

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/GestureGuideBox;->getNinePatchDrawable(I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxHorizon:Landroid/graphics/drawable/NinePatchDrawable;

    .line 69
    const v0, 0x7f020291

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/GestureGuideBox;->getNinePatchDrawable(I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxVertical:Landroid/graphics/drawable/NinePatchDrawable;

    .line 70
    return-void
.end method

.method public isHorizontal()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 133
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 136
    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopX:I

    if-nez v6, :cond_2

    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopY:I

    if-nez v6, :cond_2

    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandWidth:I

    if-nez v6, :cond_2

    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandHeight:I

    if-eqz v6, :cond_0

    .line 142
    :cond_2
    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewWidth:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewHeight:I

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getMeasuredHeight()I

    move-result v0

    .line 148
    .local v0, "canvasHeight":I
    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mQuickBtnW:I

    iget v7, p0, Lcom/lge/camera/components/GestureGuideBox;->mPannelW:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/components/GestureGuideBox;->mNaviW:I

    add-int v5, v6, v7

    .line 149
    .local v5, "sum":I
    iget v3, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopY:I

    .line 150
    .local v3, "finalY":I
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 151
    .local v1, "canvasRatio":F
    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewWidth:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 152
    .local v4, "previewRatio":F
    float-to-double v6, v1

    float-to-double v8, v4

    const-wide v10, 0x3fb999999999999aL    # 0.1

    add-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 153
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getMeasuredHeight()I

    move-result v6

    sub-int v0, v6, v5

    .line 158
    :goto_1
    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopY:I

    iget v7, p0, Lcom/lge/camera/components/GestureGuideBox;->mQuickBtnW:I

    add-int v3, v6, v7

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v0

    iget v8, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 163
    iget v6, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopX:I

    iget v7, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopX:I

    iget v8, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandHeight:I

    add-int/2addr v8, v3

    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 156
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/components/GestureGuideBox;->mQuickBtnW:I

    iget v8, p0, Lcom/lge/camera/components/GestureGuideBox;->mPannelW:I

    add-int/2addr v7, v8

    sub-int v0, v6, v7

    goto :goto_1
.end method

.method public setCoorinate(III)V
    .locals 0
    .param p1, "q"    # I
    .param p2, "p"    # I
    .param p3, "n"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/lge/camera/components/GestureGuideBox;->mQuickBtnW:I

    .line 111
    iput p2, p0, Lcom/lge/camera/components/GestureGuideBox;->mPannelW:I

    .line 112
    iput p3, p0, Lcom/lge/camera/components/GestureGuideBox;->mNaviW:I

    .line 113
    return-void
.end method

.method public setDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 85
    iget v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mDegree:I

    if-eq v0, p1, :cond_0

    .line 86
    iput p1, p0, Lcom/lge/camera/components/GestureGuideBox;->mDegree:I

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/GestureGuideBox;->setState(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public setInitialDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/lge/camera/components/GestureGuideBox;->mDegree:I

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/GestureGuideBox;->setState(I)V

    .line 59
    return-void
.end method

.method public setPreviewSize(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "previewW"    # I
    .param p3, "previewH"    # I

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iput p2, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewWidth:I

    .line 121
    iput p3, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewHeight:I

    goto :goto_0

    .line 123
    :cond_1
    iput p3, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewWidth:I

    .line 124
    iput p2, p0, Lcom/lge/camera/components/GestureGuideBox;->mPreviewHeight:I

    goto :goto_0
.end method

.method public setRectangleArea(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 96
    if-gez p1, :cond_0

    .line 97
    const/4 p1, 0x0

    .line 99
    :cond_0
    if-gez p2, :cond_1

    .line 100
    const/4 p2, 0x0

    .line 102
    :cond_1
    iput p1, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopX:I

    .line 103
    iput p2, p0, Lcom/lge/camera/components/GestureGuideBox;->mLeftTopY:I

    .line 104
    iput p3, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandWidth:I

    .line 105
    iput p4, p0, Lcom/lge/camera/components/GestureGuideBox;->mHandHeight:I

    .line 106
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->invalidate()V

    .line 107
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxHorizon:Landroid/graphics/drawable/NinePatchDrawable;

    .line 80
    .local v0, "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/GestureGuideBox;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/camera/components/GestureGuideBox;->invalidate()V

    .line 82
    return-void

    .line 79
    .end local v0    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxVertical:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/GestureGuideBox;->mInit:Z

    .line 63
    iput-object v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxHorizon:Landroid/graphics/drawable/NinePatchDrawable;

    .line 64
    iput-object v1, p0, Lcom/lge/camera/components/GestureGuideBox;->mBoxVertical:Landroid/graphics/drawable/NinePatchDrawable;

    .line 65
    return-void
.end method
