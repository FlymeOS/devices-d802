.class public Lcom/lge/morpho/core/MorphoPanoramaGP;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;,
        Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;
    }
.end annotation


# static fields
.field public static final DIRECTION_AUTO:I = 0x6

.field public static final DIRECTION_HORIZONTAL:I = 0x0

.field public static final DIRECTION_HORIZONTAL_LEFT:I = 0x2

.field public static final DIRECTION_HORIZONTAL_RIGHT:I = 0x3

.field public static final DIRECTION_VERTICAL:I = 0x1

.field public static final DIRECTION_VERTICAL_DOWN:I = 0x5

.field public static final DIRECTION_VERTICAL_UP:I = 0x4

.field public static final GUIDE_TYPE_HORIZONTAL:I = 0x0

.field public static final GUIDE_TYPE_VERTICAL:I = 0x1

.field private static final RECT_BOTTOM_OFFSET:I = 0x3

.field private static final RECT_INFO_SIZE:I = 0x4

.field private static final RECT_LEFT_OFFSET:I = 0x0

.field private static final RECT_RIGHT_OFFSET:I = 0x2

.field private static final RECT_TOP_OFFSET:I = 0x1

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x1

.field public static final STATUS_ALIGN_FAILURE:I = 0x2

.field public static final STATUS_OUT_OF_MEMORY:I = 0x1

.field public static final STATUS_STITCHING:I = 0x0

.field public static final STATUS_STOPPED_BY_ERROR:I = 0x3

.field public static final STATUS_WARNING_ALIGN_FAILURE:I = 0x7

.field public static final STATUS_WARNING_LITTLE_FAR_1:I = 0xc

.field public static final STATUS_WARNING_LITTLE_FAR_2:I = 0xd

.field public static final STATUS_WARNING_NEED_TO_STOP:I = 0x4

.field public static final STATUS_WARNING_REVERSE:I = 0xa

.field public static final STATUS_WARNING_TOO_FAR:I = 0x6

.field public static final STATUS_WARNING_TOO_FAR_1:I = 0x8

.field public static final STATUS_WARNING_TOO_FAR_2:I = 0x9

.field public static final STATUS_WARNING_TOO_FAST:I = 0x5

.field public static final STATUS_WHOLE_AREA_COMPLETE:I = 0xb

.field public static final STILL_IMAGE_FORMAT_JPEG:I = 0x100

.field public static final STILL_IMAGE_FORMAT_YVU420SP:I = 0x11

.field public static final USE_IMAGE_FORCE:I = 0x1

.field public static final USE_IMAGE_NONE:I = -0x1

.field public static final USE_IMAGE_NORMAL:I

.field public static final USE_SENSOR_FOR_ALIGNMENT_WHEN_FAILED:I


# instance fields
.field private mIsInitialized:Z

