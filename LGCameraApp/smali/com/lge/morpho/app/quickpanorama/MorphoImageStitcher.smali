.class public Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;,
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;,
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;,
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;,
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;
    }
.end annotation


# static fields
.field public static final ALPHA_BLEND_IMAGE_FRAME_OFF:I = 0x0

.field public static final ALPHA_BLEND_IMAGE_FRAME_ON:I = 0x1

.field public static final CONTENT_TYPE_MORPHO_PANORAMA:I = 0x1

.field public static final CONTENT_TYPE_NONE:I = 0x0

.field public static final CONTENT_TYPE_PHOTO_SPHERE:I = 0x2

.field public static final CURRENT_IMAGE_FIX_AT_CENTER:I = 0x1

.field public static final CURRENT_IMAGE_FREE:I = 0x0

.field public static final CURRENT_IMAGE_FREE_NEAR_EQUATOR:I = 0x2

.field public static final DISP_TYPE_BACKGROUND:I = 0x2

.field public static final DISP_TYPE_NONE:I = 0x0

.field public static final DISP_TYPE_WIRE_FRAME:I = 0x1

.field public static final ERROR_GENERAL_ERROR:I = -0x80000000

.field public static final ERROR_IO:I = -0x7ffffff8

.field public static final ERROR_MALLOC:I = -0x7ffffffc

.field public static final ERROR_PARAM:I = -0x7fffffff

.field public static final ERROR_STATE:I = -0x7ffffffe

.field public static final ERROR_UNKNOWN:I = -0x40000000

.field public static final ERROR_UNSUPPORTED:I = -0x7ffffff0

.field public static final GUIDE_TYPE_FREE:I = -0x1

.field public static final GUIDE_TYPE_HORIZONTAL:I = 0x0

.field public static final GUIDE_TYPE_RADIAL:I = 0x3

.field public static final GUIDE_TYPE_VANILLA:I = 0x4

.field public static final GUIDE_TYPE_VANILLA2:I = 0x5

.field public static final GUIDE_TYPE_VERTICAL:I = 0x1

.field public static final GUIDE_TYPE_WHIRLPOOL:I = 0x2

.field public static final MODE_STITCHING:I = 0x0

.field public static final MODE_VIEWING:I = 0x1

.field public static final MORPHO_DOPROCESS:I = 0x1

.field public static final MORPHO_OK:I = 0x0

.field private static final POINT_INFO_SIZE:I = 0x2

.field private static final POINT_X_OFFSET:I = 0x0

.field private static final POINT_Y_OFFSET:I = 0x1

.field public static final PROJECTION_TYPE_CYLINDRICAL_H:I = 0x3

.field public static final PROJECTION_TYPE_CYLINDRICAL_V:I = 0x4

.field public static final PROJECTION_TYPE_FISHEYE:I = 0x5

.field public static final PROJECTION_TYPE_MERCATOR_H:I = 0x0

.field public static final PROJECTION_TYPE_MERCATOR_V:I = 0x1

.field public static final PROJECTION_TYPE_PERSPECTIVE:I = 0x2

.field private static final RECT_BOTTOM_OFFSET:I = 0x3

.field private static final RECT_INFO_SIZE:I = 0x4

.field private static final RECT_LEFT_OFFSET:I = 0x0

.field private static final RECT_RIGHT_OFFSET:I = 0x2

.field private static final RECT_TOP_OFFSET:I = 0x1

.field public static final RENDER_MODE_OPEN_GL:I = 0x1

.field public static final RENDER_MODE_SOFT:I = 0x0

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SCROLL_LIMIT_TYPE_BOUNDARY_CENTER:I = 0x1

.field public static final SCROLL_LIMIT_TYPE_BOUNDARY_EDGE:I = 0x0

.field public static final SENSOR_TYPE_ACCELEROMETER:I = 0x3

.field public static final SENSOR_TYPE_CORRECTED_GYROSCOPE:I = 0x2

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x1

.field public static final STATUS_2_3RD_LATITUDE_COMPLETE:I = 0xb

.field public static final STATUS_ALIGN_FAILURE:I = 0x3

.field public static final STATUS_GUIDE_ENDED:I = 0x2

.field public static final STATUS_OUT_OF_MEMORY:I = 0x1

