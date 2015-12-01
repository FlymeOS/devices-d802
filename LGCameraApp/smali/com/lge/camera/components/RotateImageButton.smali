.class public Lcom/lge/camera/components/RotateImageButton;
.super Lcom/lge/camera/components/RotateView;
.source "RotateImageButton.java"


# static fields
.field private static final DIAGONAL_FACTOR:F = 1.41421f


# instance fields
.field private mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRotateBgResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    .line 41
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/lge/camera/components/RotateImageButton;->BASE_TEXT_PADDING_RATE:F

    .line 42
    return-void
.end method

.method private applyRotateImageScale(Landroid/graphics/Canvas;IIII)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I
    .param p4, "bgCenterX"    # I
    .param p5, "bgCenterY"    # I

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 266
    .local v14, "imageSrc":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_0

    .line 267
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 269
    .local v10, "imageBounds":Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v15, v24, v25

    .line 270
    .local v15, "imageWidth":I
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v11, v24, v25

    .line 272
    .local v11, "imageHeight":I
    int-to-float v0, v15

    move/from16 v24, v0

    int-to-float v0, v11

    move/from16 v25, v0

    div-float v12, v24, v25

    .line 273
    .local v12, "imageRatio":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v23, v24, v25

    .line 275
    .local v23, "viewRatio":F
    cmpg-float v24, v23, v12

    if-gez v24, :cond_1

    .line 276
    const/high16 v13, 0x3f800000    # 1.0f

    .line 277
    .local v13, "imageScale":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v15

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 278
    int-to-float v0, v11

    move/from16 v24, v0

    mul-float v24, v24, v13

    move/from16 v0, v24

    float-to-int v11, v0

    .line 279
    move/from16 v15, p2

    .line 286
    .end local v13    # "imageScale":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 287
    .local v6, "cosA":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v24

    rsub-int/lit8 v24, v24, 0x5a

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 288
    .local v8, "cosRevA":D
    int-to-double v0, v15

    move-wide/from16 v24, v0

    mul-double v24, v24, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    int-to-double v0, v11

    move-wide/from16 v26, v0

    mul-double v26, v26, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v21, v0

    .line 289
    .local v21, "rw":I
    int-to-double v0, v15

    move-wide/from16 v24, v0

    mul-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    int-to-double v0, v11

    move-wide/from16 v26, v0

    mul-double v26, v26, v6

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v16, v0

    .line 291
    .local v16, "rh":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v20, v24, v25

    .line 292
    .local v20, "rotatedImageScaleW":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v19, v24, v25

    .line 293
    .local v19, "rotatedImageScaleH":F
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v17, v24, v25

    .line 294
    .local v17, "rotateImageRatio":F
    const/high16 v18, 0x3f800000    # 1.0f

    .line 295
    .local v18, "rotatedImageScale":F
    cmpg-float v24, v23, v17

    if-gez v24, :cond_2

    .line 296
    move/from16 v18, v20

    .line 303
    :goto_1
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 316
    .end local v6    # "cosA":D
    .end local v8    # "cosRevA":D
    .end local v10    # "imageBounds":Landroid/graphics/Rect;
    .end local v11    # "imageHeight":I
    .end local v12    # "imageRatio":F
    .end local v15    # "imageWidth":I
    .end local v16    # "rh":I
    .end local v17    # "rotateImageRatio":F
    .end local v18    # "rotatedImageScale":F
    .end local v19    # "rotatedImageScaleH":F
    .end local v20    # "rotatedImageScaleW":F
    .end local v21    # "rw":I
    .end local v23    # "viewRatio":F
    :cond_0
    return-void

    .line 281
    .restart local v10    # "imageBounds":Landroid/graphics/Rect;
    .restart local v11    # "imageHeight":I
    .restart local v12    # "imageRatio":F
    .restart local v15    # "imageWidth":I
    .restart local v23    # "viewRatio":F
    :cond_1
    const/high16 v22, 0x3f800000    # 1.0f

    .line 282
    .local v22, "scale":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v11

    move/from16 v25, v0

    div-float v22, v24, v25

    .line 283
    int-to-float v0, v15

    move/from16 v24, v0

    mul-float v24, v24, v22

    move/from16 v0, v24

    float-to-int v15, v0

    .line 284
    move/from16 v11, p3

    goto/16 :goto_0

    .line 298
    .end local v22    # "scale":F
    .restart local v6    # "cosA":D
    .restart local v8    # "cosRevA":D
    .restart local v16    # "rh":I
    .restart local v17    # "rotateImageRatio":F
    .restart local v18    # "rotatedImageScale":F
    .restart local v19    # "rotatedImageScaleH":F
    .restart local v20    # "rotatedImageScaleW":F
    .restart local v21    # "rw":I
    :cond_2
    move/from16 v18, v19

    goto :goto_1
