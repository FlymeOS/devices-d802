.class public Lcom/lge/camera/PostviewClearShotActivity;
.super Lcom/lge/camera/ShotPostviewActivity;
.source "PostviewClearShotActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    }
.end annotation


# static fields
.field private static final CORNER_BOTTOM:I = 0x8

.field private static final CORNER_LEFT:I = 0x1

.field private static final CORNER_NONE:I = 0x0

.field private static final CORNER_RIGHT:I = 0x4

.field private static final CORNER_TOP:I = 0x2

.field private static final DASH_INTERVAL_DP:F = 2.0f

.field private static final DASH_PHASE_DP:F = 3.0f

.field private static final EXPAND_DIP:I = 0xf

.field private static final SMALL_SIZE:I = 0x2d

.field private static final STROKE_WIDTH_DP:F = 2.0f


# instance fields
.field private compressed_frame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mFirstClearShotDataSize:J

.field private mImageDegree:I

.field private mLoadCompleted:Z

.field private mMakeObjectInfoThread:Ljava/lang/Thread;

.field private mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

.field private mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

.field private mObjectInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

.field private mRealImageSize:Lcom/lge/almalence/app/clearshot/Size;

.field private mSaveClearShotImageThread:Ljava/lang/Thread;

.field private touchPoint:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/lge/almalence/app/clearshot/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lcom/lge/almalence/app/clearshot/Size;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mRealImageSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->compressed_frame:Ljava/util/ArrayList;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mFirstClearShotDataSize:J

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->touchPoint:[F

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    .line 331
    iput-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mLoadCompleted:Z

    .line 396
    iput-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .line 397
    iput-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .line 736
    iput-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mSaveClearShotImageThread:Ljava/lang/Thread;

    .line 994
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/camera/PostviewClearShotActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mLoadCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/PostviewClearShotActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->createObjectInformation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lge/camera/PostviewClearShotActivity;[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;
    .param p1, "x1"    # [Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/PostviewClearShotActivity;[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;
    .param p1, "x1"    # [Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/camera/PostviewClearShotActivity;Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;
    .param p1, "x1"    # Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewClearShotActivity;->addObjectInfoList(Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/camera/PostviewClearShotActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewClearShotActivity;->calcObjectRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/PostviewClearShotActivity;Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;
    .param p1, "x1"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/PostviewClearShotActivity;->expandObjectRect(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/PostviewClearShotActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/PostviewClearShotActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mImageDegree:I

    return v0
.end method

.method private addObjectInfoList(Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;)V
    .locals 2
    .param p1, "objectInfo"    # Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 679
    const-string v0, "CameraApp"

    const-string v1, "addObjectInfoList"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_0
    return-void
.end method

.method private calcObjectRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 24
    .param p1, "originRect"    # Landroid/graphics/Rect;

    .prologue
    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v21

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 631
    .local v9, "imageUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v10

    .line 632
    .local v10, "imageWidth":I
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v8

    .line 634
    .local v8, "imageHeight":I
    const/4 v12, 0x0

    .local v12, "leftMargin":I
    const/16 v19, 0x0

    .line 635
    .local v19, "topMargin":I
    const/4 v7, 0x0

    .line 637
    .local v7, "dstSize":[I
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v6

    .line 638
    .local v6, "degree":I
    move v14, v10

    .local v14, "orientWidth":I
    move v13, v8

    .line 640
    .local v13, "orientHeight":I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportRotateSaveImage()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 641
    if-eqz v6, :cond_0

    const/16 v21, 0xb4

    move/from16 v0, v21

    if-ne v6, v0, :cond_4

    :cond_0
    move v14, v10

    .line 642
    :goto_0
    if-eqz v6, :cond_1

    const/16 v21, 0xb4

    move/from16 v0, v21

    if-ne v6, v0, :cond_5

    :cond_1
    move v13, v8

    .line 646
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewClearShotActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewClearShotActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v4

    .line 648
    .local v4, "currOrientation":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14, v13, v4}, Lcom/lge/camera/util/Util;->calcFitSizeOfImageForLCD(Landroid/app/Activity;III)[I

    move-result-object v7

    .line 650
    const-string v21, "CameraApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dstSize[0] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget v23, v7, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", dstSize[1] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget v23, v7, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 653
    .local v15, "outMetrics":Landroid/util/DisplayMetrics;
    const-string v21, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewClearShotActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 654
    .local v20, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 656
    if-eqz v4, :cond_3

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v4, v0, :cond_7

    .line 658
    :cond_3
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v7, v22

    sub-int v21, v21, v22

    div-int/lit8 v12, v21, 0x2

    .line 659
    iget v0, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v7, v22

    sub-int v21, v21, v22

    div-int/lit8 v19, v21, 0x2

    .line 666
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 668
    .local v5, "currPreviewWidth":I
    :goto_4
    const/16 v21, 0x0

    aget v21, v7, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v5

    move/from16 v22, v0

    div-float v16, v21, v22

    .line 669
    .local v16, "ratio":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v11, v21, v12

    .line 670
    .local v11, "left":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v18, v21, v19

    .line 671
    .local v18, "top":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v17, v21, v12

    .line 672
    .local v17, "right":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v3, v21, v19

    .line 674
    .local v3, "bottom":I
    new-instance v21, Landroid/graphics/Rect;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v11, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v21

    .end local v3    # "bottom":I
    .end local v4    # "currOrientation":I
    .end local v5    # "currPreviewWidth":I
    .end local v11    # "left":I
    .end local v15    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v16    # "ratio":F
    .end local v17    # "right":I
    .end local v18    # "top":I
    .end local v20    # "wm":Landroid/view/WindowManager;
    :cond_4
    move v14, v8

    .line 641
    goto/16 :goto_0

    :cond_5
    move v13, v10

    .line 642
    goto/16 :goto_1

    .line 646
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 661
    .restart local v4    # "currOrientation":I
    .restart local v15    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v20    # "wm":Landroid/view/WindowManager;
    :cond_7
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v7, v22

    sub-int v21, v21, v22

    div-int/lit8 v12, v21, 0x2

    .line 662
    iget v0, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v7, v22

    sub-int v21, v21, v22

    div-int/lit8 v19, v21, 0x2

    goto/16 :goto_3

    :cond_8
    move v5, v10

    .line 666
    goto/16 :goto_4
.end method

.method private checkValidateClearShotImages()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 956
    const/4 v0, 0x0

    .line 957
    .local v0, "clearShotFilename":Ljava/lang/String;
    const/4 v2, 0x0

    .line 959
    .local v2, "fullFilePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v3, v5, :cond_1

    .line 960
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClearShotImage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 964
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 972
    :goto_1
    return v4

    .line 959
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 968
    :catch_0
    move-exception v1

    .line 969
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "deleteTimeMachineImages fail!:"

    invoke-static {v5, v6, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 972
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private createObjectInformation()Z
    .locals 17

    .prologue
    .line 400
    const-string v1, "CameraApp"

    const-string v2, "createObjectInformation-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    const/4 v13, 0x0

    .line 407
    .local v13, "fullPath":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v14, v1, :cond_0

    .line 408
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClearShotImage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v14, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 409
    .local v12, "filename":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->compressed_frame:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lge/camera/PostviewClearShotActivity;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 413
    .end local v12    # "filename":Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/PostviewClearShotActivity;->setImageInfo()V

    .line 415
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity;->compressed_frame:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity;->mRealImageSize:Lcom/lge/almalence/app/clearshot/Size;

    sget-object v4, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;->JPEG:Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->addInputFrame(Ljava/util/List;Lcom/lge/almalence/app/clearshot/Size;Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ImageType;)V

    .line 418
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/PostviewClearShotActivity;->mImageDegree:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity;->mRealImageSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/PostviewClearShotActivity;->mRealImageSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v7}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x64

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->initialize(Lcom/lge/almalence/app/clearshot/Size;IIIIILcom/lge/almalence/app/clearshot/AlmaCLRShot$OnProcessingListener;)Z

    .line 440
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 441
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getObjectInfoList()[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .line 443
    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewClearShotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    .line 446
    .local v9, "dash_interval":F
    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewClearShotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    .line 449
    .local v10, "dash_phase":F
    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewClearShotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    .line 454
    .local v16, "stroke_width":F
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 456
    .local v15, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 457
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 458
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 459
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 460
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v10, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 462
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 463
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getObjBorderBitmap(Landroid/graphics/Paint;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .line 465
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "objInfo size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mObjBoundaryInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "mMakeObjectInfoThread is interrupted."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v1, 0x0

    .line 493
    .end local v9    # "dash_interval":F
    .end local v10    # "dash_phase":F
    .end local v13    # "fullPath":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v16    # "stroke_width":F
    :goto_1
    return v1

    .line 474
    .restart local v9    # "dash_interval":F
    .restart local v10    # "dash_phase":F
    .restart local v13    # "fullPath":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "paint":Landroid/graphics/Paint;
    .restart local v16    # "stroke_width":F
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/PostviewClearShotActivity;->makeObjectInfoView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v9    # "dash_interval":F
    .end local v10    # "dash_phase":F
    .end local v13    # "fullPath":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v16    # "stroke_width":F
    :cond_4
    :goto_2
    const-string v1, "CameraApp"

    const-string v2, "createObjectInformation-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v1, 0x1

    goto :goto_1

    .line 476
    .restart local v13    # "fullPath":Ljava/lang/String;
    .restart local v14    # "i":I
    :catch_0
    move-exception v11

    .line 477
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    invoke-static {}, Lcom/lge/camera/util/CamLog;->getLogOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 480
    const/4 v14, 0x0

    :goto_3
    const/4 v1, 0x6

    if-ge v14, v1, :cond_5

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->compressed_frame:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/PostviewClearShotActivity;->saveClearShotErrorPicture([BI)Z

    .line 480
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 485
    :cond_5
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewClearShotActivity;->compressed_frame:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 487
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->release()V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewClearShotActivity;->finish()V

    goto :goto_2
.end method

.method private expandObjectRect(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)I
    .locals 9
    .param p1, "rlp"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "dstRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 589
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 590
    .local v2, "outMetrics":Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewClearShotActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 591
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 593
    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 596
    .local v1, "expand":I
    const/high16 v5, 0x42340000    # 45.0f

    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 599
    .local v3, "small":I
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    if-lt v5, v3, :cond_0

    .line 600
    const/4 v1, 0x0

    .line 603
    :cond_0
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 604
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 605
    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v1

    iput v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 606
    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v1

    iput v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "corner":I
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v5, :cond_1

    .line 610
    iput v7, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 611
    or-int/lit8 v0, v0, 0x1

    .line 613
    :cond_1
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v5, v6, :cond_2

    .line 614
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v5, v6

    iput v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 615
    or-int/lit8 v0, v0, 0x4

    .line 617
    :cond_2
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v5, :cond_3

    .line 618
    iput v7, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 619
    or-int/lit8 v0, v0, 0x2

    .line 621
    :cond_3
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_4

    .line 622
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v5, v6

    iput v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 623
    or-int/lit8 v0, v0, 0x8

    .line 625
    :cond_4
    return v0
.end method

.method private getBytesFromFile(Ljava/io/File;)[B
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 354
    .local v4, "length":J
    long-to-int v7, v4

    new-array v0, v7, [B

    .line 355
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 356
    .local v6, "offset":I
    const/4 v3, 0x0

    .line 357
    .local v3, "numRead":I
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 361
    .local v2, "is":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    array-length v7, v0

    if-ge v6, v7, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ltz v3, :cond_0

    .line 362
    add-int/2addr v6, v3

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 368
    const/4 v2, 0x0

    .line 370
    :goto_1
    return-object v0

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v7, "CameraApp"

    const-string v8, "getBytesFromFile-IOException : "

    invoke-static {v7, v8, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 368
    const/4 v2, 0x0

    .line 369
    goto :goto_1

    .line 367
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 368
    const/4 v2, 0x0

    throw v7
.end method

.method private makeObjectInfoList()V
    .locals 2

    .prologue
    .line 336
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewClearShotActivity;->showProgressDialog(II)V

    .line 339
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/PostviewClearShotActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewClearShotActivity$1;-><init>(Lcom/lge/camera/PostviewClearShotActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    .line 349
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 350
    return-void
.end method

.method private makeObjectInfoView()V
    .locals 1

    .prologue
    .line 497
    new-instance v0, Lcom/lge/camera/PostviewClearShotActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewClearShotActivity$2;-><init>(Lcom/lge/camera/PostviewClearShotActivity;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewClearShotActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method private releaseClearShotLibrary()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .line 322
    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .line 324
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->compressed_frame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->release()V

    .line 328
    :cond_0
    return-void
.end method

.method private reloadObjectInfoList()V
    .locals 7

    .prologue
    .line 568
    const v6, 0x7f0d0154

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewClearShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 569
    .local v3, "objectLayout":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 570
    const/4 v4, 0x0

    .line 571
    .local v4, "objectRect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 572
    .local v0, "dstRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 574
    .local v5, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;

    .line 575
    .local v2, "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    invoke-virtual {v2}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getObjectRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 577
    invoke-virtual {v2}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 578
    .restart local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewClearShotActivity;->calcObjectRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 579
    invoke-direct {p0, v5, v0}, Lcom/lge/camera/PostviewClearShotActivity;->expandObjectRect(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)I

    move-result v6

    invoke-virtual {v2, v0, v6}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->setRect(Landroid/graphics/Rect;I)V

    .line 580
    invoke-virtual {v2, v5}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 583
    .end local v0    # "dstRect":Landroid/graphics/Rect;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    .end local v4    # "objectRect":Landroid/graphics/Rect;
    .end local v5    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private removeAllObjectInfoList()V
    .locals 5

    .prologue
    .line 685
    const-string v3, "CameraApp"

    const-string v4, "removeAllObjectInfoList"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 687
    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;

    .line 688
    .local v1, "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    invoke-virtual {v1}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->unbind()V

    goto :goto_0

    .line 690
    .end local v1    # "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 692
    const v3, 0x7f0d0154

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewClearShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 693
    .local v2, "objectLayout":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 694
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 697
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "objectLayout":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private saveClearShotImages()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    .line 756
    const-string v0, "CameraApp"

    const-string v1, "saveClearShotImages : start."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mSaveClearShotImageThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mSaveClearShotImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    const-string v0, "CameraApp"

    const-string v1, "mSaveClearShotImageThread is already running."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewClearShotActivity;->showProgressDialog(II)V

    .line 764
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/PostviewClearShotActivity$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewClearShotActivity$3;-><init>(Lcom/lge/camera/PostviewClearShotActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mSaveClearShotImageThread:Ljava/lang/Thread;

    .line 901
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mSaveClearShotImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setImageInfo()V
    .locals 8

    .prologue
    .line 374
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-nez v4, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 379
    .local v2, "imageUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v3

    .line 380
    .local v3, "imageWidth":I
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v1

    .line 382
    .local v1, "imageHeight":I
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mImageDegree:I

    .line 384
    new-instance v4, Lcom/lge/almalence/app/clearshot/Size;

    invoke-direct {v4, v3, v1}, Lcom/lge/almalence/app/clearshot/Size;-><init>(II)V

    iput-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mRealImageSize:Lcom/lge/almalence/app/clearshot/Size;

    .line 386
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/PostviewClearShotActivity;->mRealImageSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v5}, Lcom/lge/almalence/app/clearshot/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mRealImageSize:Lcom/lge/almalence/app/clearshot/Size;

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/PostviewClearShotActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/Util;->calcFitSizeOfImageForLCD(Landroid/app/Activity;III)[I

    move-result-object v0

    .line 389
    .local v0, "iArr":[I
    new-instance v4, Lcom/lge/almalence/app/clearshot/Size;

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-direct {v4, v5, v6}, Lcom/lge/almalence/app/clearshot/Size;-><init>(II)V

    iput-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPreviewSize:Lcom/lge/almalence/app/clearshot/Size;

    goto :goto_0
.end method


# virtual methods
.method protected checkClearShotFileOverwritten()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 976
    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    .line 977
    .local v2, "mTempFileNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 978
    .local v0, "checkValue":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 979
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .local v1, "mPresentClearShotfile":Ljava/io/File;
    iget-wide v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mFirstClearShotDataSize:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 983
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mFirstClearShotDataSize:J

    .line 985
    .end local v1    # "mPresentClearShotfile":Ljava/io/File;
    :cond_0
    return v0

    .restart local v1    # "mPresentClearShotfile":Ljava/io/File;
    :cond_1
    move v0, v4

    .line 981
    goto :goto_0
.end method

.method protected doBackKeyInPostview()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK - return..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewClearShotActivity;->onCreateDialog(II)V

    goto :goto_0
.end method

.method public doClearShotWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 7
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 936
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 939
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 940
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "CLEAR_SHOT_DO_NOT_SHOW"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 941
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 944
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 945
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 946
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 947
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v1

    .line 951
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "Exception!"

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doClearShotWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 3
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 926
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewClearShotActivity;->doClearShotWarningNegativeClick(Landroid/widget/CheckBox;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->finish()V

    .line 932
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->finish()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->finish()V

    throw v1
.end method

.method protected doPreProcessOnCreate()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->releaseClearShotLibrary()V

    .line 78
    return-void
.end method

.method protected doProcessOnCreate()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 82
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->isFromCreateProcess:Z

    .line 83
    iput-boolean v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mLoadCompleted:Z

    .line 85
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mFirstClearShotDataSize:J

    .line 88
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_postview"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 90
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 93
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 95
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 98
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method protected doProcessOnDestroy()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->removeAllObjectInfoList()V

    .line 154
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->releaseClearShotLibrary()V

    .line 155
    return-void
.end method

.method protected doProcessOnPause()V
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 139
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->dismissProgressDialog()V

    .line 147
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/util/FileNamer;->close(Landroid/content/Context;I)V

    .line 149
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "InterruptedException: "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doProcessOnResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 102
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startFileNamer(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 107
    iget-boolean v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->isFromCreateProcess:Z

    if-nez v0, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->checkValidateClearShotImages()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewClearShotActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    iput-boolean v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->isFromCreateProcess:Z

    .line 132
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->checkClearShotFileOverwritten()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    const-string v0, "CameraApp"

    const-string v1, "File over written! need to reload."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->releaseClearShotLibrary()V

    .line 116
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->removeAllObjectInfoList()V

    .line 118
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->loadSingleCapturedImages()Z

    .line 124
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->makeObjectInfoList()V

    .line 131
    :cond_2
    :goto_1
    iput-boolean v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->isFromCreateProcess:Z

    goto :goto_0

    .line 126
    :cond_3
    iget-boolean v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mLoadCompleted:Z

    if-nez v0, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->makeObjectInfoView()V

    goto :goto_1
.end method

.method protected doVolumeKey(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    const-string v0, "shutter"

    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getVolumeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->doBackKeyInPostview()V

    goto :goto_0
.end method

.method protected loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "degrees"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 267
    const-string v6, "CameraApp"

    const-string v7, "Load captured image:%s, degrees:%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 272
    .local v1, "degree":I
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v6, :cond_0

    .line 273
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 274
    .local v4, "imageUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v1

    .line 275
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v5

    .line 276
    .local v5, "imageWidth":I
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v3

    .line 277
    .local v3, "imageHeight":I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5, v3}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I

    move-result-object v2

    .line 280
    .local v2, "dstSize":[I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aget v8, v2, v10

    aget v9, v2, v11

    invoke-static {v6, v7, v8, v9}, Lcom/lge/camera/util/ImageManager;->loadScaledBitmap(Landroid/content/ContentResolver;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    .end local v2    # "dstSize":[I
    .end local v3    # "imageHeight":I
    .end local v4    # "imageUri":Landroid/net/Uri;
    .end local v5    # "imageWidth":I
    :cond_0
    if-nez v0, :cond_1

    .line 284
    const-string v6, "CameraApp"

    const-string v7, "LoadBitmap fail!"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v6, 0x0

    .line 287
    :goto_0
    return-object v6

    :cond_1
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v6, v0, v1, v10}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method protected loadSingleCapturedImages()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 231
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    const v4, 0x7f0d014d

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewClearShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 236
    .local v3, "postview":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->reloadedPostview()V

    move v4, v5

    .line 261
    .end local v3    # "postview":Landroid/widget/ImageView;
    :goto_0
    return v4

    .line 242
    .restart local v3    # "postview":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    .line 243
    .local v1, "capturedImageUri":Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    .line 245
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 246
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 249
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/PostviewClearShotActivity;->loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 250
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    move v4, v6

    .line 251
    goto :goto_0

    .line 253
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v5

    .line 257
    goto :goto_0

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v6, "Exception!"

    invoke-static {v4, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 260
    .end local v1    # "capturedImageUri":Landroid/net/Uri;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "postview":Landroid/widget/ImageView;
    :cond_3
    const-string v4, "CameraApp"

    const-string v5, "mUriList.size() is 0 !!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 261
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 159
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/lge/camera/PostviewClearShotActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByWindowOrientation()V

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->reloadObjectInfoList()V

    .line 165
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    return-void
.end method

.method protected onCreateDialog(II)V
    .locals 5
    .param p1, "dialogId"    # I
    .param p2, "applicationMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 907
    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 910
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    const-string v2, "CLEAR_SHOT_DO_NOT_SHOW"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    iget-object v2, p0, Lcom/lge/camera/PostviewClearShotActivity;->mMakeObjectInfoThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 915
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->finish()V

    .line 922
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 919
    :cond_1
    invoke-static {p1, p2}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v0

    .line 921
    .local v0, "mDialog":Lcom/lge/camera/postview/PostviewDialog;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog_postview"

    invoke-virtual {v0, v2, v3}, Lcom/lge/camera/postview/PostviewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 181
    :goto_0
    return v1

    .line 172
    :sswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->doBackKeyInPostview()V

    goto :goto_0

    .line 175
    :sswitch_1
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->saveClearShotImages()V

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0266 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 186
    const v1, 0x7f0d0266

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 187
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 702
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 703
    .local v3, "inverse":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 704
    .local v2, "index":I
    const v6, 0x7f0d014d

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewClearShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 705
    .local v5, "postview":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 706
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->touchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    aput v7, v6, v9

    .line 707
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->touchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    aput v7, v6, v8

    .line 708
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->touchPoint:[F

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 710
    :try_start_0
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/PostviewClearShotActivity;->touchPoint:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/lge/camera/PostviewClearShotActivity;->touchPoint:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getOccupiedObject(FF)I

    move-result v2

    .line 712
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Object selected, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    if-eqz v2, :cond_1

    .line 714
    iget-object v6, p0, Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;

    .line 715
    .local v4, "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    invoke-virtual {v4}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->setSelected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v2    # "index":I
    .end local v3    # "inverse":Landroid/graphics/Matrix;
    .end local v4    # "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    .end local v5    # "postview":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 717
    .restart local v2    # "index":I
    .restart local v3    # "inverse":Landroid/graphics/Matrix;
    .restart local v5    # "postview":Landroid/widget/ImageView;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 718
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 719
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 724
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 726
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 727
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0

    .line 721
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 729
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0
.end method

.method protected postviewShow()V
    .locals 3

    .prologue
    .line 207
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK show()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const v1, 0x7f0d0153

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewClearShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "postView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 211
    const-string v1, "CameraApp"

    const-string v2, "postviewShow : inflate view fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->loadSingleCapturedImages()Z

    .line 218
    invoke-direct {p0}, Lcom/lge/camera/PostviewClearShotActivity;->makeObjectInfoList()V

    goto :goto_0
.end method

.method protected reloadedPostview()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 224
    const v1, 0x7f0d014d

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewClearShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 225
    .local v0, "postview":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/PostviewClearShotActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    .end local v0    # "postview":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public saveClearShotErrorPicture([BI)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "clearShotTempFileCount"    # I

    .prologue
    .line 740
    const/4 v3, 0x0

    .line 741
    .local v3, "ret":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ClearShotError/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "path":Ljava/lang/String;
    const-string v1, ".jpg"

    .line 744
    .local v1, "fileExt":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClearShotImage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "clearShotFilename":Ljava/lang/String;
    invoke-static {p1, v2, v0, v1}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 749
    return v3
.end method

.method protected setActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-virtual {p0}, Lcom/lge/camera/PostviewClearShotActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 200
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 202
    const v1, 0x7f0a025f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 203
    return-void
.end method

.method protected setupLayout()V
    .locals 1

    .prologue
    .line 292
    const v0, 0x7f0d0159

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewClearShotActivity;->inflateStub(I)Landroid/view/View;

    .line 293
    return-void
.end method
