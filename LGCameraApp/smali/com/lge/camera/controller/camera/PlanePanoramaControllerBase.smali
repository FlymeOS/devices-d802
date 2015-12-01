.class public Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "PlanePanoramaControllerBase.java"

# interfaces
.implements Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;


# static fields
.field protected static final ANIMATION_TIME:I = 0x12c

.field public static final DIR_SAVE_INPUT:Ljava/lang/String; = "input"

.field public static final DIR_SAVE_PREVIEW:Ljava/lang/String; = "preview_img"

.field public static final DIR_SAVE_STILL:Ljava/lang/String; = "still_img"

.field protected static final FAR_THRESHOLD_HOR:I = 0x5

.field protected static final FAR_THRESHOLD_VER:I = 0x5

.field public static final FORMAT:Ljava/lang/String; = "YVU420_SEMIPLANAR"

.field public static final IS_LOCK_AE:Z = false

.field public static final IS_LOCK_AW:Z = false

.field public static final IS_PREVIEW_INPUT:Z

.field public static final IS_SAVE_INPUT:Z = false

.field public static final IS_USE_AF:Z = false

.field protected static final MAX_DST_IMG_WIDTH:I = 0x7530

.field protected static final MAX_IMAGE_ANGLE:D = 360.0

.field protected static final MOTIONLESS_THRESHOLD:I = 0x1f4

.field protected static final PARAM_MULTIPLY_WIDTH:I = 0xa

.field public static final PROGREE_ALPHA_BACK:I = 0x84

.field protected static final PROGREE_ALPHA_FORE:I = 0xff

.field protected static final USE_DISPLAY_CURRENT_PREVIEW:I = 0x0

.field public static final USE_MULTI_THREAD:Z = true

.field protected static final USE_SENSOR_CORRECTION:I = 0x0

.field protected static final USE_THRESHOLD:I = 0xa


# instance fields
.field protected final COPY_EXIF_FROM_1ST_SHOOT:Z

.field protected final SINGLE_ARRAY:I

.field protected mBackgroundPreviewLayout:Landroid/widget/RelativeLayout;

.field protected mBar:Landroid/widget/ImageView;

.field protected mBarLayout:Landroid/widget/RelativeLayout;

.field protected mBaseView:Landroid/view/View;

.field protected mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

.field protected mCntProcessd:I

.field protected mCntReqShoot:I

.field protected mCurOrientaionDegree:I

