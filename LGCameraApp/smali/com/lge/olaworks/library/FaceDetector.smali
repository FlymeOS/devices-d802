.class public Lcom/lge/olaworks/library/FaceDetector;
.super Lcom/lge/olaworks/library/BaseEngine;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/olaworks/library/FaceDetector$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mAutoGet:Z

.field private mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

.field private mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mShowFaceRect:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 33
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    .line 36
    iput-boolean v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    .line 38
    iput-boolean v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mShowFaceRect:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    .line 49
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iput v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    iput v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/lge/olaworks/library/FaceDetector$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/lge/olaworks/library/FaceDetector$Callback;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 33
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    .line 36
    iput-boolean v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    .line 38
    iput-boolean v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mShowFaceRect:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    .line 62
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iput v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    iput v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    .line 66
    iput-object p1, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    .line 67
    return-void
.end method


# virtual methods
.method public create()I
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->create()I

    move-result v0

    .line 143
    .local v0, "retVal":I
    if-eqz v0, :cond_0

    move v1, v0

    .line 148
    .end local v0    # "retVal":I
    .local v1, "retVal":I
    :goto_0
    return v1

    .line 147
    .end local v1    # "retVal":I
    .restart local v0    # "retVal":I
    :cond_0
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->initialize()I

    move-result v0

    move v1, v0

    .line 148
    .end local v0    # "retVal":I
    .restart local v1    # "retVal":I
    goto :goto_0
.end method

.method public destroy()I
    .locals 3

    .prologue
    .line 160
    const-string v1, "CameraApp"

    const-string v2, "destroy()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->destroy()I

    move-result v0

    .line 162
    .local v0, "retVal":I
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->initialize()I

    move-result v0

    .line 163
    return v0
.end method

.method public drawOverlay(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 297
    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    if-nez v2, :cond_1

    .line 310
    :cond_0
    return-void

    .line 300
    :cond_1
    iget-boolean v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mShowFaceRect:Z

    if-eqz v2, :cond_0

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    if-ge v0, v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v2, v2, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v2, v0

    .line 306
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFDInfo()Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    return-object v0
.end method

.method public getFaceDetectorInfo()Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-virtual {v0}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->clear()V

    .line 285
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-static {v0}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->getProcessInfo(Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;)I

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "CameraApp"

    return-object v0
.end method

.method public needRenderMode()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public processImage(Landroid/graphics/Bitmap;I)I
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 212
    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->processImageBitmap(Landroid/graphics/Bitmap;I)I

    move-result v6

    .line 213
    .local v6, "retVal":I
    iget-boolean v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    if-eqz v10, :cond_2

    .line 216
    iget v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    if-nez v10, :cond_3

    .line 217
    :cond_0
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-virtual {v10}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->clear()V

    .line 218
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-static {v10}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->getProcessInfo(Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;)I

    .line 271
    :cond_1
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->initialize()I

    .line 273
    :cond_2
    return v6

    .line 224
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v1, v10

    .line 225
    .local v1, "bitmapWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v0, v10

    .line 227
    .local v0, "bitmapHeight":F
    iget v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    int-to-float v10, v10

    div-float v9, v1, v10

    .line 228
    .local v9, "wRatio":F
    iget v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    int-to-float v10, v10

    div-float v3, v0, v10

    .line 235
    .local v3, "hRatio":F
    if-nez p2, :cond_4

    .line 236
    const-string v10, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wRatio = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", hRatio = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    if-ge v4, v10, :cond_1

    .line 238
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v11, v11, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 239
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v11, v11, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 240
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v11, v11, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    mul-float/2addr v11, v3

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 241
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v11, v11, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    mul-float/2addr v11, v3

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    if-ge v4, v10, :cond_1

    .line 252
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 253
    .local v5, "left":F
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float v7, v9, v10

    .line 254
    .local v7, "right":F
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float v8, v3, v10

    .line 255
    .local v8, "top":F
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float v2, v3, v10

    .line 257
    .local v2, "bottom":F
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    sub-float v11, v1, v2

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 258
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    sub-float v11, v1, v8

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 259
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    float-to-int v11, v5

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 260
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    float-to-int v11, v7

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    .locals 4
    .param p1, "rawContext"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    .line 179
    invoke-static {p1}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->processPreviewRaw(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I

    move-result v0

    .line 180
    .local v0, "retVal":I
    iget-boolean v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-virtual {v1}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->clear()V

    .line 182
    iget-object v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-static {v1}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->getProcessInfo(Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;)I

    .line 184
    iget-object v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    iget-object v3, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v3, v3, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Lcom/lge/olaworks/library/FaceDetector$Callback;->onFaceDetected(I[Landroid/graphics/Rect;)V

    .line 188
    :cond_0
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    if-nez v1, :cond_2

    .line 189
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    iput v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    .line 190
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    iput v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    .line 196
    :cond_1
    :goto_0
    return v0

    .line 191
    :cond_2
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 192
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    iput v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    .line 193
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    iput v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    goto :goto_0
.end method

.method public setARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 100
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    return-void
.end method

.method public showFaceRect(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lge/olaworks/library/FaceDetector;->mShowFaceRect:Z

    .line 84
    return-void
.end method
