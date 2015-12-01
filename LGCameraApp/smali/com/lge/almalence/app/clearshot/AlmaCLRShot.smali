.class public Lcom/lge/almalence/app/clearshot/AlmaCLRShot;
.super Ljava/lang/Object;
.source "AlmaCLRShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;,
        Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;,
        Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;,
        Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;
    }
.end annotation


# static fields
.field private static final BITMAP_MARGIN:I = 0x6

.field private static final DOWN_DIRECTION:I = 0x2

.field private static IMAGE_TO_LAYOUT:I = 0x0

.field private static final LEFT_DIRECTION:I = 0x3

.field private static final MAX_INPUT_FRAME:I = 0x8

.field private static final RIGHT_DIRECTION:I = 0x1

.field private static final UP_DIRECTION:I

.field private static mInstance:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

.field private static final syncObject:Ljava/lang/Object;


# instance fields
.field private ARGBBuffer:[I

.field private final TAG:Ljava/lang/String;

.field private mAngle:I

.field private mAutoLayout:[B

.field private mBaseArea:[I

.field private mBaseFrameIndex:I

.field private mBoarderRect:[Landroid/graphics/Rect;

.field private mCrop:[I

.field private mEnumObj:[B

.field private mGhosting:I

.field private mInputFrameFormat:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

.field private mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

.field private mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

.field private mManualLayout:[B

.field private mMinSize:I

.field private mNumOfFrame:I

.field private mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

.field private mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

.field private mOnProcessingListener:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;

.field private mOutNV21:I

.field private mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

.field private mSensitivity:I

.field private mTotalObj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x8

    sput v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->syncObject:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    invoke-direct {v0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;-><init>()V

    sput-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInstance:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    .line 1139
    const-string v0, "almashot-clr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    .line 35
    iput v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    .line 36
    new-instance v0, Lcom/lge/almalence/app/clearshot/Size;

    invoke-direct {v0, v3, v3}, Lcom/lge/almalence/app/clearshot/Size;-><init>(II)V

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 37
    new-instance v0, Lcom/lge/almalence/app/clearshot/Size;

    invoke-direct {v0, v3, v3}, Lcom/lge/almalence/app/clearshot/Size;-><init>(II)V

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 38
    new-instance v0, Lcom/lge/almalence/app/clearshot/Size;

    invoke-direct {v0, v3, v3}, Lcom/lge/almalence/app/clearshot/Size;-><init>(II)V

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 39
    iput v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    .line 40
    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->ARGBBuffer:[I

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    .line 48
    iput v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    .line 49
    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .line 50
    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .line 51
    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    .line 52
    iput v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    .line 54
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    .line 55
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    .line 56
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    .line 57
    sget-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->JPEG:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    iput-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameFormat:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    .line 63
    return-void
.end method

.method private static native ConvertFromJpeg([I[IIII)I
.end method

.method private static native ConvertToARGB(III)[I
.end method

.method private static native ConvertToJpeg(III)[B
.end method

.method private static native Initialize()Ljava/lang/String;
.end method

.method private static native JpegToNV21([BII)[B
.end method

.method private static native MovObjEnumerate(ILcom/lge/almalence/app/clearshot/Size;[B[BI)I
.end method

.method private static native MovObjFixHoles(Lcom/lge/almalence/app/clearshot/Size;[BI)I
.end method

.method private static native MovObjProcess(ILcom/lge/almalence/app/clearshot/Size;II[I[I[BIII)I
.end method

.method private static native NV12toARGB(ILcom/lge/almalence/app/clearshot/Size;Landroid/graphics/Rect;Lcom/lge/almalence/app/clearshot/Size;)[I
.end method

.method private static native NV21toARGB(ILcom/lge/almalence/app/clearshot/Size;Landroid/graphics/Rect;Lcom/lge/almalence/app/clearshot/Size;)[I
.end method

.method private static native Release(I)I
.end method

.method private static native getInputFrame(I)I
.end method

.method public static getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInstance:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    invoke-direct {v0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;-><init>()V

    sput-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInstance:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    .line 70
    :cond_0
    sget-object v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInstance:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    return-object v0
.end method

.method private getLayoutPos(FF)I
    .locals 7
    .param p1, "xx"    # F
    .param p2, "yy"    # F

    .prologue
    .line 365
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v6

    int-to-float v4, v6

    .line 366
    .local v4, "xw":F
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v6

    int-to-float v3, v6

    .line 367
    .local v3, "xh":F
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v6

    int-to-float v1, v6

    .line 368
    .local v1, "w":F
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 369
    .local v0, "h":F
    const/4 v2, 0x0

    .line 370
    .local v2, "x":I
    const/4 v5, 0x0

    .line 371
    .local v5, "y":I
    mul-float v6, p1, v1

    div-float/2addr v6, v4

    float-to-int v2, v6

    .line 372
    mul-float v6, p2, v0

    div-float/2addr v6, v3

    float-to-int v5, v6

    .line 374
    float-to-int v6, v1

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    return v6
.end method

.method private getLayoutXPos(F)I
    .locals 3
    .param p1, "xx"    # F

    .prologue
    .line 393
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 394
    .local v1, "xw":F
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    int-to-float v0, v2

    .line 395
    .local v0, "w":F
    mul-float v2, p1, v0

    div-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private getLayoutYPos(F)I
    .locals 3
    .param p1, "yy"    # F

    .prologue
    .line 399
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v2

    int-to-float v1, v2

    .line 400
    .local v1, "xh":F
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 401
    .local v0, "h":F
    mul-float v2, p1, v0

    div-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private getObjBorderSource(ILandroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 27
    .param p1, "index"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 440
    const/4 v7, 0x0

    .line 441
    .local v7, "i":I
    const/16 v17, 0x0

    .line 442
    .local v17, "x":I
    const/16 v20, 0x0

    .line 443
    .local v20, "y":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 444
    .local v16, "w":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 445
    .local v6, "h":I
    const/16 v18, -0x1

    .line 446
    .local v18, "x_starting":I
    const/16 v21, -0x1

    .line 447
    .local v21, "y_starting":I
    const/4 v9, 0x1

    .line 448
    .local v9, "last_direction":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v24

    mul-int v23, v23, v24

    move/from16 v0, v23

    new-array v15, v0, [B

    .line 449
    .local v15, "tmpBuffer":[B
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v24

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 451
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int/lit8 v22, v23, -0x1

    .local v22, "yy":I
    :goto_0
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    .line 452
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int/lit8 v19, v23, -0x1

    .local v19, "xx":I
    :goto_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 453
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getLayoutPos(FF)I

    move-result v14

    .line 454
    .local v14, "pos":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v23, v19, v23

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v24

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v22, v25

    mul-int v24, v24, v25

    add-int v10, v23, v24

    .line 456
    .local v10, "new_pos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 452
    :cond_0
    :goto_2
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 460
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v14

    aput-byte v23, v15, v10

    .line 462
    aget-byte v23, v15, v10

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 463
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v17, v19, v23

    .line 464
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v20, v22, v23

    goto :goto_2

    .line 451
    .end local v10    # "new_pos":I
    .end local v14    # "pos":I
    :cond_2
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_0

    .line 470
    .end local v19    # "xx":I
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v3, "ListArray":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    move/from16 v18, v17

    .line 473
    move/from16 v21, v20

    .line 475
    new-instance v23, Landroid/graphics/Point;

    move-object/from16 v0, v23

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_4
    packed-switch v9, :pswitch_data_0

    .line 702
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v23, v7, 0x14

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 703
    new-instance v23, Landroid/graphics/Point;

    move-object/from16 v0, v23

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_6
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 707
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 708
    .local v12, "path":Landroid/graphics/Path;
    sget-object v23, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 709
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 712
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Point;

    .line 713
    .local v11, "p":Landroid/graphics/Point;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 714
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 715
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    .line 716
    .local v13, "point":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 480
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "p":Landroid/graphics/Point;
    .end local v12    # "path":Landroid/graphics/Path;
    .end local v13    # "point":Landroid/graphics/Point;
    :pswitch_0
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 481
    add-int/lit8 v23, v17, 0x1

    add-int/lit8 v24, v20, 0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_7

    .line 482
    add-int/lit8 v17, v17, 0x1

    .line 483
    add-int/lit8 v20, v20, 0x1

    .line 484
    const/4 v9, 0x2

    .line 485
    goto/16 :goto_3

    .line 488
    :cond_7
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 489
    add-int/lit8 v23, v20, 0x1

    mul-int v23, v23, v16

    add-int v23, v23, v17

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_8

    .line 490
    add-int/lit8 v20, v20, 0x1

    .line 491
    const/4 v9, 0x3

    .line 492
    goto/16 :goto_3

    .line 495
    :cond_8
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 496
    add-int/lit8 v23, v17, -0x1

    add-int/lit8 v24, v20, 0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 497
    add-int/lit8 v17, v17, -0x1

    .line 498
    add-int/lit8 v20, v20, 0x1

    .line 499
    const/4 v9, 0x3

    .line 500
    goto/16 :goto_3

    .line 503
    :cond_9
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 504
    add-int/lit8 v23, v17, -0x1

    mul-int v24, v16, v20

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_a

    .line 505
    const/4 v9, 0x0

    .line 506
    add-int/lit8 v17, v17, -0x1

    .line 507
    goto/16 :goto_3

    .line 510
    :cond_a
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    .line 511
    add-int/lit8 v23, v17, -0x1

    add-int/lit8 v24, v20, -0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_b

    .line 512
    add-int/lit8 v17, v17, -0x1

    .line 513
    add-int/lit8 v20, v20, -0x1

    .line 514
    const/4 v9, 0x0

    .line 515
    goto/16 :goto_3

    .line 518
    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_c

    .line 519
    add-int/lit8 v23, v20, -0x1

    mul-int v23, v23, v16

    add-int v23, v23, v17

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_c

    .line 520
    add-int/lit8 v20, v20, -0x1

    .line 521
    const/4 v9, 0x1

    .line 522
    goto/16 :goto_3

    .line 525
    :cond_c
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 526
    add-int/lit8 v23, v17, 0x1

    add-int/lit8 v24, v20, -0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 527
    add-int/lit8 v17, v17, 0x1

    .line 528
    add-int/lit8 v20, v20, -0x1

    .line 529
    const/4 v9, 0x1

    .line 530
    goto/16 :goto_3

    .line 535
    :pswitch_1
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_d

    .line 536
    add-int/lit8 v23, v17, -0x1

    add-int/lit8 v24, v20, 0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_d

    .line 537
    add-int/lit8 v17, v17, -0x1

    .line 538
    add-int/lit8 v20, v20, 0x1

    .line 539
    const/4 v9, 0x3

    .line 540
    goto/16 :goto_3

    .line 543
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    .line 544
    add-int/lit8 v23, v17, -0x1

    mul-int v24, v16, v20

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_e

    .line 545
    const/4 v9, 0x0

    .line 546
    add-int/lit8 v17, v17, -0x1

    .line 547
    goto/16 :goto_3

    .line 550
    :cond_e
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    .line 551
    add-int/lit8 v23, v17, -0x1

    add-int/lit8 v24, v20, -0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    .line 552
    add-int/lit8 v17, v17, -0x1

    .line 553
    add-int/lit8 v20, v20, -0x1

    .line 554
    const/4 v9, 0x0

    .line 555
    goto/16 :goto_3

    .line 558
    :cond_f
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    .line 559
    add-int/lit8 v23, v20, -0x1

    mul-int v23, v23, v16

    add-int v23, v23, v17

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_10

    .line 560
    add-int/lit8 v20, v20, -0x1

    .line 561
    const/4 v9, 0x1

    .line 562
    goto/16 :goto_3

    .line 565
    :cond_10
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_11

    .line 566
    add-int/lit8 v23, v17, 0x1

    add-int/lit8 v24, v20, -0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    .line 567
    add-int/lit8 v17, v17, 0x1

    .line 568
    add-int/lit8 v20, v20, -0x1

    .line 569
    const/4 v9, 0x1

    .line 570
    goto/16 :goto_3

    .line 573
    :cond_11
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    .line 574
    add-int/lit8 v23, v17, 0x1

    mul-int v24, v16, v20

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_12

    .line 575
    add-int/lit8 v17, v17, 0x1

    .line 576
    const/4 v9, 0x2

    .line 577
    goto/16 :goto_3

    .line 580
    :cond_12
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 581
    add-int/lit8 v23, v17, 0x1

    add-int/lit8 v24, v20, 0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 582
    add-int/lit8 v17, v17, 0x1

    .line 583
    add-int/lit8 v20, v20, 0x1

    .line 584
    const/4 v9, 0x2

    .line 585
    goto/16 :goto_3

    .line 590
    :pswitch_2
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_13

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_13

    .line 591
    add-int/lit8 v23, v17, -0x1

    add-int/lit8 v24, v20, -0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_13

    .line 592
    add-int/lit8 v17, v17, -0x1

    .line 593
    add-int/lit8 v20, v20, -0x1

    .line 594
    const/4 v9, 0x0

    .line 595
    goto/16 :goto_3

    .line 598
    :cond_13
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_14

    .line 599
    add-int/lit8 v23, v20, -0x1

    mul-int v23, v23, v16

    add-int v23, v23, v17

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_14

    .line 600
    add-int/lit8 v20, v20, -0x1

    .line 601
    const/4 v9, 0x1

    .line 602
    goto/16 :goto_3

    .line 605
    :cond_14
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_15

    .line 606
    add-int/lit8 v23, v17, 0x1

    add-int/lit8 v24, v20, -0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_15

    .line 607
    add-int/lit8 v17, v17, 0x1

    .line 608
    add-int/lit8 v20, v20, -0x1

    .line 609
    const/4 v9, 0x1

    .line 610
    goto/16 :goto_3

    .line 613
    :cond_15
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_16

    .line 614
    add-int/lit8 v23, v17, 0x1

    mul-int v24, v16, v20

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_16

    .line 615
    add-int/lit8 v17, v17, 0x1

    .line 616
    const/4 v9, 0x2

    .line 617
    goto/16 :goto_3

    .line 620
    :cond_16
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    .line 621
    add-int/lit8 v23, v17, 0x1

    add-int/lit8 v24, v20, 0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_17

    .line 622
    add-int/lit8 v17, v17, 0x1

    .line 623
    add-int/lit8 v20, v20, 0x1

    .line 624
    const/4 v9, 0x2

    .line 625
    goto/16 :goto_3

    .line 628
    :cond_17
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    .line 629
    add-int/lit8 v23, v20, 0x1

    mul-int v23, v23, v16

    add-int v23, v23, v17

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_18

    .line 630
    add-int/lit8 v20, v20, 0x1

    .line 631
    const/4 v9, 0x3

    .line 632
    goto/16 :goto_3

    .line 635
    :cond_18
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 636
    add-int/lit8 v23, v17, -0x1

    add-int/lit8 v24, v20, 0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 637
    add-int/lit8 v17, v17, -0x1

    .line 638
    add-int/lit8 v20, v20, 0x1

    .line 639
    const/4 v9, 0x3

    .line 640
    goto/16 :goto_3

    .line 645
    :pswitch_3
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_19

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_19

    .line 646
    add-int/lit8 v23, v17, 0x1

    add-int/lit8 v24, v20, -0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_19

    .line 647
    add-int/lit8 v17, v17, 0x1

    .line 648
    add-int/lit8 v20, v20, -0x1

    .line 649
    const/4 v9, 0x1

    .line 650
    goto/16 :goto_3

    .line 653
    :cond_19
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_1a

    .line 654
    add-int/lit8 v23, v17, 0x1

    mul-int v24, v16, v20

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_1a

    .line 655
    add-int/lit8 v17, v17, 0x1

    .line 656
    const/4 v9, 0x2

    .line 657
    goto/16 :goto_3

    .line 660
    :cond_1a
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_1b

    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1b

    .line 661
    add-int/lit8 v23, v17, 0x1

    add-int/lit8 v24, v20, 0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_1b

    .line 662
    add-int/lit8 v17, v17, 0x1

    .line 663
    add-int/lit8 v20, v20, 0x1

    .line 664
    const/4 v9, 0x2

    .line 665
    goto/16 :goto_3

    .line 668
    :cond_1b
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1c

    .line 669
    add-int/lit8 v23, v20, 0x1

    mul-int v23, v23, v16

    add-int v23, v23, v17

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_1c

    .line 670
    add-int/lit8 v20, v20, 0x1

    .line 671
    const/4 v9, 0x3

    .line 672
    goto/16 :goto_3

    .line 676
    :cond_1c
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_1d

    .line 677
    add-int/lit8 v23, v17, -0x1

    add-int/lit8 v24, v20, 0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_1d

    .line 678
    add-int/lit8 v17, v17, -0x1

    .line 679
    add-int/lit8 v20, v20, 0x1

    .line 680
    const/4 v9, 0x3

    .line 681
    goto/16 :goto_3

    .line 684
    :cond_1d
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_1e

    .line 685
    add-int/lit8 v23, v17, -0x1

    mul-int v24, v16, v20

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_1e

    .line 686
    add-int/lit8 v17, v17, -0x1

    .line 687
    const/4 v9, 0x0

    .line 688
    goto/16 :goto_3

    .line 691
    :cond_1e
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 692
    add-int/lit8 v23, v17, -0x1

    add-int/lit8 v24, v20, -0x1

    mul-int v24, v24, v16

    add-int v23, v23, v24

    aget-byte v23, v15, v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 693
    add-int/lit8 v17, v17, -0x1

    .line 694
    add-int/lit8 v20, v20, -0x1

    .line 695
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 719
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "p":Landroid/graphics/Point;
    .restart local v12    # "path":Landroid/graphics/Path;
    :cond_1f
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 721
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 722
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/16 v23, 0x4c

    const/16 v24, 0x46

    const/16 v25, 0xcc

    const/16 v26, 0xff

    invoke-static/range {v23 .. v26}, Landroid/graphics/Color;->argb(IIII)I

    move-result v23

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    sget-object v23, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 724
    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 726
    const/16 v23, 0xb4

    const/16 v24, 0x0

    const/16 v25, 0x55

    const/16 v26, 0x76

    invoke-static/range {v23 .. v26}, Landroid/graphics/Color;->argb(IIII)I

    move-result v23

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 727
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 728
    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 729
    return-object v4

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getObjectBitmap(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "objectIndex"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v5}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v16, v4, v5

    .line 1057
    .local v16, "ratio":F
    const/4 v3, 0x0

    .line 1058
    .local v3, "buffer":[I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-gez v4, :cond_1

    .line 1059
    :cond_0
    const/4 v4, 0x0

    .line 1118
    :goto_0
    return-object v4

    .line 1063
    :cond_1
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v5}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    mul-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    mul-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v8}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v8

    div-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v8}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    const/16 v22, 0x3

    aget v9, v9, v22

    mul-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v9}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v9

    div-int/2addr v8, v9

    add-int/2addr v7, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1070
    .local v17, "rect_adj":Landroid/graphics/Rect;
    new-instance v18, Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    float-to-int v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v16

    float-to-int v5, v5

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Lcom/lge/almalence/app/clearshot/Size;-><init>(II)V

    .line 1071
    .local v18, "size":Lcom/lge/almalence/app/clearshot/Size;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameFormat:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    sget-object v5, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->YUV420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    if-ne v4, v5, :cond_3

    .line 1072
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    invoke-static {v4}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInputFrame(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v5, v0, v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->NV12toARGB(ILcom/lge/almalence/app/clearshot/Size;Landroid/graphics/Rect;Lcom/lge/almalence/app/clearshot/Size;)[I

    move-result-object v3

    .line 1077
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_4

    .line 1078
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1074
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    invoke-static {v4}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInputFrame(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v5, v0, v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->NV21toARGB(ILcom/lge/almalence/app/clearshot/Size;Landroid/graphics/Rect;Lcom/lge/almalence/app/clearshot/Size;)[I

    move-result-object v3

    goto :goto_1

    .line 1081
    :cond_4
    const/4 v14, 0x0

    .line 1082
    .local v14, "pos":I
    const/4 v13, 0x0

    .line 1083
    .local v13, "obj":I
    const/16 v20, 0x0

    .line 1084
    .local v20, "xy":I
    const/16 v10, 0xff

    .line 1085
    .local v10, "alpha":I
    const/4 v15, 0x0

    .line 1086
    .local v15, "r":I
    const/4 v12, 0x0

    .line 1087
    .local v12, "g":I
    const/4 v11, 0x0

    .line 1088
    .local v11, "b":I
    const/16 v21, 0x0

    .local v21, "yy":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_9

    .line 1089
    const/16 v19, 0x0

    .local v19, "xx":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_8

    .line 1090
    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    div-float v5, v5, v16

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v5}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 1091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v5, "width out of range"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_5
    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float v5, v5, v16

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v5}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v5, "height out of range"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_6
    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    div-float v5, v5, v16

    add-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    div-float v6, v6, v16

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getLayoutPos(FF)I

    move-result v14

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    aget-byte v13, v4, v14

    .line 1101
    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    mul-int v4, v4, v21

    add-int v20, v19, v4

    .line 1103
    add-int/lit8 v4, p1, 0x1

    if-ne v13, v4, :cond_7

    .line 1104
    aget v4, v3, v20

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v15, v4, 0xff

    .line 1105
    aget v4, v3, v20

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v12, v4, 0xff

    .line 1106
    aget v4, v3, v20

    shr-int/lit8 v4, v4, 0x0

    and-int/lit16 v11, v4, 0xff

    .line 1108
    const/high16 v4, -0x1000000

    shl-int/lit8 v5, v15, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v12, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v11

    aput v4, v3, v20

    .line 1089
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 1110
    :cond_7
    const/4 v4, 0x0

    aput v4, v3, v20

    goto :goto_4

    .line 1088
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 1115
    .end local v19    # "xx":I
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1116
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v8

    invoke-virtual/range {v18 .. v18}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1117
    const/4 v3, 0x0

    .line 1118
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->rotateBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private getReversePos(I)[I
    .locals 10
    .param p1, "pos"    # I

    .prologue
    .line 378
    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v8}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v8

    int-to-float v5, v8

    .line 379
    .local v5, "xw":F
    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v8}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v8

    int-to-float v4, v8

    .line 380
    .local v4, "xh":F
    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v8}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 381
    .local v1, "w":F
    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v8}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 383
    .local v0, "h":F
    float-to-int v8, v1

    rem-int v2, p1, v8

    .line 384
    .local v2, "x":I
    float-to-int v8, v1

    div-int v6, p1, v8

    .line 386
    .local v6, "y":I
    int-to-float v8, v2

    mul-float/2addr v8, v5

    div-float/2addr v8, v1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 387
    .local v3, "x1":I
    int-to-float v8, v6

    mul-float/2addr v8, v4

    div-float/2addr v8, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 389
    .local v7, "y1":I
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    const/4 v9, 0x1

    aput v7, v8, v9

    return-object v8
.end method

.method private declared-synchronized removeProcessing([B)V
    .locals 12
    .param p1, "layout"    # [B

    .prologue
    .line 1025
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    if-eqz v0, :cond_0

    .line 1026
    iget v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    invoke-static {v0}, Lcom/lge/almalence/app/clearshot/SwapHeap;->FreeFromHeap(I)Z

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    .line 1030
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1031
    .local v10, "start":J
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameFormat:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    sget-object v1, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->YUV420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    if-ne v0, v1, :cond_1

    .line 1033
    iget v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mSensitivity:I

    iget v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mMinSize:I

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    iget-object v5, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v7, 0x1

    iget v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mGhosting:I

    sget v9, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    move-object v6, p1

    invoke-static/range {v0 .. v9}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->MovObjProcess(ILcom/lge/almalence/app/clearshot/Size;II[I[I[BIII)I

    move-result v0

    iput v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    .line 1038
    :goto_0
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovObjProcess() elapsed time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCrop[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCrop[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCrop[2] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCrop[3] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    monitor-exit p0

    return-void

    .line 1035
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mSensitivity:I

    iget v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mMinSize:I

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    iget-object v5, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v7, 0x0

    iget v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mGhosting:I

    sget v9, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    move-object v6, p1

    invoke-static/range {v0 .. v9}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->MovObjProcess(ILcom/lge/almalence/app/clearshot/Size;II[I[I[BIII)I

    move-result v0

    iput v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1025
    .end local v10    # "start":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "angle"    # I

    .prologue
    const/4 v1, 0x0

    .line 333
    if-nez p1, :cond_1

    .line 343
    .end local p1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 336
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p4, :cond_0

    .line 339
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 340
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 341
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 342
    .local v7, "rotImage":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v7

    .line 343
    goto :goto_0
.end method

.method private rotateObjRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 236
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    if-nez v1, :cond_0

    .line 254
    .end local p1    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object p1

    .line 239
    .restart local p1    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    .line 240
    .local v0, "newRect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move-object p1, v0

    .line 254
    goto :goto_0

    .line 242
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "newRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 243
    .restart local v0    # "newRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 245
    :sswitch_1
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "newRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 249
    .restart local v0    # "newRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 251
    :sswitch_2
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "newRect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0    # "newRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private rotateRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 258
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    if-nez v1, :cond_0

    .line 276
    .end local p1    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object p1

    .line 261
    .restart local p1    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    .line 262
    .local v0, "newRect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move-object p1, v0

    .line 276
    goto :goto_0

    .line 264
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "newRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 265
    .restart local v0    # "newRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 267
    :sswitch_1
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "newRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    .restart local v0    # "newRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 273
    :sswitch_2
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "newRect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0    # "newRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 262
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private scanLayoutforRect()[Landroid/graphics/Rect;
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 405
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    .line 406
    .local v4, "width":I
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v0

    .line 408
    .local v0, "height":I
    iget v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    new-array v3, v7, [Landroid/graphics/Rect;

    .line 410
    .local v3, "rect":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    if-ge v1, v7, :cond_0

    .line 411
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v7, v3, v1

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_0
    const/4 v2, 0x0

    .line 414
    .local v2, "obj":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    if-ge v6, v0, :cond_a

    .line 415
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_2
    if-ge v5, v4, :cond_9

    .line 416
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    mul-int v8, v6, v4

    add-int/2addr v8, v5

    aget-byte v2, v7, v8

    .line 417
    if-lez v2, :cond_8

    .line 418
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-gt v7, v5, :cond_1

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v7, v9, :cond_2

    .line 419
    :cond_1
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 421
    :cond_2
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-lt v7, v5, :cond_3

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ne v7, v9, :cond_4

    .line 422
    :cond_3
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 425
    :cond_4
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-gt v7, v6, :cond_5

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ne v7, v9, :cond_6

    .line 426
    :cond_5
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 429
    :cond_6
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v6, :cond_7

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v9, :cond_8

    .line 430
    :cond_7
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v3, v7

    iput v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 415
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 414
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 435
    .end local v5    # "x":I
    :cond_a
    return-object v3
.end method

.method private static native setInputFrame(II)V
.end method

.method private declared-synchronized updateLayout()V
    .locals 5

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1048
    iget v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    iget v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->MovObjEnumerate(ILcom/lge/almalence/app/clearshot/Size;[B[BI)I

    move-result v0

    iput v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    .line 1049
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->MovObjFixHoles(Lcom/lge/almalence/app/clearshot/Size;[BI)I

    .line 1050
    iget-object v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    invoke-static {v0, v1, v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->MovObjFixHoles(Lcom/lge/almalence/app/clearshot/Size;[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    monitor-exit p0

    return-void

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addInputFrame(Ljava/util/List;Lcom/lge/almalence/app/clearshot/Size;Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;)V
    .locals 16
    .param p2, "size"    # Lcom/lge/almalence/app/clearshot/Size;
    .param p3, "e"    # Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/lge/almalence/app/clearshot/Size;",
            "Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "inputFrame":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    .line 121
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 122
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameFormat:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    .line 124
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    const/16 v11, 0x8

    if-le v10, v11, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Number of Input Frame = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Too Many Input Frame"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 129
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v10}, Lcom/lge/almalence/app/clearshot/Size;->isValid()Z

    move-result v10

    if-nez v10, :cond_1

    .line 130
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v11, "Input frame size is wrong "

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Too Many Input Frame"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 134
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v10}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v11}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    int-to-long v6, v10

    .line 135
    .local v6, "pixels":J
    const-wide/32 v10, 0x753000

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    .line 136
    const/16 v10, 0x10

    sput v10, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    .line 141
    :goto_0
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->Initialize()Ljava/lang/String;

    .line 143
    sget-object v11, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->syncObject:Ljava/lang/Object;

    monitor-enter v11

    .line 144
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameFormat:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    sget-object v12, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->JPEG:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    if-ne v10, v12, :cond_6

    .line 145
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    new-array v3, v10, [I

    .line 146
    .local v3, "PointOfJpegData":[I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    new-array v2, v10, [I

    .line 148
    .local v2, "LengthOfJpegData":[I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 149
    .local v8, "start":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    if-ge v5, v10, :cond_4

    .line 150
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10}, Lcom/lge/almalence/app/clearshot/SwapHeap;->SwapToHeap([B)I

    move-result v10

    aput v10, v3, v5

    .line 151
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    aput v10, v2, v5

    .line 152
    aget v10, v3, v5

    if-nez v10, :cond_3

    .line 153
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v12, "Out of Memory in Native"

    invoke-static {v10, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v10, Ljava/lang/Exception;

    const-string v12, "Out of Memory in Native"

    invoke-direct {v10, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 177
    .end local v2    # "LengthOfJpegData":[I
    .end local v3    # "PointOfJpegData":[I
    .end local v5    # "i":I
    .end local v8    # "start":J
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 138
    :cond_2
    const/16 v10, 0x8

    sput v10, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    goto :goto_0

    .line 149
    .restart local v2    # "LengthOfJpegData":[I
    .restart local v3    # "PointOfJpegData":[I
    .restart local v5    # "i":I
    .restart local v8    # "start":J
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 158
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    invoke-virtual/range {p2 .. p2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v13

    invoke-static {v3, v2, v10, v12, v13}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->ConvertFromJpeg([I[IIII)I

    move-result v4

    .line 159
    .local v4, "error":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConvertFromJpeg() elapsed time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-gez v4, :cond_5

    .line 161
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v12, "Out Of Memory"

    invoke-static {v10, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v10, Ljava/lang/Exception;

    const-string v12, "Out Of Memory"

    invoke-direct {v10, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 163
    :cond_5
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    if-ge v4, v10, :cond_a

    .line 164
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "JPEG buffer is wrong in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " frame"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v10, Ljava/lang/Exception;

    const-string v12, "Out Of Memory"

    invoke-direct {v10, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 167
    .end local v2    # "LengthOfJpegData":[I
    .end local v3    # "PointOfJpegData":[I
    .end local v4    # "error":I
    .end local v5    # "i":I
    .end local v8    # "start":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameFormat:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    sget-object v12, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->YUV420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    if-eq v10, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameFormat:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    sget-object v12, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->YVU420SP:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    if-ne v10, v12, :cond_9

    .line 168
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    if-ge v5, v10, :cond_a

    .line 169
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    invoke-virtual/range {p2 .. p2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v13

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x2

    if-eq v10, v12, :cond_8

    .line 170
    new-instance v10, Ljava/lang/Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input Frame Size is wrong"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " frame"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 172
    :cond_8
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10}, Lcom/lge/almalence/app/clearshot/SwapHeap;->SwapToHeap([B)I

    move-result v10

    invoke-static {v10, v5}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->setInputFrame(II)V

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 175
    .end local v5    # "i":I
    :cond_9
    new-instance v10, Ljava/lang/Exception;

    const-string v12, "Unknown Input Format"

    invoke-direct {v10, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 177
    .restart local v5    # "i":I
    :cond_a
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    return-void
.end method

.method public getNumOfFrame()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    return v0
.end method

.method public declared-synchronized getObjBorderBitmap(Landroid/graphics/Paint;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    .locals 10
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v9, 0x40a00000    # 5.0f

    .line 734
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v5, "getObjBoundaryBitmap() -- start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    if-eqz v4, :cond_0

    .line 737
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :goto_0
    monitor-exit p0

    return-object v4

    .line 740
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    new-array v4, v4, [Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .line 741
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 742
    invoke-direct {p0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->scanLayoutforRect()[Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    .line 745
    :cond_1
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v5}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float v3, v4, v5

    .line 747
    .local v3, "ratio":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    if-ge v2, v4, :cond_6

    .line 748
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mObjBorderInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 747
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 752
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    sub-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 757
    .local v1, "PreviewRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    sub-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 762
    .local v0, "LayoutRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v8}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v1, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 763
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v8}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v0, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 765
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    new-instance v5, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    invoke-direct {v5, p0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;-><init>(Lcom/lge/almalence/app/clearshot/AlmaCLRShot;)V

    aput-object v5, v4, v2

    .line 766
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    aget-object v4, v4, v2

    invoke-direct {p0, v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->rotateRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->mRect:Landroid/graphics/Rect;

    .line 767
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5

    .line 768
    :cond_4
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->mThumb:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 734
    .end local v0    # "LayoutRect":Landroid/graphics/Rect;
    .end local v1    # "PreviewRect":Landroid/graphics/Rect;
    .end local v2    # "i":I
    .end local v3    # "ratio":F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 771
    .restart local v0    # "LayoutRect":Landroid/graphics/Rect;
    .restart local v1    # "PreviewRect":Landroid/graphics/Rect;
    .restart local v2    # "i":I
    .restart local v3    # "ratio":F
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    aget-object v4, v4, v2

    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v5, p1, v0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getObjBorderSource(ILandroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->rotateBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->mThumb:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 773
    .end local v0    # "LayoutRect":Landroid/graphics/Rect;
    .end local v1    # "PreviewRect":Landroid/graphics/Rect;
    :cond_6
    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getObjectInfoList()[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    .locals 12

    .prologue
    const/high16 v11, 0x40c00000    # 6.0f

    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v7, "getObjectInfoList() -- start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 283
    .local v4, "start":J
    iget v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    if-nez v6, :cond_0

    .line 284
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_0
    monitor-exit p0

    return-object v6

    .line 287
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    if-eqz v6, :cond_1

    .line 288
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    goto :goto_0

    .line 290
    :cond_1
    iget v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    new-array v6, v6, [Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    iput-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .line 292
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->scanLayoutforRect()[Landroid/graphics/Rect;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    .line 296
    :cond_2
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    div-float v3, v6, v7

    .line 298
    .local v3, "ratio":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    if-ge v1, v6, :cond_4

    .line 299
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mObjInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sget v7, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sget v8, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x6

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v8, v8, v1

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sget v9, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    mul-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x6

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v9, v9, v1

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sget v10, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    mul-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x6

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 306
    .local v2, "orgRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v9}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v10}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v2, v6}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 308
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    sub-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v8, v8, v1

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    add-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    aget-object v9, v9, v1

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    add-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 313
    .local v0, "PreviewRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v9}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v10}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v0, v6}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 315
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    new-instance v7, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    invoke-direct {v7, p0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;-><init>(Lcom/lge/almalence/app/clearshot/AlmaCLRShot;)V

    aput-object v7, v6, v1

    .line 316
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    aget-object v6, v6, v1

    invoke-direct {p0, v1, v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getObjectBitmap(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 317
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    aget-object v6, v6, v1

    invoke-direct {p0, v0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->rotateRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, v6, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->objectRect:Landroid/graphics/Rect;

    .line 318
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOnProcessingListener:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;

    if-eqz v6, :cond_3

    .line 319
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOnProcessingListener:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    aget-object v7, v7, v1

    invoke-interface {v6, v7}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;->onObjectCreated(Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;)V

    .line 298
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 323
    .end local v0    # "PreviewRect":Landroid/graphics/Rect;
    .end local v2    # "orgRect":Landroid/graphics/Rect;
    :cond_4
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOnProcessingListener:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;

    if-eqz v6, :cond_5

    .line 324
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOnProcessingListener:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    invoke-interface {v6, v7}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;->onProcessingComplete([Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;)V

    .line 327
    :cond_5
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getObjectInfoList() elapsed time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v7, "getObjectInfoList() -- end"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 280
    .end local v1    # "i":I
    .end local v3    # "ratio":F
    .end local v4    # "start":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getOccupiedObject(FF)I
    .locals 5
    .param p1, "lx"    # F
    .param p2, "ly"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "x":F
    const/4 v1, 0x0

    .line 877
    .local v1, "y":F
    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    sparse-switch v2, :sswitch_data_0

    .line 896
    :goto_0
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 897
    :cond_0
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Coordiation is invalid x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid touch position"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 879
    :sswitch_0
    move v0, p1

    .line 880
    move v1, p2

    .line 881
    goto :goto_0

    .line 883
    :sswitch_1
    move v0, p2

    .line 884
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, p1

    .line 885
    goto :goto_0

    .line 887
    :sswitch_2
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    .line 888
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, p2

    .line 889
    goto :goto_0

    .line 891
    :sswitch_3
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 892
    move v1, p1

    goto :goto_0

    .line 901
    :cond_1
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    invoke-direct {p0, v0, v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getLayoutPos(FF)I

    move-result v3

    aget-byte v2, v2, v3

    return v2

    .line 877
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v3, "getPreviewBitmap() -- start"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v3

    invoke-direct {v8, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    .local v8, "rect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-static {v1, v3, v8, v4}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->NV21toARGB(ILcom/lge/almalence/app/clearshot/Size;Landroid/graphics/Rect;Lcom/lge/almalence/app/clearshot/Size;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->ARGBBuffer:[I

    .line 353
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->ARGBBuffer:[I

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->ARGBBuffer:[I

    .line 356
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v2, "getPreviewBitmap() -- end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->rotateBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getTotalObjNum()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    return v0
.end method

.method public initialize(Lcom/lge/almalence/app/clearshot/Size;IIIIILcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;)Z
    .locals 7
    .param p1, "previewSize"    # Lcom/lge/almalence/app/clearshot/Size;
    .param p2, "angle"    # I
    .param p3, "baseFrame"    # I
    .param p4, "sensitivity"    # I
    .param p5, "minSize"    # I
    .param p6, "ghosting"    # I
    .param p7, "listener"    # Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 183
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v3, "initialize() -- start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput p6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mGhosting:I

    .line 185
    iput-object p1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 186
    iput p3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    .line 187
    iput p4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mSensitivity:I

    .line 188
    iput p5, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mMinSize:I

    .line 189
    iput-object p7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOnProcessingListener:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;

    .line 190
    iput p2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    .line 191
    new-instance v2, Lcom/lge/almalence/app/clearshot/Size;

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v3

    sget v4, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v4

    sget v5, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->IMAGE_TO_LAYOUT:I

    div-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/lge/almalence/app/clearshot/Size;-><init>(II)V

    iput-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 193
    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAngle:I

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_0

    .line 194
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v3, "Angle is invalid"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Angle is invalid"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v3, "Preview size is wrong"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Too Many Input Frame"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_1
    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mSensitivity:I

    const/16 v3, -0xf

    if-lt v2, v3, :cond_2

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mSensitivity:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_3

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v3, "Sensitivity value is wrong"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Sensitivity value is wrong"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_3
    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mMinSize:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mMinSize:I

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_5

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v3, "MinSize value is wrong"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Sensitivity value is wrong"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_5
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 215
    .local v1, "length":I
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    .line 216
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    .line 217
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    .line 218
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    .line 219
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseArea:[I

    .line 220
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    iget v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    aput v3, v2, v6

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 223
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    iget v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_6
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    .line 228
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    invoke-direct {p0, v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->removeProcessing([B)V

    .line 229
    invoke-direct {p0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->updateLayout()V

    .line 231
    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v3, "initialize() -- end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x1

    return v2
.end method

.method public isRemoved(I)Z
    .locals 8
    .param p1, "ObjIndex"    # I

    .prologue
    const/4 v5, 0x1

    .line 943
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v1

    .line 944
    .local v1, "width":I
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v0

    .line 945
    .local v0, "height":I
    const/4 v3, 0x0

    .line 946
    .local v3, "xy":I
    const/4 v4, 0x0

    .local v4, "yy":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 947
    const/4 v2, 0x0

    .local v2, "xx":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 948
    mul-int v6, v4, v1

    add-int v3, v2, v6

    .line 949
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    aget-byte v6, v6, v3

    if-ne v6, p1, :cond_2

    .line 950
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    aget-byte v6, v6, v3

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    aget-byte v7, v7, v3

    if-eq v6, v7, :cond_1

    .line 954
    .end local v2    # "xx":I
    :cond_0
    :goto_2
    return v5

    .line 950
    .restart local v2    # "xx":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 947
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 946
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public isRemoved(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 905
    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    .line 906
    .local v2, "previewW":I
    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v1

    .line 908
    .local v1, "previewH":I
    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v1, :cond_0

    .line 909
    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v4, "Invalid touch position"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Invalid touch position"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 913
    :cond_0
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {p0, v3, v4}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getLayoutPos(FF)I

    move-result v0

    .line 915
    .local v0, "pos":I
    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public processingSaveData()[B
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 958
    const/4 v7, 0x0

    .line 960
    .local v7, "jpegBuffer":[B
    new-instance v0, Landroid/graphics/YuvImage;

    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/lge/almalence/app/clearshot/SwapHeap;->SwapFromHeap(II)[B

    move-result-object v1

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 963
    .local v0, "out":Landroid/graphics/YuvImage;
    iput v10, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    .line 965
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 967
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v10, 0x3

    aget v5, v5, v10

    add-int/2addr v4, v5

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 969
    .local v9, "r":Landroid/graphics/Rect;
    const/16 v1, 0x5f

    invoke-virtual {v0, v9, v1, v8}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v2, "the compression is not successful"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_0
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 973
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "r":Landroid/graphics/Rect;
    :goto_0
    return-object v7

    .line 975
    :catch_0
    move-exception v6

    .line 976
    .local v6, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v2, "Exception occured"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 984
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release() start : mNumOfFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    sget-object v2, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 986
    :try_start_0
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    if-lez v1, :cond_0

    .line 987
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    invoke-static {v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->Release(I)I

    .line 990
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 991
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInputFrameSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 992
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 994
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->ARGBBuffer:[I

    .line 995
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    .line 997
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .line 998
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .line 999
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    .line 1001
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    .line 1002
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    .line 1003
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    .line 1004
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    .line 1006
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    if-eqz v1, :cond_1

    .line 1007
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I

    invoke-static {v1}, Lcom/lge/almalence/app/clearshot/SwapHeap;->FreeFromHeap(I)Z

    .line 1008
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mOutNV21:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mInstance:Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    .line 1019
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1020
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v2, "release() end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v3, "Instance is not finalized correctly"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1019
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public reverseObject(FF)V
    .locals 8
    .param p1, "lx"    # F
    .param p2, "ly"    # F

    .prologue
    .line 847
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v1

    .line 848
    .local v1, "layoutW":I
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v0

    .line 850
    .local v0, "layoutH":I
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    invoke-direct {p0, p1, p2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getLayoutPos(FF)I

    move-result v7

    aget-byte v2, v6, v7

    .line 852
    .local v2, "obj":B
    if-nez v2, :cond_0

    .line 870
    :goto_0
    return-void

    .line 855
    :cond_0
    const/4 v4, 0x0

    .line 856
    .local v4, "xy":I
    const/4 v5, 0x0

    .local v5, "yy":I
    :goto_1
    if-ge v5, v0, :cond_4

    .line 857
    const/4 v3, 0x0

    .local v3, "xx":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 858
    mul-int v6, v5, v1

    add-int v4, v3, v6

    .line 860
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    aget-byte v6, v6, v4

    if-ne v6, v2, :cond_1

    .line 861
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    aget-byte v6, v6, v4

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    aget-byte v7, v7, v4

    if-ne v6, v7, :cond_2

    .line 862
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    iget v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 857
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 864
    :cond_2
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    aget-byte v7, v7, v4

    aput-byte v7, v6, v4

    goto :goto_3

    .line 856
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 869
    .end local v3    # "xx":I
    :cond_4
    iget-object v6, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    invoke-direct {p0, v6}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->removeProcessing([B)V

    goto :goto_0
.end method

.method public setBaseFrame(I)V
    .locals 5
    .param p1, "base"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 920
    iget v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mNumOfFrame:I

    if-lt p1, v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v2, "Invalid Base Frame"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid Base Frame"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mCrop:[I

    const/4 v2, 0x4

    iput p1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    aput p1, v1, v2

    .line 927
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 928
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    iget v2, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    :cond_1
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 933
    iget-object v1, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    invoke-direct {p0, v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->removeProcessing([B)V

    .line 934
    invoke-direct {p0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->updateLayout()V

    .line 936
    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .line 937
    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mObjBorderInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .line 938
    iput-object v4, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBoarderRect:[Landroid/graphics/Rect;

    .line 939
    return-void
.end method

.method public setObject(IZ)V
    .locals 12
    .param p1, "objectIndex"    # I
    .param p2, "removed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v8, "setObject() -- start"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 818
    .local v2, "start":J
    iget v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    if-le p1, v7, :cond_0

    .line 819
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v8, "object index is greater than total number of object"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "object index is greater than total number of object"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 823
    :cond_0
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v1

    .line 824
    .local v1, "width":I
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v0

    .line 825
    .local v0, "height":I
    const/4 v5, 0x0

    .line 826
    .local v5, "xy":I
    const/4 v6, 0x0

    .local v6, "yy":I
    :goto_0
    if-ge v6, v0, :cond_4

    .line 827
    const/4 v4, 0x0

    .local v4, "xx":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 828
    mul-int v7, v6, v1

    add-int v5, v4, v7

    .line 829
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    aget-byte v7, v7, v5

    if-ne v7, p1, :cond_1

    .line 830
    if-nez p2, :cond_2

    .line 831
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    iget v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    .line 827
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 833
    :cond_2
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    iget-object v8, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    aget-byte v8, v8, v5

    aput-byte v8, v7, v5

    goto :goto_2

    .line 826
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 839
    .end local v4    # "xx":I
    :cond_4
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    invoke-direct {p0, v7}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->removeProcessing([B)V

    .line 841
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setObject() elapsed time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v7, p0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v8, "setObject() -- end"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public setObjectList([Z)V
    .locals 18
    .param p1, "objectIndex"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 778
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v15, "setObjectList() -- start"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 781
    .local v8, "start":J
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    if-le v14, v15, :cond_0

    .line 782
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "objectIndex.length = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mTotalObj = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mTotalObj:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v15, "object index is greater than total number of object"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    new-instance v14, Ljava/lang/Exception;

    const-string v15, "object index is greater than total number of object"

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 787
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v14}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v10

    .line 788
    .local v10, "width":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mLayoutSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v14}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v3

    .line 789
    .local v3, "height":I
    const/4 v7, 0x0

    .line 790
    .local v7, "obj":I
    const/4 v12, 0x0

    .line 791
    .local v12, "xy":I
    move-object/from16 v2, p1

    .local v2, "arr$":[Z
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_5

    aget-boolean v5, v2, v4

    .line 792
    .local v5, "isRemoved":Z
    const/4 v13, 0x0

    .local v13, "yy":I
    :goto_1
    if-ge v13, v3, :cond_4

    .line 793
    const/4 v11, 0x0

    .local v11, "xx":I
    :goto_2
    if-ge v11, v10, :cond_3

    .line 794
    mul-int v14, v13, v10

    add-int v12, v11, v14

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mEnumObj:[B

    aget-byte v14, v14, v12

    add-int/lit8 v15, v7, 0x1

    if-ne v14, v15, :cond_1

    .line 796
    if-nez v5, :cond_2

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mBaseFrameIndex:I

    int-to-byte v15, v15

    aput-byte v15, v14, v12

    .line 793
    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 799
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mAutoLayout:[B

    aget-byte v15, v15, v12

    aput-byte v15, v14, v12

    goto :goto_3

    .line 792
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 804
    .end local v11    # "xx":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 791
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 807
    .end local v5    # "isRemoved":Z
    .end local v13    # "yy":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->mManualLayout:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->removeProcessing([B)V

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setObjectList() elapsed time = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->TAG:Ljava/lang/String;

    const-string v15, "setObjectList() -- end"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-void
.end method