.field public static final STATUS_STITCHING:I = 0x0

.field public static final STATUS_STOPPED_BY_ERROR:I = 0x4

.field public static final STATUS_WARNING_ALIGN_FAILURE:I = 0x8

.field public static final STATUS_WARNING_NEED_TO_STOP:I = 0x5

.field public static final STATUS_WARNING_ROTATED_CLOCKWISE:I = 0x9

.field public static final STATUS_WARNING_ROTATED_COUNTERCLOCKWISE:I = 0xa

.field public static final STATUS_WARNING_TOO_FAR:I = 0x7

.field public static final STATUS_WARNING_TOO_FAST:I = 0x6

.field public static final STATUS_WHOLE_SPHERE_COMPLETE:I = 0xc

.field public static final STILL_IMAGE_FORMAT_JPEG:I = 0x100

.field public static final STILL_IMAGE_FORMAT_YVU420SP:I = 0x11

.field private static final STITCH_INFO_ANGLE_OFFSET:I = 0x1

.field private static final STITCH_INFO_INFO_SIZE:I = 0x2

.field private static final STITCH_INFO_SCALE_OFFSET:I = 0x0

.field public static final USE_IMAGE_FORCE:I = 0x1

.field public static final USE_IMAGE_NONE:I = -0x1

.field public static final USE_IMAGE_NORMAL:I = 0x0

.field public static final USE_SENSOR_FOR_ALIGNMENT_WHEN_FAILED:I = 0x0

.field public static final USE_SENSOR_FOR_GLOBAL_ALIGNMENT:I = 0x1

.field public static final VERSION_1:I = 0x0

.field public static final VERSION_2:I = 0x1


# instance fields
.field private mFinished:Z

.field private mIsInitialized:Z

