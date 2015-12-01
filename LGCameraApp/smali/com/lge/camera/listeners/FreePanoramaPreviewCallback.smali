.class public Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;
.super Ljava/lang/Object;
.source "FreePanoramaPreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;
    }
.end annotation


# instance fields
.field private final BOUNDARY_DIFF_ANGLE:F

.field private mACMatrix:[D

.field private mAngleOfViewDegree:D

.field private mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

.field private mGyroMatrix:[D

.field private mMaxHeapSize:[I

.field private mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

.field private mPanoramaPreviewCount:I

.field private mPanoramaProcessCount:I

.field private mPrevSensorMat:[D

.field private mRVMatrix:[D

.field private mStatus:[I

.field private mTimeCurrentFrame:J

.field private mTimeFrameInterval:J

.field private mTimePreFrame:J

.field private mUseImage:[I

.field private mUseStillImage:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;)V
    .locals 6
    .param p1, "function"    # Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x9

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    .line 80
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    .line 81
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mACMatrix:[D

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseStillImage:Z

    .line 97
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mMaxHeapSize:[I

    .line 103
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    .line 113
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseImage:[I

    .line 123
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPrevSensorMat:[D

    .line 124
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->BOUNDARY_DIFF_ANGLE:F

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    .line 129
    iput-wide v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimePreFrame:J

    .line 130
    iput-wide v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimeFrameInterval:J

    .line 131
    iput-wide v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimeCurrentFrame:J

    .line 75
    iput-object p1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    .line 76
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    .line 77
    return-void
.end method

.method private calcAngleOfViewDegree(FF)D
    .locals 6
    .param p1, "h_view_angle"    # F
    .param p2, "v_view_angle"    # F

    .prologue
    .line 478
    mul-float v2, p1, p1

    mul-float v3, p2, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    float-to-double v0, v2

    .line 479
    .local v0, "value":D
    const/high16 v2, 0x41800000    # 16.0f

    div-float v2, p1, v2

    const/high16 v3, 0x41100000    # 9.0f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 480
    const-wide v2, 0x406c200000000000L    # 225.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x4075100000000000L    # 337.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 482
    :cond_0
    return-wide v0
.end method

.method private checkAngleDiff([D[DD)Z
    .locals 7
    .param p1, "cur_mat"    # [D
    .param p2, "prev_mat"    # [D
    .param p3, "abs_boundary_angle"    # D

    .prologue
    .line 494
    const/4 v3, 0x3

    new-array v0, v3, [D

    .line 496
    .local v0, "diff":[D
    const/4 v2, 0x1

    .line 497
    .local v2, "ret":Z
    invoke-static {v0, p1, p2}, Lcom/lge/morpho/app/morphopanorama/MathUtil;->getAngleDiff([D[D[D)V

    .line 498
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 499
    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v3, v4, p3

    if-lez v3, :cond_0

    .line 500
    const/4 v2, 0x0

    .line 498
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    :cond_1
    return v2
.end method

.method private initFrameShape()V
    .locals 9

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090241

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    int-to-float v7, v0

    .line 190
    .local v7, "frameWidth":F
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090242

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    int-to-float v8, v0

    .line 193
    .local v8, "registeredFrameWidth":F
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->wire_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 195
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 197
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->effective_input_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 199
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_need_to_stop_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 201
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_info_stitchable_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 203
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofast_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 205
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 207
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_error_alignment_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 210
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const v2, 0x3c807fed    # 0.015686f

    const v3, 0x3f41c1c6

    const v4, 0x3f6dedf2

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 212
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 215
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v1, 0x1

    iput v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->all_guide_disp_remaining_num:I

    .line 216
    return-void
.end method

.method private isStopPanoramaShooting(I)Z
    .locals 2
    .param p1, "attach_status"    # I

    .prologue
    const/4 v0, 0x1

    .line 465
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private panorama_initParam()V
    .locals 18

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x0

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->mode:I

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x1

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->render_mode:I

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    iput-wide v14, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->input_angle_of_view_degree:D

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v13}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPreviewSize()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->input_width:I

    .line 223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v13}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPreviewSize()[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->input_height:I

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseStillImage:Z

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    iput v12, v13, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->use_still_capture:I

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v13}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    iget v13, v13, Landroid/hardware/Camera$Size;->width:I

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->still_width:I

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v13}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    iget v13, v13, Landroid/hardware/Camera$Size;->height:I

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->still_height:I

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    iput-wide v14, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->still_angle_of_view_degree:D

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const-string v13, "YVU420_SEMIPLANAR"

    iput-object v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->format:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x0

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->alpha_blending_image_frame:I

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x1

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->gradually_disp_guide_frame:I

    .line 231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x1

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->fix_current_image:I

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x0

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->disp_current_image:I

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x1

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->blink_preview_mode:I

    .line 234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x1

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->version:I

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const/4 v13, 0x0

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->mask_poles:I

    .line 246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v12}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090008

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 248
    .local v3, "disp_w":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v12}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090009

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 251
    .local v2, "disp_h":I
    if-le v3, v2, :cond_1

    int-to-double v8, v2

    .line 252
    .local v8, "ss":D
    :goto_1
    if-le v3, v2, :cond_2

    int-to-double v4, v3

    .line 253
    .local v4, "ls":D
    :goto_2
    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    .line 254
    .local v10, "ss_fov":D
    mul-double v12, v10, v4

    div-double v6, v12, v8

    .line 255
    .local v6, "ls_fov":D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    mul-double v14, v6, v6

    mul-double v16, v10, v10

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v13, v14

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->angle_fov:I

    .line 256
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "angle_fov="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget v14, v14, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->angle_fov:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " disp_w h ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v12, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    const v13, 0x3e58d8ed

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;->R:F

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v12, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    const v13, 0x3e6ced0b

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;->G:F

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v12, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    const v13, 0x3e78f8e8

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;->B:F

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v12, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    const/4 v13, 0x0

    iput v13, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;->A:F

    .line 263
    return-void

    .line 224
    .end local v2    # "disp_h":I
    .end local v3    # "disp_w":I
    .end local v4    # "ls":D
    .end local v6    # "ls_fov":D
    .end local v8    # "ss":D
    .end local v10    # "ss_fov":D
    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 251
    .restart local v2    # "disp_h":I
    .restart local v3    # "disp_w":I
    :cond_1
    int-to-double v8, v3

    goto :goto_1

    .line 252
    .restart local v8    # "ss":D
    :cond_2
    int-to-double v4, v2

    goto :goto_2
.end method

.method private panorama_initStitcher()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 266
    const/4 v0, 0x1

    .line 267
    .local v0, "isSuccess":Z
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mMaxHeapSize:[I

    invoke-virtual {v4, v5, v6}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->initialize(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;[I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.initialize error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 270
    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v1

    .line 273
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setProjectionType(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setProjectionType error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 277
    if-eqz v0, :cond_0

    .line 280
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setGuideType(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setGuideType error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 285
    if-eqz v0, :cond_0

    .line 288
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setMotionlessThreshold(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setMotionlessThreshold error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 292
    if-eqz v0, :cond_0

    .line 295
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setUseThreshold(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setUseThreshold error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 298
    if-eqz v0, :cond_0

    .line 301
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setUseSensorAssist(II)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setUseSensorAssist error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 305
    if-eqz v0, :cond_0

    .line 308
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setUseSensorAssist(II)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setUseSensorAssist error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 312
    if-eqz v0, :cond_0

    .line 315
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    const/16 v5, 0x320

    invoke-virtual {v4, v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setUseSensorThreshold(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setUseSensorThreshold error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_0

    .line 322
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setTextureShrinkRatio(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setTextureShrinkRatio error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 324
    if-eqz v0, :cond_0

    move v1, v2

    .line 328
    goto/16 :goto_0
.end method

.method private printFrameInterval(Z)V
    .locals 0
    .param p1, "setCurrentTime"    # Z

    .prologue
    .line 362
    return-void
.end method

.method private resetProcessingTimeInfo()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 416
    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimePreFrame:J

    .line 417
    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimeFrameInterval:J

    .line 418
    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimeCurrentFrame:J

    .line 419
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->resetMesureInfo()V

    .line 420
    return-void
.end method

.method private setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V
    .locals 0
    .param p1, "frame"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;
    .param p2, "red"    # F
    .param p3, "green"    # F
    .param p4, "blue"    # F
    .param p5, "alpha"    # F
    .param p6, "width"    # F

    .prologue
    .line 176
    iput p2, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->R:F

    .line 177
    iput p3, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->G:F

    .line 178
    iput p4, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->B:F

    .line 179
    iput p5, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->A:F

    .line 180
    iput p6, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->Width:F

    .line 181
    return-void
.end method


# virtual methods
.method public getMaxHeapSize()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mMaxHeapSize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getStatus()[I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    return-object v0
.end method

.method public getUseImage()[I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseImage:[I

    return-object v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "cameraOutputRaw"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getFinishFlg()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPanoramaState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v0

    if-nez v0, :cond_2

    .line 141
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviewCallback mFinishFlg, getPanoramaState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getFinishFlg()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPanoramaState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPanoramaEngineState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_initialize()V

    .line 152
    iput v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    .line 153
    iput v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_preview([B)V

    .line 157
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    goto :goto_0

    .line 160
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_process([B)V

    .line 161
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    if-ge v0, v3, :cond_1

    .line 162
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    .line 163
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    if-ne v0, v3, :cond_1

    .line 164
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setPanoramaState(I)V

    .line 165
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setShutterButtonImage(Z)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public panorama_initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 332
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setPanoramaEngineState(I)V

    .line 333
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_initParam()V

    .line 334
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->initFrameShape()V

    .line 335
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_initStitcher()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    const-string v0, "CameraApp"

    const-string v1, "init fail and exit"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->start(I)I

    move-result v1

    const-string v2, "mMorphoImageStitcher.start error ret:"

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    .line 344
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseImage:[I

    aput v4, v0, v4

    .line 346
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method

.method public panorama_preview([B)V
    .locals 12
    .param p1, "cameraOutputRaw"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 366
    invoke-direct {p0, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->printFrameInterval(Z)V

    .line 368
    iget v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    if-nez v2, :cond_4

    move v9, v1

    .line 369
    .local v9, "isFirst":Z
    :goto_0
    if-eqz v9, :cond_0

    .line 370
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    aput v0, v2, v0

    .line 371
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->resetProcessingTimeInfo()V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorLockObj()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 375
    const/4 v3, 0x0

    .line 376
    .local v3, "g_mat":[D
    const/4 v4, 0x0

    .line 377
    .local v4, "rv_mat":[D
    const/4 v5, 0x0

    .line 379
    .local v5, "ac_mat":[D
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isUseSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    iget-object v7, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    iget-object v11, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mACMatrix:[D

    invoke-virtual {v2, v6, v7, v11}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorMatrix([D[D[D)V

    .line 381
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    .line 382
    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    .line 383
    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mACMatrix:[D

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuffID()I

    move-result v6

    if-ne v6, v1, :cond_5

    :goto_1
    invoke-interface {v2, v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setCameraBuffID(I)V

    .line 387
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 388
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderInfo([BLjava/util/ArrayList;[D[D[DII)V

    .line 390
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getGLPanoramaView()Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->requestRender()V

    .line 392
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPanoramaState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getWaitTime()I

    move-result v0

    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getWaitTime()I

    move-result v0

    if-ltz v0, :cond_3

    .line 395
    if-eqz v3, :cond_3

    .line 396
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPrevSensorMat:[D

    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->BOUNDARY_DIFF_ANGLE:F

    float-to-double v6, v1

    invoke-direct {p0, v3, v0, v6, v7}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->checkAngleDiff([D[DD)Z

    move-result v8

    .line 397
    .local v8, "check":Z
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPrevSensorMat:[D

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPrevSensorMat:[D

    array-length v6, v6

    invoke-static {v3, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 399
    if-nez v8, :cond_3

    .line 400
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setWaitTime(I)V

    .line 401
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getGyroscope()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getGyroscopeValueList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setSensorCorrectionGuideCounter(I)V

    .line 405
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 406
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/core/MorphoSensorFusion;->calc()I

    .line 412
    .end local v8    # "check":Z
    :cond_3
    monitor-exit v10

    .line 413
    return-void

    .end local v3    # "g_mat":[D
    .end local v4    # "rv_mat":[D
    .end local v5    # "ac_mat":[D
    .end local v9    # "isFirst":Z
    :cond_4
    move v9, v0

    .line 368
    goto/16 :goto_0

    .restart local v3    # "g_mat":[D
    .restart local v4    # "rv_mat":[D
    .restart local v5    # "ac_mat":[D
    .restart local v9    # "isFirst":Z
    :cond_5
    move v0, v1

    .line 386
    goto/16 :goto_1

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public panorama_process([B)V
    .locals 11
    .param p1, "cameraOutputRaw"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 427
    iget v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    if-nez v2, :cond_2

    move v8, v1

    .line 430
    .local v8, "isFirst":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->resetProcessingTimeInfo()V

    .line 432
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->end()I

    move-result v6

    const-string v7, "mMorphoImageStitcher.start error ret:"

    invoke-interface {v2, v6, v7, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    .line 434
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->start(I)I

    move-result v6

    const-string v7, "mMorphoImageStitcher.start error ret:"

    invoke-interface {v2, v6, v7, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    .line 438
    :cond_0
    invoke-direct {p0, v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->printFrameInterval(Z)V

    .line 440
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorLockObj()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 441
    const/4 v3, 0x0

    .line 442
    .local v3, "g_mat":[D
    const/4 v4, 0x0

    .line 443
    .local v4, "rv_mat":[D
    const/4 v5, 0x0

    .line 445
    .local v5, "ac_mat":[D
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isUseSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    iget-object v7, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mACMatrix:[D

    invoke-virtual {v2, v6, v7, v10}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorMatrix([D[D[D)V

    .line 447
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    .line 448
    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    .line 449
    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mACMatrix:[D

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuffID()I

    move-result v6

    if-ne v6, v1, :cond_3

    :goto_1
    invoke-interface {v2, v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setCameraBuffID(I)V

    .line 453
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->isStopPanoramaShooting(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    monitor-exit v9

    .line 462
    :goto_2
    return-void

    .end local v3    # "g_mat":[D
    .end local v4    # "rv_mat":[D
    .end local v5    # "ac_mat":[D
    .end local v8    # "isFirst":Z
    :cond_2
    move v8, v0

    .line 427
    goto :goto_0

    .restart local v3    # "g_mat":[D
    .restart local v4    # "rv_mat":[D
    .restart local v5    # "ac_mat":[D
    .restart local v8    # "isFirst":Z
    :cond_3
    move v0, v1

    .line 452
    goto :goto_1

    .line 456
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 457
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v6, -0x1

    iget v7, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderInfo([BLjava/util/ArrayList;[D[D[DII)V

    .line 459
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getGLPanoramaView()Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->requestRender()V

    .line 461
    monitor-exit v9

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    .line 88
    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    .line 89
    return-void
.end method

.method public setAngleOfViewDegree(FF)V
    .locals 4
    .param p1, "viewAngleH"    # F
    .param p2, "viewAngleV"    # F

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->calcAngleOfViewDegree(FF)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    .line 487
    iget-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    iget-wide v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 488
    :cond_0
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    .line 490
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAngleOfViewDegree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 111
    return-void
.end method

.method public setUseImage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseImage:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 121
    return-void
.end method

.method public setUseStillImage(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseStillImage:Z

    .line 95
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    .line 135
    return-void
.end method
