.class public Lcom/lge/camera/components/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# instance fields
.field private mRotationInfo:Lcom/lge/camera/components/RotationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/lge/camera/components/RotationInfo;

    invoke-direct {v0}, Lcom/lge/camera/components/RotationInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/lge/camera/components/RotationInfo;

    invoke-direct {v0}, Lcom/lge/camera/components/RotationInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lcom/lge/camera/components/RotationInfo;

    invoke-direct {v0}, Lcom/lge/camera/components/RotationInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 63
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v12, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    instance-of v0, v12, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v18, v12

    .line 68
    check-cast v18, Landroid/graphics/drawable/TransitionDrawable;

    .line 69
    .local v18, "transDrawable":Landroid/graphics/drawable/TransitionDrawable;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 70
    .local v6, "bmpDraw0":Landroid/graphics/Bitmap;
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 71
    .local v7, "bmpDraw1":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-nez v20, :cond_0

    .line 81
    .end local v6    # "bmpDraw0":Landroid/graphics/Bitmap;
    .end local v7    # "bmpDraw1":Landroid/graphics/Bitmap;
    .end local v18    # "transDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 82
    .local v11, "bounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    if-eqz v20, :cond_0

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 87
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v10, v0

    .line 88
    .local v10, "boundWidth":F
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v9, v0

    .line 90
    .local v9, "boundHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/components/RotationInfo;->getTargetDegree()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/camera/components/RotationInfo;->calcCurrentDegree()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 92
    const/16 v20, -0x64

    const/16 v21, -0x64

    const/16 v22, 0x12c

    const/16 v23, 0x12c

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/components/RotateImageView;->invalidate(IIII)V

    .line 95
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getPaddingStart()I

    move-result v14

    .line 96
    .local v14, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getPaddingTop()I

    move-result v17

    .line 97
    .local v17, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getPaddingEnd()I

    move-result v15

    .line 98
    .local v15, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getPaddingBottom()I

    move-result v8

    .line 99
    .local v8, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getWidth()I

    move-result v20

    sub-int v20, v20, v14

    sub-int v20, v20, v15

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 100
    .local v19, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    sub-int v20, v20, v8

    move/from16 v0, v20

    int-to-float v13, v0

    .line 102
    .local v13, "height":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v16

    .line 103
    .local v16, "saveCount":I
    int-to-float v0, v14

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v19, v21

    add-float v20, v20, v21

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v13, v22

    add-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lge/camera/components/RotationInfo;->getCurrentDegree()I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 105
    neg-float v0, v10

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    neg-float v0, v9

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 74
    .end local v8    # "bottom":I
    .end local v9    # "boundHeight":F
    .end local v10    # "boundWidth":F
    .end local v11    # "bounds":Landroid/graphics/Rect;
    .end local v13    # "height":F
    .end local v14    # "left":I
    .end local v15    # "right":I
    .end local v16    # "saveCount":I
    .end local v17    # "top":I
    .end local v19    # "width":F
    :cond_4
    instance-of v0, v12, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v20, v12

    .line 75
    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 76
    .local v5, "bmpDraw":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-eqz v20, :cond_2

    goto/16 :goto_0
.end method

.method public setDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/components/RotateImageView;->setDegree(IZ)V

    .line 51
    return-void
.end method

.method public setDegree(IZ)V
    .locals 3
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v2, 0x12c

    const/16 v1, -0x64

    .line 54
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageView;->mRotationInfo:Lcom/lge/camera/components/RotationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/RotationInfo;->setDegree(IZ)V

    .line 57
    :cond_0
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/lge/camera/components/RotateImageView;->invalidate(IIII)V

    .line 58
    return-void
.end method