.field protected mDirection:[I

.field protected mInitParam:Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

.field protected mIsShooting:Z

.field protected mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

.field protected mPictureH:I

.field protected mPictureW:I

.field protected mPreviewBuff:[B

.field protected mPreviewH:I

.field protected mPreviewMini:Landroid/widget/ImageView;

.field protected mPreviewMiniLayout:Lcom/lge/camera/components/RotateLayout;

.field protected mPreviewMiniLayoutArrow:Landroid/widget/RelativeLayout;

.field protected mPreviewMiniLayoutOutline:Landroid/widget/RelativeLayout;

.field protected mPreviewW:I

.field protected mPreview_size_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestTakePicture:Z

.field protected mRoratePreview:I

.field protected mRotateOutput:I

.field protected mRotateUI:I

.field protected mSaveInputDirPath:Ljava/lang/String;

.field protected mShootingDate:Ljava/lang/String;

.field protected mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

.field protected mStatusShot:I

.field protected mStill_size_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected mSyncObj:Ljava/lang/Object;

.field protected mTempLocation:Landroid/location/Location;

.field protected mTempParams:Landroid/hardware/Camera$Parameters;

.field protected mUseSensorThres:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isPlanePanoramaPreviewInput()Z

    move-result v0

    sput-boolean v0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->IS_PREVIEW_INPUT:Z

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 83
    iput-boolean v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->COPY_EXIF_FROM_1ST_SHOOT:Z

    .line 88
    iput v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mUseSensorThres:I

    .line 92
    iput v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStatusShot:I

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mSyncObj:Ljava/lang/Object;

    .line 109
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mIsShooting:Z

    .line 110
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mRequestTakePicture:Z

    .line 113
    iput v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCntReqShoot:I

    .line 115
    iput v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCntProcessd:I

    .line 117
    iput v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->SINGLE_ARRAY:I

    .line 118
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mDirection:[I

    .line 128
    iput v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCurOrientaionDegree:I

    .line 133
    iput-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mTempParams:Landroid/hardware/Camera$Parameters;

    .line 134
    iput-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mTempLocation:Landroid/location/Location;

    .line 136
    iput-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method


# virtual methods
.method public addStillImage(Lcom/lge/morpho/utils/multimedia/StillImageData;)V
    .locals 0
    .param p1, "dat"    # Lcom/lge/morpho/utils/multimedia/StillImageData;

    .prologue
    .line 537
    return-void
.end method

.method public checkOK(ILjava/lang/String;Z)Z
    .locals 4
    .param p1, "ret"    # I
    .param p2, "errorLog"    # Ljava/lang/String;
    .param p3, "isFinish"    # Z

    .prologue
    const/4 v0, 0x1

    .line 634
    if-eqz p1, :cond_1

    .line 635
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    if-eqz p3, :cond_0

    .line 638
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a03aa

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 641
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 643
    :cond_0
    const/4 v0, 0x0

    .line 646
    :cond_1
    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getAngleOfViewDegree()D
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    .line 143
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-nez v3, :cond_0

    .line 144
    const-string v3, "CameraApp"

    const-string v10, "Camera device is null."

    invoke-static {v3, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-wide v8

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 148
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 149
    const-string v3, "CameraApp"

    const-string v10, "Parameters is null."

    invoke-static {v3, v10}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    const/16 v0, 0x46

    .line 154
    .local v0, "defaultAngleOfViewDegree":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 155
    .local v2, "picSize":Landroid/hardware/Camera$Size;
    const-wide v8, 0x4051800000000000L    # 70.0

    .line 156
    .local v8, "value":D
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v3

    float-to-double v4, v3

    .line 157
    .local v4, "vaH":D
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v3

    mul-double/2addr v10, v4

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v3

    div-double v6, v10, v12

    .line 159
    .local v6, "vaV":D
    mul-double v10, v4, v4

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 160
    const-string v3, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "camera view angle (hor,ver)="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " angle of view degree = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBar()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBarLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method protected getDateString(J)Ljava/lang/String;
    .locals 1
    .param p1, "dateTaken"    # J

    .prologue
    .line 187
    const-string v0, "yyyy-MM-dd_kk-mm-ss"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()[I
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mDirection:[I

    return-object v0
.end method

.method public getInitParam()Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mInitParam:Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    return-object v0
.end method

.method public getMorphoPanoramaGP()Lcom/lge/morpho/core/MorphoPanoramaGP;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    return-object v0
.end method

.method public getNumOfShoot()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCntReqShoot:I

    return v0
.end method

.method public getOrientationDegree()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    return v0
.end method

.method public getPreviewBuff()[B
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewBuff:[B

    return-object v0
.end method

.method public getPreviewMini()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMini:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPreviewMiniLayout()Lcom/lge/camera/components/RotateLayout;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayout:Lcom/lge/camera/components/RotateLayout;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResultSize()[I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 297
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewW:I

    if-lez v7, :cond_0

    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPictureW:I

    if-gtz v7, :cond_1

    .line 298
    :cond_0
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 299
    .local v5, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v5, :cond_1

    .line 300
    const/4 v2, 0x0

    .line 301
    .local v2, "indexW":I
    const/4 v1, 0x1

    .line 303
    .local v1, "indexH":I
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 304
    .local v4, "previewSize":[I
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 305
    .local v3, "pictureSize":[I
    aget v7, v4, v10

    iput v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewW:I

    .line 306
    aget v7, v4, v11

    iput v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewH:I

    .line 307
    aget v7, v3, v10

    iput v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPictureW:I

    .line 308
    aget v7, v3, v11

    iput v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPictureH:I

    .line 311
    .end local v1    # "indexH":I
    .end local v2    # "indexW":I
    .end local v3    # "pictureSize":[I
    .end local v4    # "previewSize":[I
    .end local v5    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    sget-boolean v7, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->IS_PREVIEW_INPUT:Z

    if-eqz v7, :cond_2

    iget v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewW:I

    .line 312
    .local v6, "width":I
    :goto_0
    sget-boolean v7, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->IS_PREVIEW_INPUT:Z

    if-eqz v7, :cond_3

    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewH:I

    .line 314
    .local v0, "height":I
    :goto_1
    mul-int/lit8 v6, v6, 0xa

    .line 315
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size (w,h) = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v10

    aput v0, v7, v11

    return-object v7

    .line 311
    .end local v0    # "height":I
    .end local v6    # "width":I
    :cond_2
    iget v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPictureW:I

    goto :goto_0

    .line 312
    .restart local v6    # "width":I
    :cond_3
    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPictureH:I

    goto :goto_1
.end method

.method public getRoratePreview()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mRoratePreview:I

    return v0
.end method

.method public getRotateUI()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mRotateUI:I

    return v0
.end method

.method public getSaveInputDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mSaveInputDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getShootingDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mShootingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStatusShot:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStatusShot:I

    return v0
.end method

.method public getSyncObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 267
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMini:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMini:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayoutOutline:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayoutOutline:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayout:Lcom/lge/camera/components/RotateLayout;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayout:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayoutArrow:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 284
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayoutArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    if-eqz v0, :cond_6

    .line 288
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->hideViews()V

    .line 291
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 292
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBaseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_7
    return-void
.end method

.method public increseCntReqShoot()V
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCntReqShoot:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCntReqShoot:I

    .line 547
    return-void
.end method

.method public isProcessingFinishTask()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public isShooting()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mIsShooting:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBaseView:Landroid/view/View;

    .line 342
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 343
    return-void
.end method

.method public perfLockAcquire()V
    .locals 3

    .prologue
    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->perfLockAcquire()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "no perfLockAcquire API"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playPanoramaShutterSound()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "CameraApp"

    const-string v1, "mMediator.isPausing() == true"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$4;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public playRecordingSound(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 606
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 607
    return-void
.end method

.method public reInitialize()V
    .locals 2

    .prologue
    .line 335
    const-string v0, "CameraApp"

    const-string v1, "reInitialize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBaseView:Landroid/view/View;

    .line 337
    return-void
.end method

.method protected setCafSetting()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v0

    .line 170
    .local v0, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 173
    const-string v1, "CameraApp"

    const-string v2, "### setFocusMode-conti"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 179
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 180
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 184
    .end local v0    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_1
    return-void
.end method

.method public setRequestTakePicture(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mRequestTakePicture:Z

    .line 612
    return-void
.end method

.method public setShutterButtonImage(ZI)V
    .locals 1
    .param p1, "buttonEnable"    # Z
    .param p2, "degree"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 562
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 551
    iput p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStatusShot:I

    .line 552
    return-void
.end method

.method public setVisibleArrowGuide(ZZZ)V
    .locals 1
    .param p1, "isVisible"    # Z
    .param p2, "isForced"    # Z
    .param p3, "isBlicking"    # Z

    .prologue
    .line 418
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayoutArrow:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 419
    if-eqz p3, :cond_1

    .line 420
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayoutArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->startAnimationGuideArrowShowing(Landroid/view/View;ZZ)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayoutArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->startAnimationAlphaShowing(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method public setVisiblePreviewBar(ZZ)V
    .locals 1
    .param p1, "isVisible"    # Z
    .param p2, "isForced"    # Z

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->startAnimationAlphaShowing(Landroid/view/View;ZZ)V

    .line 407
    return-void
.end method

.method public setVisiblePreviewMini(ZZ)V
    .locals 1
    .param p1, "isVisible"    # Z
    .param p2, "isForced"    # Z

    .prologue
    .line 411
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayout:Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->startAnimationAlphaShowing(Landroid/view/View;ZZ)V

    .line 412
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mPreviewMiniLayoutOutline:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->startAnimationAlphaShowing(Landroid/view/View;ZZ)V

    .line 413
    return-void
.end method

.method public setVisibleTakingGuide(ZZ)V
    .locals 2
    .param p1, "isVisible"    # Z
    .param p2, "isForced"    # Z

    .prologue
    const/4 v0, 0x0

    .line 429
    if-eqz p1, :cond_0

    .line 430
    const/4 v0, 0x1

    const v1, 0x7f0a035e

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->showGuideText(ZI)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->showGuideText(ZI)V

    goto :goto_0
.end method

.method protected showGuideText(ZI)V
    .locals 2
    .param p1, "isVisible"    # Z
    .param p2, "stringId"    # I

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$3;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;IZ)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 460
    :cond_0
    return-void
.end method

.method protected startAnimationAlphaShowing(Landroid/view/View;ZZ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "isForced"    # Z

    .prologue
    const-wide/16 v8, 0x12c

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 196
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    .line 198
    .local v3, "visibility":I
    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 229
    :goto_1
    return-void

    .line 196
    .end local v3    # "visibility":I
    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    .line 203
    .restart local v3    # "visibility":I
    :cond_1
    const/4 v0, 0x1

    .line 204
    .local v0, "alphaOpaque":I
    const/4 v1, 0x0

    .line 205
    .local v1, "alphaTrans":I
    if-eqz p2, :cond_3

    .line 206
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 210
    .local v2, "anim":Landroid/view/animation/Animation;
    :goto_2
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 211
    new-instance v4, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$1;

    invoke-direct {v4, p0, p1, v3}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$1;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;Landroid/view/View;I)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 228
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 208
    .end local v2    # "anim":Landroid/view/animation/Animation;
    :cond_3
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v2    # "anim":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method protected startAnimationGuideArrowShowing(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z
    .param p3, "isForced"    # Z

    .prologue
    .line 233
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 235
    .local v1, "visibility":I
    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    :cond_0
    :goto_1
    return-void

    .line 233
    .end local v1    # "visibility":I
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 242
    .restart local v1    # "visibility":I
    :cond_2
    if-eqz p2, :cond_3

    .line 243
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 249
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_2
    new-instance v2, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase$2;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 246
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_2
.end method

.method protected startRotateGuideText(Landroid/widget/RelativeLayout;I)V
    .locals 12
    .param p1, "layout"    # Landroid/widget/RelativeLayout;
    .param p2, "degree"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 463
    if-nez p1, :cond_0

    .line 518
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0902b8

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 469
    .local v3, "marginBottom":I
    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0902b9

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 471
    .local v5, "sideMargin":I
    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090197

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 474
    .local v0, "indicatorHeight":I
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 475
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 476
    invoke-virtual {p1, v10}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 477
    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 478
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 479
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 480
    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 482
    const/4 v4, 0x1

    .line 483
    .local v4, "ruleTrue":I
    const/4 v7, 0x2

    .line 484
    .local v7, "twice":I
    const v8, 0x7f0d0099

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 486
    .local v6, "textInnerLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 488
    .local v2, "lpInnerLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 489
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 490
    const/4 v8, -0x2

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 491
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 493
    const v8, 0x7f0d0098

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v8, p2}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 495
    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, p2, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v9, 0xb4

    invoke-static {v8, p2, v9}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 497
    :cond_1
    const/16 v8, 0x14

    invoke-virtual {v1, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 498
    const/16 v8, 0xa

    invoke-virtual {v1, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 499
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 500
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 501
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 503
    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBackgroundPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 516
    :cond_2
    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 504
    :cond_3
    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v9, 0x5a

    invoke-static {v8, p2, v9}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v9, 0x10e

    invoke-static {v8, p2, v9}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 506
    :cond_4
    const/16 v8, 0xc

    invoke-virtual {v1, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 507
    const/16 v8, 0xe

    invoke-virtual {v1, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 508
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 509
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 510
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 512
    iget-object v8, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mBackgroundPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    add-int v9, v5, v0

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_1
.end method

.method public startRotation(IZ)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mInit:Z

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCurOrientaionDegree:I

    .line 326
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCurOrientaionDegree:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->startRotateGuideText(Landroid/widget/RelativeLayout;I)V

    .line 328
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v0, p1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->rotateGuide(I)V

    goto :goto_0
.end method

.method public stopPanorama()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public toastLong(Ljava/lang/String;)V
    .locals 1
    .param p1, "strString"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->toastLong(Ljava/lang/String;)V

    .line 387
    return-void
.end method