.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    :try_start_0
    const-string v1, "morpho_panorama_wa_4"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 17
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MorphoImageStitcher"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "MorphoImageStitcher"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    .line 29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mFinished:Z

    .line 120
    iput v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    .line 232
    const-string v1, "CameraApp"

    const-string v2, "MorphoImageStitcher create Start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->createNativeObject()I

    move-result v0

    .line 234
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 235
    iput-boolean v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mFinished:Z

    .line 236
    iput v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    .line 242
    :goto_0
    const-string v1, "MorphoImageStitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create End ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void

    .line 238
    :cond_0
    iput v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    .line 239
    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method public static getContentType(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetContentType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final native nativeAttach(I[BI[I[I)I
.end method

.method private final native nativeDecodeJpeg(ILjava/lang/String;[BLjava/lang/String;II)I
.end method

.method private final native nativeDecodePostview(ILjava/lang/String;[I[I[I[I[I)I
.end method

.method private final native nativeEnd(I)I
.end method

.method private final native nativeFinish(I)I
.end method

.method private final native nativeGetBoundingRect(I[I)I
.end method

.method private final native nativeGetClippingRect(I[I)I
.end method

.method private static final native nativeGetContentType(Ljava/lang/String;)I
.end method

.method private final native nativeGetGalleryDataOfAppSeg(I[B)I
.end method

.method private final native nativeGetGuideType(I[I)I
.end method

.method private final native nativeGetImage(I[BIIII)I
.end method

.method private final native nativeGetIsShootable(I[I)I
.end method

.method private final native nativeGetIsStop(I[I)I
.end method

.method private final native nativeGetPostviewParam(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I
.end method

.method private final native nativeGetPreviewImage(III[B[B)I
.end method

.method private final native nativeGetProjectionType(I[I)I
.end method

.method private final native nativeGetUseSensorAssist(II[I)I
.end method

.method private final native nativeGetUsedHeapSize(I[I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeInitialize(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;[I)I
.end method

.method private final native nativeRegisterStillImage(I[BIILjava/lang/String;)I
.end method

.method private final native nativeReleaseRegisteredImage(I)I
.end method

.method private final native nativeRenderPostview(IDDDI)I
.end method

.method private final native nativeRenderPostviewDefault(II)I
.end method

.method private final native nativeRenderPreview(I[BIII)I
.end method

.method private final native nativeSaveJpeg(ILjava/lang/String;[BLjava/lang/String;III)I
.end method

.method private final native nativeSaveOutputJpeg(ILjava/lang/String;IIIII[ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method private final native nativeSaveRegisteredImage(I)I
.end method

.method private final native nativeSetAngleMatrix(I[DI)I
.end method

.method private final native nativeSetGalleryData(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;II)I
.end method

.method private final native nativeSetGuideType(II)I
.end method

.method private final native nativeSetListenerFromNative(ILandroid/app/Activity;)I
.end method

.method private final native nativeSetMotionlessThreshold(II)I
.end method

.method private final native nativeSetPostviewData(III)I
.end method

.method private final native nativeSetPostviewParam(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I
.end method

.method private final native nativeSetProjectionType(II)I
.end method

.method private final native nativeSetTextureShrinkRatio(II)I
.end method

.method private final native nativeSetUseReplayMode(II)I
.end method

.method private final native nativeSetUseSensorAssist(III)I
.end method

.method private final native nativeSetUseSensorThreshold(II)I
.end method

.method private final native nativeSetUseThreshold(II)I
.end method

.method private final native nativeStart(II)I
.end method

.method private final native nativereReRegisterTexture(I)I
.end method


# virtual methods
.method public attach([BI[I[I)I
    .locals 7
    .param p1, "input_image"    # [B
    .param p2, "use_image"    # I
    .param p3, "image_id"    # [I
    .param p4, "status"    # [I

    .prologue
    .line 305
    const/4 v6, 0x0

    .line 307
    .local v6, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeAttach(I[BI[I[I)I

    move-result v6

    .line 313
    :goto_0
    return v6

    .line 310
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public decodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "output_data"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 821
    const/4 v7, 0x0

    .line 823
    .local v7, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeDecodeJpeg(ILjava/lang/String;[BLjava/lang/String;II)I

    move-result v7

    .line 828
    :goto_0
    return v7

    .line 826
    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0
.end method

.method public decodePostview(Ljava/lang/String;[I[I[I[I[I)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "out_width"    # [I
    .param p3, "out_height"    # [I
    .param p4, "exif_orientation"    # [I
    .param p5, "postview_data_size"    # [I
    .param p6, "gallery_data_size"    # [I

    .prologue
    .line 761
    const/4 v8, 0x0

    .line 763
    .local v8, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeDecodePostview(ILjava/lang/String;[I[I[I[I[I)I

    move-result v8

    .line 769
    :goto_0
    return v8

    .line 766
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public end()I
    .locals 4

    .prologue
    .line 317
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher end Start mIsInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeEnd(I)I

    move-result v0

    .line 326
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher end End ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return v0

    .line 323
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher finish Start mIsInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mFinished:Z

    .line 278
    iget-boolean v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 279
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeFinish(I)I

    move-result v0

    .line 281
    :cond_0
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->deleteNativeObject(I)V

    .line 282
    iput v4, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    .line 283
    iput-boolean v4, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    .line 288
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher finish End ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return v0

    .line 285
    :cond_1
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 406
    .local v0, "rect_info":[I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    iget v2, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetBoundingRect(I[I)I

    move-result v1

    .line 408
    if-nez v1, :cond_0

    .line 409
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 418
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 422
    :cond_1
    return v1

    .line 415
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 429
    .local v0, "rect_info":[I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    iget v2, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetClippingRect(I[I)I

    move-result v1

    .line 431
    if-nez v1, :cond_0

    .line 432
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 441
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    :cond_1
    return v1

    .line 438
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getGalleryDataOfAppSeg([B)I
    .locals 2
    .param p1, "gallery_data"    # [B

    .prologue
    .line 773
    const/4 v0, 0x0

    .line 775
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetGalleryDataOfAppSeg(I[B)I

    move-result v0

    .line 781
    :goto_0
    return v0

    .line 778
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getGuideType([I)I
    .locals 2
    .param p1, "guide_type"    # [I

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetGuideType(I[I)I

    move-result v0

    .line 457
    :goto_0
    return v0

    .line 454
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getImage([BLandroid/graphics/Rect;)I
    .locals 8
    .param p1, "output_image"    # [B
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 331
    const/4 v7, 0x0

    .line 333
    .local v7, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetImage(I[BIIII)I

    move-result v7

    .line 339
    :goto_0
    return v7

    .line 336
    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0
.end method

.method public getIsShootable([I)I
    .locals 2
    .param p1, "is_shootable"    # [I

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetIsShootable(I[I)I

    move-result v0

    .line 705
    :goto_0
    return v0

    .line 702
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getIsStop([I)I
    .locals 2
    .param p1, "is_stop"    # [I

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetIsStop(I[I)I

    move-result v0

    .line 693
    :goto_0
    return v0

    .line 690
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getPostviewParam(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I
    .locals 2
    .param p1, "param"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;
    .param p2, "def_param"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 711
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetPostviewParam(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I

    move-result v0

    .line 717
    :goto_0
    return v0

    .line 714
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getPreviewImage(II[B[B)I
    .locals 7
    .param p1, "output_width"    # I
    .param p2, "output_height"    # I
    .param p3, "output_image"    # [B
    .param p4, "input_image"    # [B

    .prologue
    .line 391
    const/4 v6, 0x0

    .line 393
    .local v6, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetPreviewImage(III[B[B)I

    move-result v6

    .line 399
    :goto_0
    return v6

    .line 396
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public getProjectionType([I)I
    .locals 2
    .param p1, "projection_type"    # [I

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetProjectionType(I[I)I

    move-result v0

    .line 469
    :goto_0
    return v0

    .line 466
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUseSensorAssist(I[I)I
    .locals 2
    .param p1, "use_case"    # I
    .param p2, "enable"    # [I

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetUseSensorAssist(II[I)I

    move-result v0

    .line 493
    :goto_0
    return v0

    .line 490
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUsedHeapSize([I)I
    .locals 2
    .param p1, "used_heap_size"    # [I

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetUsedHeapSize(I[I)I

    move-result v0

    .line 481
    :goto_0
    return v0

    .line 478
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;[I)I
    .locals 4
    .param p1, "param"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;
    .param p2, "buffer_size"    # [I

    .prologue
    .line 246
    const-string v1, "CameraApp"

    const-string v2, "MorphoImageStitcher initialize Start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "ret":I
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    if-eqz v1, :cond_1

    .line 250
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeInitialize(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;[I)I

    move-result v0

    .line 255
    :goto_0
    if-nez v0, :cond_0

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    .line 259
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher initialize End ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return v0

    .line 252
    :cond_1
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mFinished:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reRegisterTexture()I
    .locals 2

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativereReRegisterTexture(I)I

    move-result v0

    .line 387
    :goto_0
    return v0

    .line 384
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public registerStillImage([BIILjava/lang/String;)I
    .locals 7
    .param p1, "still_image"    # [B
    .param p2, "img_id"    # I
    .param p3, "format"    # I
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 749
    const/4 v6, 0x0

    .line 751
    .local v6, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeRegisterStillImage(I[BIILjava/lang/String;)I

    move-result v6

    .line 757
    :goto_0
    return v6

    .line 754
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public releaseRegisteredImage()I
    .locals 5

    .prologue
    .line 656
    const/4 v1, 0x0

    .line 659
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    iget v2, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeReleaseRegisteredImage(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 669
    :goto_0
    return v1

    .line 662
    :cond_0
    const v1, -0x7ffffffe

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    const v1, -0x7ffffffe

    .line 666
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MorphoImageStitcher : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public renderPostview(DDDI)I
    .locals 11
    .param p1, "x_rotate"    # D
    .param p3, "y_rotate"    # D
    .param p5, "scale"    # D
    .param p7, "disp_type"    # I

    .prologue
    .line 355
    const/4 v9, 0x0

    .line 357
    .local v9, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeRenderPostview(IDDDI)I

    move-result v9

    .line 363
    :goto_0
    return v9

    .line 360
    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPostviewDefault(I)I
    .locals 2
    .param p1, "disp_type"    # I

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeRenderPostviewDefault(II)I

    move-result v0

    .line 375
    :goto_0
    return v0

    .line 372
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPreview([BIII)I
    .locals 7
    .param p1, "input_img"    # [B
    .param p2, "image_id"    # I
    .param p3, "disp_type"    # I
    .param p4, "rotation"    # I

    .prologue
    .line 343
    const/4 v6, 0x0

    .line 345
    .local v6, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeRenderPreview(I[BIII)I

    move-result v6

    .line 351
    :goto_0
    return v6

    .line 348
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public saveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "raw_data"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "orientation"    # I

    .prologue
    .line 809
    const/4 v8, 0x0

    .line 811
    .local v8, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSaveJpeg(ILjava/lang/String;[BLjava/lang/String;III)I

    move-result v8

    .line 817
    :goto_0
    return v8

    .line 814
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I
    .param p4, "output_size"    # [I
    .param p5, "first_date"    # Ljava/lang/String;
    .param p6, "last_date"    # Ljava/lang/String;
    .param p7, "addGallerySeg"    # Z

    .prologue
    .line 797
    const/4 v12, 0x0

    .line 799
    .local v12, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSaveOutputJpeg(ILjava/lang/String;IIIII[ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    .line 805
    :goto_0
    return v12

    .line 802
    :cond_0
    const v12, -0x7ffffffe

    goto :goto_0
.end method

.method public saveRegisteredImage()I
    .locals 2

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 736
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSaveRegisteredImage(I)I

    move-result v0

    .line 745
    :goto_0
    return v0

    .line 742
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setAngleMatrix([DI)I
    .locals 2
    .param p1, "matrix"    # [D
    .param p2, "sensor_type"    # I

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 591
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetAngleMatrix(I[DI)I

    move-result v0

    .line 597
    :goto_0
    return v0

    .line 594
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGalleryData(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;II)I
    .locals 2
    .param p1, "gallery_data"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;
    .param p2, "rotation"    # I
    .param p3, "render_low_image"    # I

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetGalleryData(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;II)I

    move-result v0

    .line 621
    :goto_0
    return v0

    .line 618
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGuideType(I)I
    .locals 2
    .param p1, "guide_type"    # I

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 515
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetGuideType(II)I

    move-result v0

    .line 521
    :goto_0
    return v0

    .line 518
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setListenerFromNative(Landroid/app/Activity;)I
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 787
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetListenerFromNative(ILandroid/app/Activity;)I

    move-result v0

    .line 793
    :goto_0
    return v0

    .line 790
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMotionlessThreshold(I)I
    .locals 2
    .param p1, "motionless_threshold"    # I

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetMotionlessThreshold(II)I

    move-result v0

    .line 561
    :goto_0
    return v0

    .line 558
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setPostviewData(II)I
    .locals 2
    .param p1, "rotation"    # I
    .param p2, "render_low_image"    # I

    .prologue
    .line 601
    const/4 v0, 0x0

    .line 603
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetPostviewData(III)I

    move-result v0

    .line 609
    :goto_0
    return v0

    .line 606
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setPostviewParam(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I
    .locals 2
    .param p1, "param"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;
    .param p2, "def_param"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;

    .prologue
    .line 721
    const/4 v0, 0x0

    .line 723
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetPostviewParam(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I

    move-result v0

    .line 729
    :goto_0
    return v0

    .line 726
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setProjectionType(I)I
    .locals 2
    .param p1, "projection_type"    # I

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 527
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetProjectionType(II)I

    move-result v0

    .line 533
    :goto_0
    return v0

    .line 530
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setTextureShrinkRatio(I)I
    .locals 2
    .param p1, "ratio"    # I

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 646
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetTextureShrinkRatio(II)I

    move-result v0

    .line 652
    :goto_0
    return v0

    .line 649
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseReplayMode(I)I
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 673
    const/4 v0, 0x0

    .line 675
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetUseReplayMode(II)I

    move-result v0

    .line 681
    :goto_0
    return v0

    .line 678
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorAssist(II)I
    .locals 2
    .param p1, "use_case"    # I
    .param p2, "enable"    # I

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 627
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetUseSensorAssist(III)I

    move-result v0

    .line 633
    :goto_0
    return v0

    .line 630
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorThreshold(I)I
    .locals 2
    .param p1, "use_sensor_threshold"    # I

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 579
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetUseSensorThreshold(II)I

    move-result v0

    .line 585
    :goto_0
    return v0

    .line 582
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseThreshold(I)I
    .locals 2
    .param p1, "use_threshold"    # I

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 567
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetUseThreshold(II)I

    move-result v0

    .line 573
    :goto_0
    return v0

    .line 570
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start(I)I
    .locals 2
    .param p1, "use_only_preview"    # I

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeStart(II)I

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 298
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
