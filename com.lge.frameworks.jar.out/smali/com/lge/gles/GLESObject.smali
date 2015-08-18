.class public abstract Lcom/lge/gles/GLESObject;
.super Ljava/lang/Object;
.source "GLESObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/gles/GLESObject$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "quilt GLESObject"


# instance fields
.field protected mBitmapHeight:F

.field protected mBitmapWidth:F

.field protected mContext:Landroid/content/Context;

.field protected mDepth:Lcom/lge/gles/GLESConfig$DepthLevel;

.field protected mHeight:F

.field protected mIndexBuffer:Ljava/nio/ShortBuffer;

.field protected mIsVisible:Z

.field protected mMeshType:Lcom/lge/gles/GLESConfig$MeshType;

.field protected mNormalOffset:I

.field protected mNumOfVertexElement:I

.field protected mNumOfVertics:I

.field protected mObjectType:Lcom/lge/gles/GLESConfig$ObjectType;

.field protected mProjection:Lcom/lge/gles/GLESProjection;

.field protected mRes:Landroid/content/res/Resources;

.field protected mShader:Lcom/lge/gles/GLESShader;

.field protected mSpaceInfoHandle:I

.field protected mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field protected mTexCoordOffset:I

.field protected mTexture:Lcom/lge/gles/GLESTexture;

.field protected mTransform:Lcom/lge/gles/GLESTransform;

.field protected mUseNormal:Z

.field protected mUseTexture:Z

