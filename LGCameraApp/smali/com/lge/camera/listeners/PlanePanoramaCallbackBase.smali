.class public Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;
.super Ljava/lang/Object;
.source "PlanePanoramaCallbackBase.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$ShutterCallback;


# static fields
.field protected static ADJUST_CURRENT_FRAME_ASPECT_RATIO:Z = false

.field protected static final ANI_SHOW_ARROW:I = 0x7f04000d

.field public static final APP_DIR_AUTO:I = 0x2

.field public static final APP_DIR_HOR:I = 0x0

.field public static final APP_DIR_LAND:I = 0x4

.field public static final APP_DIR_LAND_AUTO:I = 0x6

.field public static final APP_DIR_LAND_HOR:I = 0x4

.field public static final APP_DIR_LAND_VER:I = 0x5

.field public static final APP_DIR_POR:I = 0x0

.field public static final APP_DIR_POR_AUTO:I = 0x2

.field public static final APP_DIR_POR_HOR:I = 0x0

.field public static final APP_DIR_POR_VER:I = 0x1

.field public static final APP_DIR_VER:I = 0x1

.field protected static final FULL_RATIO:I = 0x64

.field protected static final GUIDE_SKIP_COUNT:I = 0x3

.field protected static final HALF:D = 0.5

.field protected static final INDEX_X:I = 0x0

.field protected static final INDEX_Y:I = 0x1

.field protected static final LAST_WIDTH_RATE_FOR_AUTO_STOP:F = 0.2f

.field protected static final PREVIEW_BAR_SCALE:I = 0x2

.field protected static final PREVIEW_COUNT:I = -0x1

.field protected static final PREVIEW_CROP_RATIO:I = 0xa

.field protected static final PREVIEW_GUIDE_AREA_RATIO_HOR_HOR:F

.field protected static final PREVIEW_GUIDE_AREA_RATIO_HOR_VER:F

.field protected static final PREVIEW_GUIDE_AREA_RATIO_VER:F = 0.12f

.field protected static final PREVIEW_GUIDE_RED_ZONE_RATIO:F = 0.3f

.field protected static final PREVIEW_MAGNETIC_RATIO:F = 0.1f

.field protected static final PREVIEW_SKIP_COUNT:I = 0x1

.field protected static final QUARTER_ONE:D = 0.25

.field protected static final QUARTER_THREE:D = 0.75

.field protected static final RULE_TRUE:I = 0x1

.field protected static final SHOOTING_SOUND_SKIP_COUNT:I = 0x1

.field protected static final TIME_ANI:I = 0x12c

.field protected static final TWICE:I = 0x2

.field protected static final TYPE_DOWN_FAR:I = 0x4

.field protected static final TYPE_DOWN_NEAR:I = 0x5

.field protected static final TYPE_LEFT_FAR:I = 0x6

.field protected static final TYPE_LEFT_NEAR:I = 0x7

.field protected static final TYPE_RIGHT_FAR:I = 0x2

.field protected static final TYPE_RIGHT_NEAR:I = 0x3

.field protected static final TYPE_UP_FAR:I = 0x0

.field protected static final TYPE_UP_NEAR:I = 0x1


# instance fields
.field protected final MOTION_DATA_LENGTH:I

.field protected isOnMagneticVertical:Z

.field protected isShowHorizontalArrow:Z

.field protected mAppDeviceRotation:I

.field protected mAppPanoramaDirection:I

.field protected mAppPanoramaDirectionSettings:I

.field protected mArrowDown:Landroid/widget/ImageView;

.field protected mArrowLeft:Landroid/widget/ImageView;

.field protected mArrowRight:Landroid/widget/ImageView;

.field protected mArrowUp:Landroid/widget/ImageView;

.field protected mBarArrow:Lcom/lge/camera/components/RotateImageView;

.field protected mBarCanvas:Landroid/graphics/Canvas;

.field protected mBarH:I

.field public mBarImage:Landroid/graphics/Bitmap;

.field protected mBarLayoutMargin:I

.field protected mBarW:I

.field protected mBoxAttachCurrentBgId:I