.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    :try_start_0
    const-string v1, "morpho_panorama_gp"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 20
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 21
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MorphoPanoramaGP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t loadLibrary \r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    .line 145
    iput-boolean v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mIsInitialized:Z

    .line 160
    invoke-direct {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->createNativeObject()I

    move-result v0

    .line 161
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 163
    iput v0, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    iput v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    .line 166
    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method public static calcImageSize(Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;D)I
    .locals 1
    .param p0, "param"    # Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;
    .param p1, "goal_angle"    # D

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeCalcImageSize(Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;D)I

    move-result v0

    return v0
.end method

.method public static convertImage(Landroid/graphics/Bitmap;[BLjava/lang/String;II)I
    .locals 1
    .param p0, "dst_image"    # Landroid/graphics/Bitmap;
    .param p1, "src_image"    # [B
    .param p2, "src_format"    # Ljava/lang/String;
    .param p3, "src_width"    # I
    .param p4, "src_height"    # I

    .prologue
    .line 142
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeConvertImage(Landroid/graphics/Bitmap;[BLjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private final native createNativeObject()I
.end method

.method public static decodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "output_data"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 137
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeDecodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private final native deleteNativeObject(I)V
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final native nativeAttachPreview(I[BI[I[B[ILandroid/graphics/Bitmap;)I
.end method

.method private final native nativeAttachStillImage(I[BI[B)I
.end method

.method private final native nativeAttachStillImageExt(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private final native nativeAttachStillImageRaw(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeCalcImageSize(Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;D)I
.end method

.method private static final native nativeConvertImage(Landroid/graphics/Bitmap;[BLjava/lang/String;II)I
.end method

.method private static final native nativeDecodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I
.end method

.method private final native nativeEnd(I)I
.end method

.method private final native nativeFinish(I)I
.end method

.method private final native nativeGetBoundingRect(I[I)I
.end method

.method private final native nativeGetClippingRect(I[I)I
.end method

.method private final native nativeGetCurrentDirection(I[I)I
.end method

.method private final native nativeGetGuidancePos(I[I)I
.end method

.method private final native nativeGetImageSize(I[I[I)I
.end method

.method private final native nativeGetMotionlessThreshold(I[I)I
.end method

.method private final native nativeGetNumOfShooting(I[I)I
.end method

.method private final native nativeGetUseSensorAssist(II[I)I
.end method

.method private final native nativeGetUsedHeapSize(I[I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeInitialize(ILcom/lge/morpho/core/MorphoPanoramaGP$InitParam;[I)I
.end method

.method private static final native nativeSaveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I
.end method

.method private final native nativeSaveOutputJpeg(ILjava/lang/String;IIIII)I
.end method

.method private final native nativeSetAngleMatrix(I[DI)I
.end method

.method private final native nativeSetFarThreshold(III)I
.end method

.method private final native nativeSetJpegForCopyingExif(ILjava/nio/ByteBuffer;)I
.end method

.method private final native nativeSetMotionlessThreshold(II)I
.end method

.method private final native nativeSetUseSensorAssist(III)I
.end method

.method private final native nativeSetUseSensorThreshold(II)I
.end method

.method private final native nativeStart(I)I
.end method

.method public static saveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "raw_data"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 132
    invoke-static/range {p0 .. p5}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeSaveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I

    move-result v0

    return v0
.end method

.method private final native setBrightnessCorrection(II)I
.end method


# virtual methods
.method public attachPreview([BI[I[B[ILandroid/graphics/Bitmap;)I
    .locals 9
    .param p1, "input_image"    # [B
    .param p2, "use_image"    # I
    .param p3, "image_id"    # [I
    .param p4, "motion_data"    # [B
    .param p5, "status"    # [I
    .param p6, "preview_image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 225
    const/4 v8, 0x0

    .line 227
    .local v8, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeAttachPreview(I[BI[I[B[ILandroid/graphics/Bitmap;)I

    move-result v8

    .line 236
    :goto_0
    return v8

    .line 233
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "input_image"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeSetJpegForCopyingExif(ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 300
    :goto_0
    return v0

    .line 297
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImage([BI[B)I
    .locals 2
    .param p1, "input_image"    # [B
    .param p2, "image_id"    # I
    .param p3, "motion_data"    # [B

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeAttachStillImage(I[BI[B)I

    move-result v0

    .line 252
    :goto_0
    return v0

    .line 249
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "input_image"    # Ljava/nio/ByteBuffer;
    .param p2, "image_id"    # I
    .param p3, "motion_data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeAttachStillImageExt(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 268
    :goto_0
    return v0

    .line 265
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "input_image"    # Ljava/nio/ByteBuffer;
    .param p2, "image_id"    # I
    .param p3, "motion_data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeAttachStillImageRaw(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v0

    .line 284
    :goto_0
    return v0

    .line 281
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public end()I
    .locals 2

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeEnd(I)I

    move-result v0

    .line 316
    :goto_0
    return v0

    .line 313
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeFinish(I)I

    move-result v0

    .line 196
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->deleteNativeObject(I)V

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    .line 204
    :goto_0
    return v0

    .line 201
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 324
    .local v0, "rect_info":[I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget v2, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetBoundingRect(I[I)I

    move-result v1

    .line 327
    if-nez v1, :cond_0

    .line 329
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 340
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 345
    :cond_1
    return v1

    .line 337
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 353
    .local v0, "rect_info":[I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    iget v2, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetClippingRect(I[I)I

    move-result v1

    .line 356
    if-nez v1, :cond_0

    .line 358
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 374
    :cond_1
    return v1

    .line 366
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getCurrentDirection([I)I
    .locals 2
    .param p1, "direction"    # [I

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetCurrentDirection(I[I)I

    move-result v0

    .line 470
    :goto_0
    return v0

    .line 467
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getGuidancePos(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 4
    .param p1, "attached"    # Landroid/graphics/Point;
    .param p2, "guide"    # Landroid/graphics/Point;

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, "ret":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 526
    .local v0, "pos":[I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    iget v2, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetGuidancePos(I[I)I

    move-result v1

    .line 529
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 530
    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 537
    :goto_0
    return v1

    .line 534
    :cond_0
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getImageSize(Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;)I
    .locals 7
    .param p1, "sPreview"    # Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;
    .param p2, "sOutput"    # Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 558
    const/4 v2, 0x0

    .line 559
    .local v2, "ret":I
    new-array v1, v3, [I

    .line 560
    .local v1, "preview":[I
    new-array v0, v3, [I

    .line 562
    .local v0, "output":[I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    iget v3, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v3, v1, v0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetImageSize(I[I[I)I

    move-result v2

    .line 565
    aget v3, v1, v5

    aget v4, v1, v6

    invoke-virtual {p1, v3, v4}, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;->setSize(II)V

    .line 566
    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {p2, v3, v4}, Lcom/lge/morpho/core/MorphoPanoramaGP$ImageSize;->setSize(II)V

    .line 573
    :goto_0
    return v2

    .line 570
    :cond_0
    const v2, -0x7ffffffe

    goto :goto_0
.end method

.method public getNumOfShooting([I)I
    .locals 2
    .param p1, "nums"    # [I

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 544
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetNumOfShooting(I[I)I

    move-result v0

    .line 553
    :goto_0
    return v0

    .line 550
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUseSensorAssist(I[I)I
    .locals 2
    .param p1, "use_case"    # I
    .param p2, "enable"    # [I

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetUseSensorAssist(II[I)I

    move-result v0

    .line 406
    :goto_0
    return v0

    .line 403
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUsedHeapSize([I)I
    .locals 2
    .param p1, "used_heap_size"    # [I

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeGetUsedHeapSize(I[I)I

    move-result v0

    .line 390
    :goto_0
    return v0

    .line 387
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize(Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;[I)I
    .locals 2
    .param p1, "param"    # Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;
    .param p2, "buffer_size"    # [I

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "ret":I
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    if-eqz v1, :cond_1

    .line 175
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeInitialize(ILcom/lge/morpho/core/MorphoPanoramaGP$InitParam;[I)I

    move-result v0

    .line 182
    :goto_0
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mIsInitialized:Z

    .line 186
    :cond_0
    return v0

    .line 179
    :cond_1
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mIsInitialized:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I

    .prologue
    .line 578
    const/4 v8, 0x0

    .line 580
    .local v8, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeSaveOutputJpeg(ILjava/lang/String;IIIII)I

    move-result v8

    .line 589
    :goto_0
    return v8

    .line 586
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public setAngleMatrix([DI)I
    .locals 2
    .param p1, "matrix"    # [D
    .param p2, "sensor_type"    # I

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 445
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeSetAngleMatrix(I[DI)I

    move-result v0

    .line 454
    :goto_0
    return v0

    .line 451
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setBrightnessCorrection(I)I
    .locals 2
    .param p1, "corect"    # I

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->setBrightnessCorrection(II)I

    move-result v0

    .line 502
    :goto_0
    return v0

    .line 499
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setFarThreshold(II)I
    .locals 2
    .param p1, "far_threshold"    # I
    .param p2, "far_threshold_corss"    # I

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeSetFarThreshold(III)I

    move-result v0

    .line 438
    :goto_0
    return v0

    .line 435
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMotionlessThreshold(I)I
    .locals 2
    .param p1, "motionless_threshold"    # I

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeSetMotionlessThreshold(II)I

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 419
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorAssist(II)I
    .locals 2
    .param p1, "use_case"    # I
    .param p2, "enable"    # I

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeSetUseSensorAssist(III)I

    move-result v0

    .line 486
    :goto_0
    return v0

    .line 483
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorThreshold(I)I
    .locals 2
    .param p1, "threshold"    # I

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeSetUseSensorThreshold(II)I

    move-result v0

    .line 518
    :goto_0
    return v0

    .line 515
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start()I
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget v1, p0, Lcom/lge/morpho/core/MorphoPanoramaGP;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->nativeStart(I)I

    move-result v0

    .line 220
    :goto_0
    return v0

    .line 217
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