.field protected mVBOIDs:[I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mVertexOffset:I

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useTexture"    # Z
    .param p3, "useNormal"    # Z

    .prologue
    .line 73
    sget-object v0, Lcom/lge/gles/GLESConfig$ObjectType;->SOLID:Lcom/lge/gles/GLESConfig$ObjectType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/gles/GLESObject;-><init>(Landroid/content/Context;ZZLcom/lge/gles/GLESConfig$ObjectType;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/lge/gles/GLESConfig$ObjectType;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useTexture"    # Z
    .param p3, "useNormal"    # Z
    .param p4, "objectType"    # Lcom/lge/gles/GLESConfig$ObjectType;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 35
    iput-object v2, p0, Lcom/lge/gles/GLESObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/gles/GLESObject;->mSpaceInfoHandle:I

    .line 46
    iput-boolean v1, p0, Lcom/lge/gles/GLESObject;->mUseTexture:Z

    .line 47
    iput-boolean v1, p0, Lcom/lge/gles/GLESObject;->mUseNormal:Z

    .line 49
    iput-boolean v1, p0, Lcom/lge/gles/GLESObject;->mIsVisible:Z

    .line 51
    sget-object v0, Lcom/lge/gles/GLESConfig$DepthLevel;->DEFAULT_LEVEL_DEPTH:Lcom/lge/gles/GLESConfig$DepthLevel;

    iput-object v0, p0, Lcom/lge/gles/GLESObject;->mDepth:Lcom/lge/gles/GLESConfig$DepthLevel;

    .line 55
    iput-object v2, p0, Lcom/lge/gles/GLESObject;->mVBOIDs:[I

    .line 57
    iput v1, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    .line 58
    iput v1, p0, Lcom/lge/gles/GLESObject;->mVertexOffset:I

    .line 59
    iput v1, p0, Lcom/lge/gles/GLESObject;->mNormalOffset:I

    .line 60
    iput v1, p0, Lcom/lge/gles/GLESObject;->mTexCoordOffset:I

    .line 89
    iput-object p1, p0, Lcom/lge/gles/GLESObject;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/gles/GLESObject;->mRes:Landroid/content/res/Resources;

    .line 92
    iput-boolean p2, p0, Lcom/lge/gles/GLESObject;->mUseTexture:Z

    .line 93
    iput-boolean p3, p0, Lcom/lge/gles/GLESObject;->mUseNormal:Z

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    .line 96
    iput v1, p0, Lcom/lge/gles/GLESObject;->mVertexOffset:I

    .line 98
    iget-boolean v0, p0, Lcom/lge/gles/GLESObject;->mUseNormal:Z

    if-ne v0, v3, :cond_0

    .line 99
    iget v0, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    iput v0, p0, Lcom/lge/gles/GLESObject;->mNormalOffset:I

    .line 100
    iget v0, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/lge/gles/GLESObject;->mUseTexture:Z

    if-ne v0, v3, :cond_1

    .line 104
    iget v0, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    iput v0, p0, Lcom/lge/gles/GLESObject;->mTexCoordOffset:I

    .line 105
    iget v0, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    .line 108
    :cond_1
    iput-object p4, p0, Lcom/lge/gles/GLESObject;->mObjectType:Lcom/lge/gles/GLESConfig$ObjectType;

    .line 110
    new-instance v0, Lcom/lge/gles/GLESTexture;

    invoke-direct {v0}, Lcom/lge/gles/GLESTexture;-><init>()V

    iput-object v0, p0, Lcom/lge/gles/GLESObject;->mTexture:Lcom/lge/gles/GLESTexture;

    .line 111
    return-void
.end method


# virtual methods
.method public changeTexture(Landroid/graphics/Bitmap;ZZ)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needToRecycle"    # Z
    .param p3, "updateVertexInfo"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/gles/GLESObject;->mTexture:Lcom/lge/gles/GLESTexture;

    invoke-virtual {v0, p1, p2}, Lcom/lge/gles/GLESTexture;->changeTexture(Landroid/graphics/Bitmap;Z)V

    .line 286
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/gles/GLESObject;->updateVertexBuffer(FF)V

    .line 289
    :cond_0
    return-void
.end method

.method public changeTexture(Lcom/lge/gles/GLESTexture;Z)V
    .locals 2
    .param p1, "texture"    # Lcom/lge/gles/GLESTexture;
    .param p2, "updateVertexInfo"    # Z

    .prologue
    .line 262
    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iput-object p1, p0, Lcom/lge/gles/GLESObject;->mTexture:Lcom/lge/gles/GLESTexture;

    .line 268
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/lge/gles/GLESTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/lge/gles/GLESTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/gles/GLESObject;->updateVertexBuffer(FF)V

    goto :goto_0
.end method

.method public createMesh(Lcom/lge/gles/GLESConfig$MeshType;FFFFI)V
    .locals 6
    .param p1, "meshType"    # Lcom/lge/gles/GLESConfig$MeshType;
    .param p2, "leftX"    # F
    .param p3, "topY"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "resolution"    # I

    .prologue
    .line 395
    iput-object p1, p0, Lcom/lge/gles/GLESObject;->mMeshType:Lcom/lge/gles/GLESConfig$MeshType;

    .line 397
    sget-object v0, Lcom/lge/gles/GLESObject$1;->$SwitchMap$com$lge$gles$GLESConfig$MeshType:[I

    invoke-virtual {p1}, Lcom/lge/gles/GLESConfig$MeshType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 410
    :goto_0
    return-void

    .line 399
    :pswitch_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/lge/gles/GLESObject;->createPlane(FFFF)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 402
    invoke-virtual/range {v0 .. v5}, Lcom/lge/gles/GLESObject;->createPlaneMesh(FFFFI)V

    goto :goto_0

    .line 405
    :pswitch_2
    const-string v0, "quilt GLESObject"

    const-string v1, "You should override this function"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createPlane(FFFF)V
    .locals 9
    .param p1, "leftX"    # F
    .param p2, "topY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 526
    invoke-static {p3}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result p3

    .line 527
    invoke-static {p4}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result p4

    .line 529
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v2, p3, v7

    .line 530
    .local v2, "right":F
    neg-float v1, v2

    .line 531
    .local v1, "left":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v4, p4, v7

    .line 532
    .local v4, "top":F
    neg-float v0, v4

    .line 533
    .local v0, "bottom":F
    const/4 v6, 0x0

    .line 535
    .local v6, "z":F
    const/16 v7, 0xc

    new-array v5, v7, [F

    const/4 v7, 0x0

    aput v1, v5, v7

    const/4 v7, 0x1

    aput v0, v5, v7

    const/4 v7, 0x2

    aput v6, v5, v7

    const/4 v7, 0x3

    aput v2, v5, v7

    const/4 v7, 0x4

    aput v0, v5, v7

    const/4 v7, 0x5

    aput v6, v5, v7

    const/4 v7, 0x6

    aput v1, v5, v7

    const/4 v7, 0x7

    aput v4, v5, v7

    const/16 v7, 0x8

    aput v6, v5, v7

    const/16 v7, 0x9

    aput v2, v5, v7

    const/16 v7, 0xa

    aput v4, v5, v7

    const/16 v7, 0xb

    aput v6, v5, v7

    .line 537
    .local v5, "vertex":[F
    array-length v7, v5

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 539
    iget-object v7, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 541
    iget-boolean v7, p0, Lcom/lge/gles/GLESObject;->mUseTexture:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 543
    const/16 v7, 0x8

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    .line 545
    .local v3, "texCoord":[F
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/gles/GLESObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 548
    iget-object v7, p0, Lcom/lge/gles/GLESObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 550
    .end local v3    # "texCoord":[F
    :cond_0
    return-void

    .line 543
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public createPlaneMesh(FFFFI)V
    .locals 29
    .param p1, "leftX"    # F
    .param p2, "topY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "resolution"    # I

    .prologue
    .line 427
    invoke-static/range {p3 .. p3}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result p3

    .line 428
    invoke-static/range {p4 .. p4}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result p4

    .line 430
    const/16 v20, 0x0

    .line 431
    .local v20, "wResolution":I
    add-int/lit8 v6, p5, 0x2

    .line 432
    .local v6, "hResolution":I
    cmpl-float v25, p4, p3

    if-lez v25, :cond_2

    .line 433
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p3

    div-float v25, v25, p4

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int/lit8 v20, v25, 0x2

    .line 437
    :goto_0
    add-int/lit8 v25, v20, 0x1

    add-int/lit8 v26, v6, 0x1

    mul-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gles/GLESObject;->mNumOfVertics:I

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gles/GLESObject;->mNumOfVertics:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 445
    .local v19, "vertices":[F
    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v8, p3, v25

    .line 446
    .local v8, "halfWidth":F
    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v7, p4, v25

    .line 447
    .local v7, "halfHeight":F
    const/16 v23, 0x0

    .local v23, "y":I
    const/4 v11, 0x0

    .local v11, "index":I
    const/16 v16, 0x0

    .local v16, "texIdx":I
    :goto_1
    move/from16 v0, v23

    if-gt v0, v6, :cond_4

    .line 448
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v6

    move/from16 v26, v0

    div-float v15, v25, v26

    .line 449
    .local v15, "normalizedY":F
    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v25, v15

    mul-float v24, v25, p4

    .line 450
    .local v24, "yOffset":F
    const/16 v21, 0x0

    .local v21, "x":I
    move v12, v11

    .end local v11    # "index":I
    .local v12, "index":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    .line 451
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v14, v25, v26

    .line 452
    .local v14, "normalizedX":F
    mul-float v22, v14, p3

    .line 454
    .local v22, "xOffset":F
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    sub-float v25, v22, v8

    aput v25, v19, v12

    .line 455
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    sub-float v25, v24, v7

    aput v25, v19, v11

    .line 456
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    const/16 v25, 0x0

    aput v25, v19, v12

    .line 458
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gles/GLESObject;->mUseNormal:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 459
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    const/16 v25, 0x0

    aput v25, v19, v11

    .line 460
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    const/16 v25, 0x0

    aput v25, v19, v12

    .line 461
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    const/high16 v25, 0x3f800000    # 1.0f

    aput v25, v19, v11

    move v11, v12

    .line 464
    .end local v12    # "index":I
    .restart local v11    # "index":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gles/GLESObject;->mUseTexture:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 465
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    aput v14, v19, v11

    .line 466
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    aput v15, v19, v12

    .line 450
    :cond_1
    add-int/lit8 v21, v21, 0x1

    move v12, v11

    .end local v11    # "index":I
    .restart local v12    # "index":I
    goto :goto_2

    .line 435
    .end local v7    # "halfHeight":F
    .end local v8    # "halfWidth":F
    .end local v12    # "index":I
    .end local v14    # "normalizedX":F
    .end local v15    # "normalizedY":F
    .end local v16    # "texIdx":I
    .end local v19    # "vertices":[F
    .end local v21    # "x":I
    .end local v22    # "xOffset":F
    .end local v23    # "y":I
    .end local v24    # "yOffset":F
    :cond_2
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p4

    div-float v25, v25, p3

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int/lit8 v20, v25, 0x2

    goto/16 :goto_0

    .line 447
    .restart local v7    # "halfHeight":F
    .restart local v8    # "halfWidth":F
    .restart local v12    # "index":I
    .restart local v15    # "normalizedY":F
    .restart local v16    # "texIdx":I
    .restart local v19    # "vertices":[F
    .restart local v21    # "x":I
    .restart local v23    # "y":I
    .restart local v24    # "yOffset":F
    :cond_3
    add-int/lit8 v23, v23, 0x1

    move v11, v12

    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto/16 :goto_1

    .line 475
    .end local v15    # "normalizedY":F
    .end local v21    # "x":I
    .end local v24    # "yOffset":F
    :cond_4
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x4

    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 479
    mul-int v25, v6, v20

    mul-int/lit8 v25, v25, 0x6

    move/from16 v0, v25

    new-array v13, v0, [S

    .line 481
    .local v13, "indices":[S
    const/16 v23, 0x0

    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_3
    move/from16 v0, v23

    if-ge v0, v6, :cond_6

    .line 482
    add-int/lit8 v25, v20, 0x1

    mul-int v5, v23, v25

    .line 483
    .local v5, "curY":I
    add-int/lit8 v25, v23, 0x1

    add-int/lit8 v26, v20, 0x1

    mul-int v3, v25, v26

    .line 484
    .local v3, "belowY":I
    const/16 v21, 0x0

    .restart local v21    # "x":I
    move v10, v9

    .end local v9    # "idx":I
    .local v10, "idx":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 485
    add-int v4, v5, v21

    .line 486
    .local v4, "curV":I
    add-int v2, v3, v21

    .line 488
    .local v2, "belowV":I
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    int-to-short v0, v4

    move/from16 v25, v0

    aput-short v25, v13, v10

    .line 489
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    int-to-short v0, v2

    move/from16 v25, v0

    aput-short v25, v13, v9

    .line 490
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    add-int/lit8 v25, v4, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    aput-short v25, v13, v10

    .line 492
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    int-to-short v0, v2

    move/from16 v25, v0

    aput-short v25, v13, v9

    .line 493
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    add-int/lit8 v25, v2, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    aput-short v25, v13, v10

    .line 494
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    add-int/lit8 v25, v4, 0x1

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v25, v0

    aput-short v25, v13, v9

    .line 484
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 481
    .end local v2    # "belowV":I
    .end local v4    # "curV":I
    :cond_5
    add-int/lit8 v23, v23, 0x1

    move v9, v10

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    goto :goto_3

    .line 502
    .end local v3    # "belowY":I
    .end local v5    # "curY":I
    .end local v21    # "x":I
    :cond_6
    array-length v0, v13

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/gles/GLESObject;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mIndexBuffer:Ljava/nio/ShortBuffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 508
    const/16 v17, 0x0

    .line 509
    .local v17, "vboIndex":I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/gles/GLESObject;->mVBOIDs:[I

    .line 510
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mVBOIDs:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 512
    const v25, 0x8892

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mVBOIDs:[I

    move-object/from16 v26, v0

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "vboIndex":I
    .local v18, "vboIndex":I
    aget v26, v26, v17

    invoke-static/range {v25 .. v26}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 513
    const v25, 0x8892

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v26

    mul-int/lit8 v26, v26, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v27, v0

    const v28, 0x88e4

    invoke-static/range {v25 .. v28}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 516
    const v25, 0x8893

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mVBOIDs:[I

    move-object/from16 v26, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "vboIndex":I
    .restart local v17    # "vboIndex":I
    aget v26, v26, v18

    invoke-static/range {v25 .. v26}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 517
    const v25, 0x8893

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mIndexBuffer:Ljava/nio/ShortBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v26

    mul-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gles/GLESObject;->mIndexBuffer:Ljava/nio/ShortBuffer;

    move-object/from16 v27, v0

    const v28, 0x88e4

    invoke-static/range {v25 .. v28}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 520
    const v25, 0x8892

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 521
    const v25, 0x8893

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 523
    return-void
.end method

.method protected abstract draw()V
.end method

.method public drawObject()V
    .locals 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/lge/gles/GLESObject;->mIsVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/lge/gles/GLESObject;->mShader:Lcom/lge/gles/GLESShader;

    invoke-virtual {v0}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 325
    invoke-virtual {p0}, Lcom/lge/gles/GLESObject;->update()V

    .line 326
    invoke-virtual {p0}, Lcom/lge/gles/GLESObject;->draw()V

    .line 328
    :cond_0
    return-void
.end method

.method protected getNormalOffset()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/lge/gles/GLESObject;->mNormalOffset:I

    return v0
.end method

.method protected getNumOfVertexElement()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/lge/gles/GLESObject;->mNumOfVertexElement:I

    return v0
.end method

.method protected getTexCoordOffset()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/lge/gles/GLESObject;->mTexCoordOffset:I

    return v0
.end method

.method public getTexture()Lcom/lge/gles/GLESTexture;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/gles/GLESObject;->mTexture:Lcom/lge/gles/GLESTexture;

    return-object v0
.end method

.method protected abstract getUniformLocations()V
.end method

.method protected getVertexOffset()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/lge/gles/GLESObject;->mVertexOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/gles/GLESObject;->mIsVisible:Z

    .line 303
    return-void
.end method

.method public setDepth(Lcom/lge/gles/GLESConfig$DepthLevel;)V
    .locals 0
    .param p1, "depth"    # Lcom/lge/gles/GLESConfig$DepthLevel;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/lge/gles/GLESObject;->mDepth:Lcom/lge/gles/GLESConfig$DepthLevel;

    .line 316
    return-void
.end method

.method public setShader(Lcom/lge/gles/GLESShader;)V
    .locals 2
    .param p1, "shader"    # Lcom/lge/gles/GLESShader;

    .prologue
    const/4 v1, 0x1

    .line 124
    iput-object p1, p0, Lcom/lge/gles/GLESObject;->mShader:Lcom/lge/gles/GLESShader;

    .line 125
    invoke-virtual {p1}, Lcom/lge/gles/GLESShader;->useProgram()V

    .line 127
    const-string v0, "aPosition"

    invoke-virtual {p1, v0}, Lcom/lge/gles/GLESShader;->setVertexAttribIndex(Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lcom/lge/gles/GLESObject;->mUseTexture:Z

    if-ne v0, v1, :cond_0

    .line 130
    const-string v0, "aTexCoord"

    invoke-virtual {p1, v0}, Lcom/lge/gles/GLESShader;->setTexCoordAttribIndex(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/lge/gles/GLESObject;->mUseNormal:Z

    if-ne v0, v1, :cond_1

    .line 134
    const-string v0, "aNormal"

    invoke-virtual {p1, v0}, Lcom/lge/gles/GLESShader;->setNormalAttribIndex(Ljava/lang/String;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/lge/gles/GLESObject;->getUniformLocations()V

    .line 139
    new-instance v0, Lcom/lge/gles/GLESTransform;

    invoke-direct {v0, p1}, Lcom/lge/gles/GLESTransform;-><init>(Lcom/lge/gles/GLESShader;)V

    iput-object v0, p0, Lcom/lge/gles/GLESObject;->mTransform:Lcom/lge/gles/GLESTransform;

    .line 140
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;ZZ)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needToRecycle"    # Z
    .param p3, "updateVertexInfo"    # Z

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/lge/gles/GLESObject;->mTexture:Lcom/lge/gles/GLESTexture;

    invoke-virtual {v0, p1, p2}, Lcom/lge/gles/GLESTexture;->changeTexture(Landroid/graphics/Bitmap;Z)V

    .line 234
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/gles/GLESObject;->updateVertexBuffer(FF)V

    .line 238
    :cond_0
    return-void
.end method

.method public setTexture(Lcom/lge/gles/GLESTexture;Z)V
    .locals 2
    .param p1, "texture"    # Lcom/lge/gles/GLESTexture;
    .param p2, "updateVertexInfo"    # Z

    .prologue
    .line 209
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iput-object p1, p0, Lcom/lge/gles/GLESObject;->mTexture:Lcom/lge/gles/GLESTexture;

    .line 215
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/lge/gles/GLESTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/lge/gles/GLESTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/gles/GLESObject;->updateVertexBuffer(FF)V

    goto :goto_0
.end method

.method public setupSpace(Lcom/lge/gles/GLESConfig$ProjectionType;II)V
    .locals 2
    .param p1, "projectionType"    # Lcom/lge/gles/GLESConfig$ProjectionType;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 170
    int-to-float v0, p2

    iput v0, p0, Lcom/lge/gles/GLESObject;->mWidth:F

    .line 171
    int-to-float v0, p3

    iput v0, p0, Lcom/lge/gles/GLESObject;->mHeight:F

    .line 173
    new-instance v0, Lcom/lge/gles/GLESProjection;

    iget-object v1, p0, Lcom/lge/gles/GLESObject;->mShader:Lcom/lge/gles/GLESShader;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/lge/gles/GLESProjection;-><init>(Lcom/lge/gles/GLESShader;Lcom/lge/gles/GLESConfig$ProjectionType;II)V

    iput-object v0, p0, Lcom/lge/gles/GLESObject;->mProjection:Lcom/lge/gles/GLESProjection;

    .line 174
    return-void
.end method

.method public setupSpace(Lcom/lge/gles/GLESConfig$ProjectionType;IIF)V
    .locals 6
    .param p1, "projectionType"    # Lcom/lge/gles/GLESConfig$ProjectionType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "projectionScale"    # F

    .prologue
    .line 190
    int-to-float v0, p2

    iput v0, p0, Lcom/lge/gles/GLESObject;->mWidth:F

    .line 191
    int-to-float v0, p3

    iput v0, p0, Lcom/lge/gles/GLESObject;->mHeight:F

    .line 193
    new-instance v0, Lcom/lge/gles/GLESProjection;

    iget-object v1, p0, Lcom/lge/gles/GLESObject;->mShader:Lcom/lge/gles/GLESShader;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/gles/GLESProjection;-><init>(Lcom/lge/gles/GLESShader;Lcom/lge/gles/GLESConfig$ProjectionType;IIF)V

    iput-object v0, p0, Lcom/lge/gles/GLESObject;->mProjection:Lcom/lge/gles/GLESProjection;

    .line 194
    return-void
.end method

.method public setupSpace(Lcom/lge/gles/GLESProjection;II)V
    .locals 1
    .param p1, "projection"    # Lcom/lge/gles/GLESProjection;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lge/gles/GLESObject;->mProjection:Lcom/lge/gles/GLESProjection;

    .line 155
    int-to-float v0, p2

    iput v0, p0, Lcom/lge/gles/GLESObject;->mWidth:F

    .line 156
    int-to-float v0, p3

    iput v0, p0, Lcom/lge/gles/GLESObject;->mHeight:F

    .line 157
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gles/GLESObject;->mIsVisible:Z

    .line 296
    return-void
.end method

.method public syncAll()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lge/gles/GLESObject;->mProjection:Lcom/lge/gles/GLESProjection;

    invoke-virtual {v0}, Lcom/lge/gles/GLESProjection;->sync()V

    .line 335
    iget-object v0, p0, Lcom/lge/gles/GLESObject;->mTransform:Lcom/lge/gles/GLESTransform;

    invoke-virtual {v0}, Lcom/lge/gles/GLESTransform;->sync()V

    .line 336
    return-void
.end method

.method protected abstract update()V
.end method

.method protected updateVertexBuffer(FF)V
    .locals 5
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 340
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mMeshType:Lcom/lge/gles/GLESConfig$MeshType;

    sget-object v3, Lcom/lge/gles/GLESConfig$MeshType;->PLANE:Lcom/lge/gles/GLESConfig$MeshType;

    if-eq v2, v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget v2, p0, Lcom/lge/gles/GLESObject;->mBitmapWidth:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/lge/gles/GLESObject;->mBitmapHeight:F

    invoke-static {v2, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    :cond_2
    iput p1, p0, Lcom/lge/gles/GLESObject;->mBitmapWidth:F

    .line 354
    iput p2, p0, Lcom/lge/gles/GLESObject;->mBitmapHeight:F

    .line 356
    mul-float v2, p1, v4

    invoke-static {v2}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v1

    .line 357
    .local v1, "bitmapWidthHalf":F
    mul-float v2, p2, v4

    invoke-static {v2}, Lcom/lge/gles/GLESUtils;->convertScreenToSpace(F)F

    move-result v0

    .line 363
    .local v0, "bitmapHeightHalf":F
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 364
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 366
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 367
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 369
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x6

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 370
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 372
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 373
    iget-object v2, p0, Lcom/lge/gles/GLESObject;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0
.end method