.field protected mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

.field protected mBoxAttachFrameText:Landroid/widget/FrameLayout;

.field protected mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

.field protected mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

.field protected mBoxAttachRotateLayoutArrow:Lcom/lge/camera/components/RotateLayout;

.field protected mBoxAttachRotateLayoutText:Lcom/lge/camera/components/RotateLayout;

.field protected mBoxGuide:Landroid/widget/RelativeLayout;

.field protected mBoxOutlineNinePatchMargin:I

.field protected mCurDegree:I

.field protected mDirectionArrowMargin:I

.field protected mDisplayPreviewImageMini:Landroid/graphics/Bitmap;

.field protected mDistGuideAttachPos:F

.field protected mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

.field protected mGuideAreaLength:I

.field protected mGuideBoxAdjustHor:I

.field protected mGuideBoxAdjustVer:I

.field protected mGuideBoxLineWidth:I

.field protected mGuideDrawingSkipCount:I

.field protected mImageID:[I

.field protected mImageIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mImageStatusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mListArrow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mMotionData:[B

.field protected mNeedStop:Z

.field protected mOutline:Landroid/graphics/drawable/NinePatchDrawable;

.field protected mPrevDirection:I

.field protected mPreviewCount:I

.field protected mPreviewCropAdjust:I

.field protected mPreviewH:I

.field protected mPreviewImageMini:Landroid/graphics/Bitmap;

.field protected mPreviewMiniCanvas:Landroid/graphics/Canvas;

.field protected mPreviewPanelBottmMargin:I

.field protected mPreviewPanelWidth:I

.field protected mPreviewSkipCount:I

.field protected mPreviewW:I

.field public mProgressImage:Landroid/graphics/Bitmap;

.field protected mProgressImageH:I

.field protected mProgressImageW:I

.field protected mQuickButtonWidth:I

.field protected mRectPreview:Landroid/graphics/Rect;

.field protected mRectPreviewMini:Landroid/graphics/Rect;

.field protected mRectProgressBar:Landroid/graphics/Rect;

.field protected mStatus:[I

.field protected mStatusPre:I

.field protected mStrDown:Ljava/lang/String;

.field protected mStrLeft:Ljava/lang/String;

.field protected mStrRight:Ljava/lang/String;

.field protected mStrUp:Ljava/lang/String;

.field protected mTextAny:Landroid/widget/TextView;

.field protected mUseImage:I

.field protected offsetX:I

.field protected offsetY:I

.field protected outlineLocationArrow:[I

.field protected outlineLocationText:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getPlanePanoramaGuideAreaRatioHorHor()F

    move-result v0

    sput v0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->PREVIEW_GUIDE_AREA_RATIO_HOR_HOR:F

    .line 76
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getPlanePanoramaGuideAreaRatioHorVer()F

    move-result v0

    sput v0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->PREVIEW_GUIDE_AREA_RATIO_HOR_VER:F

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->ADJUST_CURRENT_FRAME_ASPECT_RATIO:Z

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;)V
    .locals 5
    .param p1, "function"    # Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->outlineLocationArrow:[I

    .line 107
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->outlineLocationText:[I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mListArrow:Ljava/util/ArrayList;

    .line 129
    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatusPre:I

    .line 131
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatus:[I

    .line 132
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mImageID:[I

    .line 133
    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mUseImage:I

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewCount:I

    .line 135
    iput v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewSkipCount:I

    .line 136
    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideDrawingSkipCount:I

    .line 141
    iput v4, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->MOTION_DATA_LENGTH:I

    .line 142
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mMotionData:[B

    .line 146
    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewCropAdjust:I

    .line 148
    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mAppDeviceRotation:I

    .line 149
    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mAppPanoramaDirection:I

    .line 150
    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mAppPanoramaDirectionSettings:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mImageIDList:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mImageStatusList:Ljava/util/ArrayList;

    .line 160
    iput-boolean v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    .line 161
    iput-boolean v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isOnMagneticVertical:Z

    .line 172
    const v0, 0x7f020459

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachCurrentBgId:I

    .line 190
    iput-boolean v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mNeedStop:Z

    .line 198
    iput-object p1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    .line 199
    return-void

    .line 106
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 107
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setGuideBoxAdjustDimens()V
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902bb

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxAdjustHor:I

    .line 325
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902bc

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxAdjustVer:I

    .line 328
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "modelName":Ljava/lang/String;
    const-string v1, "LG-D625"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902bd

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxAdjustHor:I

    .line 333
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902be

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxAdjustVer:I

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public allocateDisplayBuffers(I)V
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    .line 525
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v7}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090009

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 527
    .local v2, "dispW":I
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v7}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090008

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 530
    .local v1, "dispH":I
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 531
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    iput-object v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    .line 534
    :cond_0
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 535
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 536
    iput-object v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    .line 538
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    if-nez v7, :cond_4

    .line 541
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v7}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v7

    iget v6, v7, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 542
    .local v6, "pdw":I
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v7}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v7

    iget v5, v7, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 543
    .local v5, "pdh":I
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v7}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRoratePreview()I

    move-result v7

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v7}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getRoratePreview()I

    move-result v7

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_3

    .line 544
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v7}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v7

    iget v6, v7, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 545
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v7}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v7

    iget v5, v7, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 547
    :cond_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    .line 548
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImageW:I

    .line 549
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImageH:I

    .line 552
    const/4 v4, 0x0

    .line 553
    .local v4, "dpW":I
    const/4 v3, 0x0

    .line 554
    .local v3, "dpH":I
    sparse-switch p1, :sswitch_data_0

    .line 559
    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewPanelWidth:I

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewPanelBottmMargin:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mQuickButtonWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarLayoutMargin:I

    iget v9, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarLayoutMargin:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    sub-int/2addr v1, v7

    .line 562
    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewCropAdjust:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v0, v7, v8

    .line 563
    .local v0, "aspect":F
    int-to-float v7, v1

    mul-float/2addr v7, v0

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v4, v7, 0x2

    .line 565
    move v3, v1

    .line 577
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    .line 578
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarCanvas:Landroid/graphics/Canvas;

    .line 579
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarW:I

    .line 580
    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarH:I

    .line 582
    .end local v0    # "aspect":F
    .end local v3    # "dpH":I
    .end local v4    # "dpW":I
    .end local v5    # "pdh":I
    .end local v6    # "pdw":I
    :cond_4
    return-void

    .line 569
    .restart local v3    # "dpH":I
    .restart local v4    # "dpW":I
    .restart local v5    # "pdh":I
    .restart local v6    # "pdw":I
    :sswitch_0
    iget v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarLayoutMargin:I

    iget v8, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarLayoutMargin:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    .line 571
    int-to-float v7, v5

    int-to-float v8, v6

    div-float v0, v7, v8

    .line 572
    .restart local v0    # "aspect":F
    move v4, v2

    .line 573
    int-to-float v7, v2

    mul-float/2addr v7, v0

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v3, v7, 0x2

    goto :goto_0

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected checkAttachBoxRedZone(II)V
    .locals 4
    .param p1, "gap"    # I
    .param p2, "margin"    # I

    .prologue
    const v3, 0x7f020459

    const v2, 0x7f020458

    .line 585
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatus:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_2

    .line 589
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachCurrentBgId:I

    if-eq v0, v3, :cond_0

    .line 590
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 591
    iput v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachCurrentBgId:I

    goto :goto_0

    .line 594
    :cond_2
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachCurrentBgId:I

    if-eq v0, v2, :cond_0

    .line 595
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 596
    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachCurrentBgId:I

    goto :goto_0