.end method

.method private configureBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v0

    .line 223
    .local v0, "longerSide":I
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v0

    .line 226
    :cond_1
    int-to-float v1, v0

    const v2, 0x3fb504d5

    mul-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    .line 227
    return-void
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 206
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/RotateImageButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    if-eqz p1, :cond_2

    .line 210
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 211
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/components/RotateImageButton;->configureBounds()V

    .line 216
    :cond_2
    return-void
.end method


# virtual methods
.method protected canvasRotate(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    .line 96
    div-int/lit8 v4, p2, 0x2

    .line 97
    .local v4, "bgCenterX":I
    div-int/lit8 v5, p3, 0x2

    .line 98
    .local v5, "bgCenterY":I
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 100
    iget-boolean v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateInsideView:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/RotateImageButton;->applyRotateImageScale(Landroid/graphics/Canvas;IIII)V

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    :cond_1
    return-void
.end method

.method protected checkBackground(Landroid/graphics/Canvas;)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 113
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 115
    if-nez v2, :cond_0

    move v5, v6

    .line 140
    :goto_0
    return v5

    .line 120
    :cond_0
    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 121
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 123
    goto :goto_0

    .line 127
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 128
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v7

    .line 129
    .local v4, "drawableWidth":I
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v7

    .line 131
    .local v3, "drawableHeight":I
    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 132
    :cond_2
    const-string v5, "CameraApp"

    const-string v7, "drawable width,height is zero, return"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 133
    goto :goto_0

    .line 137
    :cond_3
    iget-boolean v5, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    if-eqz v5, :cond_4

    .line 138
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/lge/camera/components/RotateView;->drawableStateChanged()V

    .line 231
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 235
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundResource()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    return v0
.end method

.method public getTextPaintWidth()I
    .locals 4

    .prologue
    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 146
    .local v0, "p":Landroid/graphics/Paint;
    iget v2, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    iget-object v2, p0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 148
    .local v1, "textWidth":I
    int-to-float v2, v1

    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->BASE_TEXT_PADDING_RATE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    return v2
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lcom/lge/camera/components/RotateView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 46
    const/4 v8, 0x0

    .local v8, "measuredWidth":I
    const/4 v7, 0x0

    .line 47
    .local v7, "measuredHeight":I
    const/4 v3, 0x0

    .local v3, "contentWidth":I
    const/4 v2, 0x0

    .line 49
    .local v2, "contentHeight":I
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 50
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 51
    .local v1, "bgWidth":I
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 53
    .local v0, "bgHeight":I
    if-ge v3, v1, :cond_0

    .line 54
    move v3, v1

    .line 56
    :cond_0
    if-ge v2, v0, :cond_1

    .line 57
    move v2, v0

    .line 61
    .end local v0    # "bgHeight":I
    .end local v1    # "bgWidth":I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 62
    .local v4, "imageDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 63
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    .line 64
    .local v6, "imageWidth":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 66
    .local v5, "imageHeight":I
    if-ge v3, v6, :cond_2

    .line 67
    move v3, v6

    .line 69
    :cond_2
    if-ge v2, v5, :cond_3

    .line 70
    move v2, v5

    .line 76
    .end local v5    # "imageHeight":I
    .end local v6    # "imageWidth":I
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-ne v9, v10, :cond_4

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 83
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-ne v9, v10, :cond_5

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 91
    :goto_1
    invoke-virtual {p0, v8, v7}, Lcom/lge/camera/components/RotateImageButton;->setMeasuredDimension(II)V

    .line 92
    return-void

    .line 80
    :cond_4
    move v8, v3

    goto :goto_0

    .line 87
    :cond_5
    move v7, v2

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->requestLayout()V

    .line 195
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 197
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 6
    .param p1, "resId"    # I

    .prologue
    .line 163
    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    if-eq v3, p1, :cond_1

    .line 164
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    if-eqz v3, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 171
    .local v2, "rsrc":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 172
    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    .end local v2    # "rsrc":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->requestLayout()V

    .line 182
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 184
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 174
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lge/camera/components/RotateView;->setFrame(IIII)Z

    move-result v0

    .line 252
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/lge/camera/components/RotateImageButton;->configureBounds()V

    .line 253
    return v0
.end method

.method public setRotateIconOnly(Z)V
    .locals 1
    .param p1, "rotateIconOnly"    # Z

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    if-eq v0, p1, :cond_0

    .line 258
    iput-boolean p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    .line 259
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 261
    :cond_0
    return-void
.end method

.method public setRotated(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 153
    if-lez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotationInfo;->setCurrentDegree(I)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotationInfo;->setTargetDegree(I)V

    .line 159
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 160
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotationInfo;->setCurrentDegree(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/lge/camera/components/RotateView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