.end method

.method protected drawAttachGuideHorizontalToHorLeft()V
    .locals 4

    .prologue
    .line 794
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mCurDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 811
    :goto_0
    return-void

    .line 796
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 799
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 802
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 805
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 794
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected drawAttachGuideHorizontalToHorRight()V
    .locals 4

    .prologue
    .line 814
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mCurDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 831
    :goto_0
    return-void

    .line 816
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 819
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 822
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 825
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 814
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected drawAttachGuideHorizontalToVerLeft()V
    .locals 4

    .prologue
    .line 834
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mCurDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 851
    :goto_0
    return-void

    .line 836
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 839
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 842
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 845
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 834
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected drawAttachGuideHorizontalToVerRight()V
    .locals 4

    .prologue
    .line 854
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mCurDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 871
    :goto_0
    return-void

    .line 856
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 859
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 862
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 865
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 854
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected drawAttachGuideVerticalToHorDown()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 734
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mCurDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 751
    :goto_0
    return-void

    .line 736
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 739
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 742
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 745
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 734
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected drawAttachGuideVerticalToHorUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 714
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mCurDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 731
    :goto_0
    return-void

    .line 716
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 719
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 722
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 725
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 714
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected drawAttachGuideVerticalToVerDown()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 774
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mCurDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 791
    :goto_0
    return-void

    .line 776
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 779
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 782
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 785
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 774
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected drawAttachGuideVerticalToVerUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 754
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mCurDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 771
    :goto_0
    return-void

    .line 756
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 759
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 762
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 765
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getAppDeviceRotation()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mAppDeviceRotation:I

    return v0
.end method

.method public getAppPanoramaDirection()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mAppPanoramaDirection:I

    return v0
.end method

.method public getAppPanoramaDirectionSettings()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mAppPanoramaDirectionSettings:I

    return v0
.end method

.method public getPreviewImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected hideGuideCase()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 410
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mListArrow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 411
    .local v1, "iv":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 413
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 416
    .end local v1    # "iv":Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 417
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 418
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    :cond_2
    return-void
.end method

.method public hideViews()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 401
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->hideGuideCase()V

    .line 402
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 407
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3
    .param p1, "base"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    .line 258
    const-string v0, "CameraApp"

    const-string v1, "initView START "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 261
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit initView mGet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " base="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902b3

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxLineWidth:I

    .line 267
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrUp:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrDown:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0363

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrLeft:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStrRight:Ljava/lang/String;

    .line 272
    const v0, 0x7f0d0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxGuide:Landroid/widget/RelativeLayout;

    .line 273
    const v0, 0x7f0d0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    .line 275
    const v0, 0x7f0d013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachRotateLayoutArrow:Lcom/lge/camera/components/RotateLayout;

    .line 277
    const v0, 0x7f0d013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    .line 279
    const v0, 0x7f0d013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    .line 280
    const v0, 0x7f0d0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    .line 281
    const v0, 0x7f0d013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    .line 282
    const v0, 0x7f0d0141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    .line 284
    const v0, 0x7f0d0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    .line 286
    const v0, 0x7f0d0144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachRotateLayoutText:Lcom/lge/camera/components/RotateLayout;

    .line 288
    const v0, 0x7f0d0147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    .line 290
    const v0, 0x7f0d0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f0d0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    .line 294
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mListArrow:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mListArrow:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mListArrow:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mListArrow:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxGuide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachFrameArrow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachFrameText:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902b6

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarLayoutMargin:I

    .line 305
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewPanelWidth:I

    .line 307
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewPanelBottmMargin:I

    .line 309
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902b4

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxOutlineNinePatchMargin:I

    .line 311
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902b5

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mDirectionArrowMargin:I

    .line 313
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900a4

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mQuickButtonWidth:I

    .line 316
    invoke-direct {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->setGuideBoxAdjustDimens()V

    .line 318
    invoke-virtual {p0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->hideGuideCase()V

    .line 319
    const-string v0, "CameraApp"

    const-string v1, "initView END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 247
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 251
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 255
    return-void
.end method

.method public onShutter()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getNumOfShoot()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->playPanoramaShutterSound()V

    .line 243
    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public resetImageIdAndStatusList()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mImageIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mImageStatusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    return-void
.end method

.method public resetParamsBeforeTaking()V
    .locals 3

    .prologue
    const v2, 0x7f020459

    const/4 v1, 0x0

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewCount:I

    .line 429
    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideDrawingSkipCount:I

    .line 430
    iput-boolean v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isShowHorizontalArrow:Z

    .line 431
    iput-boolean v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->isOnMagneticVertical:Z

    .line 432
    iput v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideAreaLength:I

    .line 433
    iput v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachCurrentBgId:I

    .line 434
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 435
    invoke-virtual {p0, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->showAllGuideArrowAndText(Z)V

    .line 436
    iput-boolean v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mNeedStop:Z

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mDistGuideAttachPos:F

    .line 438
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mRectProgressBar:Landroid/graphics/Rect;

    .line 439
    return-void
.end method

.method public resetPreviewSkipCount()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewSkipCount:I

    .line 208
    return-void
.end method

.method public rotateGuide(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachRotateLayoutArrow:Lcom/lge/camera/components/RotateLayout;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachRotateLayoutArrow:Lcom/lge/camera/components/RotateLayout;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setRotation(F)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachRotateLayoutText:Lcom/lge/camera/components/RotateLayout;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachRotateLayoutText:Lcom/lge/camera/components/RotateLayout;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->setRotation(F)V

    .line 459
    :cond_1
    return-void
.end method

.method protected rotatePreviewPoints(Landroid/graphics/Point;I)V
    .locals 5
    .param p1, "pt"    # Landroid/graphics/Point;
    .param p2, "rotate"    # I

    .prologue
    .line 365
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 366
    .local v1, "x":I
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 367
    .local v2, "y":I
    const/4 v0, 0x1

    .line 368
    .local v0, "endPixel":I
    sparse-switch p2, :sswitch_data_0

    .line 385
    :goto_0
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 386
    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 387
    return-void

    .line 373
    :sswitch_0
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 374
    iget v2, p1, Landroid/graphics/Point;->x:I

    .line 375
    goto :goto_0

    .line 377
    :sswitch_1
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 378
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x1

    .line 379
    goto :goto_0

    .line 381
    :sswitch_2
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 382
    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 368
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setAppPanoramaDirection(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mAppPanoramaDirection:I

    .line 228
    return-void
.end method

.method public setCameraPreviewSize(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v8, 0x0

    .line 340
    iput p1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewW:I

    .line 341
    iput p2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewH:I

    .line 342
    iget v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewW:I

    int-to-double v6, v5

    mul-double/2addr v6, v10

    double-to-int v5, v6

    iget v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewH:I

    int-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewImageMini:Landroid/graphics/Bitmap;

    .line 345
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0902af

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 347
    .local v2, "displayW":I
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0902b0

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 349
    .local v1, "displayH":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mDisplayPreviewImageMini:Landroid/graphics/Bitmap;

    .line 351
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 352
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v8, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 353
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 354
    .local v0, "degrees":I
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v4, v5, 0x168

    .line 355
    .local v4, "result":I
    iget-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getPreviewMiniLayout()Lcom/lge/camera/components/RotateLayout;

    move-result-object v5

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/RotateLayout;->setRotation(F)V

    .line 357
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mDisplayPreviewImageMini:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewMiniCanvas:Landroid/graphics/Canvas;

    .line 358
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewMiniCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewMiniCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mRectPreviewMini:Landroid/graphics/Rect;

    .line 360
    return-void
.end method

.method protected setGuideTextLayout(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 504
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 522
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 509
    .local v1, "lpText":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 510
    .local v0, "lpOutline":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 511
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 513
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 514
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 515
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 516
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 518
    invoke-virtual {p0, v1, v0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->setGuideTextLayoutByType(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 520
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected setGuideTextLayoutByType(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0
    .param p1, "lpText"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "lpOutline"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "type"    # I

    .prologue
    .line 630
    packed-switch p3, :pswitch_data_0

    .line 651
    :goto_0
    return-void

    .line 633
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->setGuideTextLayoutToUp(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    .line 637
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->setGuideTextLayoutToRight(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    .line 641
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->setGuideTextLayoutToDown(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    .line 645
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->setGuideTextLayoutToLeft(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_0

    .line 630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected setGuideTextLayoutToDown(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p1, "lpText"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "lpOutline"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "type"    # I

    .prologue
    const/16 v1, 0xe

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 684
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 685
    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 686
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 688
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 693
    :goto_0
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 694
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 695
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 696
    return-void

    .line 691
    :cond_0
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxLineWidth:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method protected setGuideTextLayoutToLeft(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p1, "lpText"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "lpOutline"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "type"    # I

    .prologue
    const/16 v1, 0xf

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 699
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 700
    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 701
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 703
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 704
    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 709
    :goto_0
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 710
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 711
    return-void

    .line 707
    :cond_0
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxLineWidth:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method protected setGuideTextLayoutToRight(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p1, "lpText"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "lpOutline"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "type"    # I

    .prologue
    const/16 v1, 0xf

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 669
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 670
    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 671
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBoxAttachOutlineText:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 673
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 674
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 675
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 676
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxLineWidth:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method protected setGuideTextLayoutToUp(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3
    .param p1, "lpText"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "lpOutline"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p3, "type"    # I

    .prologue
    const/16 v1, 0xe

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 654
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 655
    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 656
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 658
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 659
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 660
    if-nez p3, :cond_0

    .line 661
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 665
    :goto_0
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 666
    return-void

    .line 663
    :cond_0
    iget v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGuideBoxLineWidth:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setPrevDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPrevDirection:I

    .line 212
    return-void
.end method

.method public setPreviewCroppingAdjustByAuto(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mPreviewCropAdjust:I

    .line 216
    return-void
.end method

.method protected showAllGuideArrowAndText(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 442
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 444
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarArrow:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 450
    return-void

    .line 442
    .end local v0    # "visibility":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected showGuideCase(Landroid/widget/ImageView;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "visibleArrow"    # Landroid/widget/ImageView;
    .param p2, "directionText"    # Ljava/lang/String;
    .param p3, "textType"    # I
    .param p4, "isShow"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x0

    .line 484
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mListArrow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 485
    .local v7, "iv":Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    if-eq v7, p1, :cond_0

    .line 486
    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V

    .line 487
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 490
    .end local v7    # "iv":Landroid/widget/ImageView;
    :cond_1
    const v0, 0x7f04000d

    invoke-virtual {p0, p1, p4, v5, v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->startBlinkingAnimation(Landroid/view/View;ZZI)V

    .line 492
    if-eqz p4, :cond_3

    .line 493
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p2, :cond_2

    .line 494
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_2
    invoke-virtual {p0, p3}, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->setGuideTextLayout(I)V

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mTextAny:Landroid/widget/TextView;

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    move v1, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/AnimationUtil;->startShowingAnimation(Landroid/view/View;ZJLandroid/view/animation/Animation$AnimationListener;Z)V

    .line 501
    return-void
.end method

.method protected showTakingTextGuide()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 602
    iget v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatusPre:I

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatus:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 603
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "engine status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatus:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatus:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    .line 624
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatus:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mStatusPre:I

    .line 626
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 612
    :pswitch_1
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a033a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->toastLong(Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->stopPanorama()V

    .line 615
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->stopPanorama()V

    .line 619
    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected startBlinkingAnimation(Landroid/view/View;ZZI)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "isForced"    # Z
    .param p4, "startAniId"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 463
    if-eqz p2, :cond_0

    move v1, v2

    .line 465
    .local v1, "visibility":I
    :goto_0
    if-nez p3, :cond_2

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz p2, :cond_1

    :goto_1
    if-ne v4, v2, :cond_2

    .line 480
    :goto_2
    return-void

    .end local v1    # "visibility":I
    :cond_0
    move v1, v3

    .line 463
    goto :goto_0

    .restart local v1    # "visibility":I
    :cond_1
    move v2, v3

    .line 466
    goto :goto_1

    .line 471
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 472
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    if-nez p2, :cond_3

    .line 475
    const p4, 0x7f04000c

    .line 477
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 479
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    iput-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mProgressImage:Landroid/graphics/Bitmap;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 396
    iput-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallbackBase;->mBarImage:Landroid/graphics/Bitmap;

    .line 398
    :cond_1
    return-void
.end method
