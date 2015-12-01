.class public Lcom/lge/camera/controller/camera/FacePreviewController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "FacePreviewController.java"

# interfaces
.implements Lcom/lge/olaworks/library/FaceDetector$Callback;


# static fields
.field private static final FACT_DISTANCE_DEFAULT:I = 0x23

.field private static final MAX_FACE_NUM:I = 0x5

.field private static final NONE_FACE_JUDGE_COUNT:I = 0x5


# instance fields
.field private FACE_DISTANCE_TH:I

.field private FACE_TIME_TH:I

.field private mAverageOfFacePoint:Landroid/graphics/Point;

.field private mCenter_x:F

.field private mCenter_y:F

.field private mCheckNoneFaceCount:I

.field private mDetectedFaces:[Landroid/graphics/Rect;

.field private mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

.field private mFaceDetectedCount:I

.field private mFaceLedEnabled:I

.field private mFaceTimeCnt:I

.field private mIsFaceFocusSuccessed:Z

.field private mIsReadyToInitilaizeFaceRect:Z

.field private mLEDManager:Lcom/lge/systemservice/core/LEDManager;

.field private mLeftMargin:I

.field private mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mPreviousFaceRect:Landroid/graphics/Rect;

.field private mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

.field private mPreviousFocusState:I

.field private mPreviousLargestFaceIndex:I

.field private mRecord:Lcom/lge/systemservice/core/LGLedRecord;

.field private mResetFace:Ljava/lang/Runnable;

.field private mSumOfFacePoint:Landroid/graphics/Point;

.field private mTimerLedEnabled:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 7
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 38
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 39
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 44
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLeftMargin:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    .line 47
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousLargestFaceIndex:I

    .line 50
    const/16 v0, 0x23

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_DISTANCE_TH:I

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_TIME_TH:I

    .line 52
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    .line 54
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    .line 59
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 60
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    .line 62
    iput v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    .line 63
    iput v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mTimerLedEnabled:I

    .line 167
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewWidth:I

    .line 168
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewHeight:I

    .line 169
    iput v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_x:F

    .line 170
    iput v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_y:F

    .line 303
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsReadyToInitilaizeFaceRect:Z

    .line 418
    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    .line 419
    new-instance v0, Lcom/lge/camera/controller/camera/FacePreviewController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FacePreviewController$1;-><init>(Lcom/lge/camera/controller/camera/FacePreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FacePreviewController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FacePreviewController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FacePreviewController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/FacePreviewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FacePreviewController;

    .prologue
    .line 34
    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/controller/camera/FacePreviewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FacePreviewController;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/FacePreviewController;)Lcom/lge/camera/components/CameraPreview;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FacePreviewController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/FacePreviewController;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FacePreviewController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/camera/FacePreviewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/FacePreviewController;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsReadyToInitilaizeFaceRect:Z

    return p1
.end method

.method private flipHorizontal([Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "rects"    # [Landroid/graphics/Rect;
    .param p2, "count"    # I

    .prologue
    .line 539
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v1

    .line 540
    .local v1, "previewWidth":I
    const/4 v2, 0x0

    .line 541
    .local v2, "width":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 542
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 543
    aget-object v3, p1, v0

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v1, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 544
    aget-object v3, p1, v0

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    return-void
.end method

.method private getIndexLargestFace([Landroid/graphics/Rect;I)I
    .locals 6
    .param p1, "detectedFaces"    # [Landroid/graphics/Rect;
    .param p2, "length"    # I

    .prologue
    .line 439
    if-nez p2, :cond_1

    const/4 v1, 0x0

    .line 440
    .local v1, "largestFaceIndex":I
    :goto_0
    const/4 v2, 0x0

    .line 441
    .local v2, "largestFaceWidth":I
    const/4 v3, 0x0

    .line 443
    .local v3, "newWidth":I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    if-nez v4, :cond_3

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 445
    aget-object v4, p1, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v5

    .line 447
    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v5

    .line 449
    if-ge v2, v3, :cond_0

    .line 450
    move v1, v0

    .line 451
    move v2, v3

    .line 444
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    .end local v0    # "i":I
    .end local v1    # "largestFaceIndex":I
    .end local v2    # "largestFaceWidth":I
    .end local v3    # "newWidth":I
    :cond_1
    iget v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousLargestFaceIndex:I

    goto :goto_0

    .line 454
    .restart local v0    # "i":I
    .restart local v1    # "largestFaceIndex":I
    .restart local v2    # "largestFaceWidth":I
    .restart local v3    # "newWidth":I
    :cond_2
    iput v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousLargestFaceIndex:I

    .line 456
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method private initEmotionalLEDForFaceTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 553
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "CameraApp"

    const-string v1, "Initialize Emotional LED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emotional_led_back_camera_face_detecting_noti"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    .line 559
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emotional_led_back_camera_timer_noti"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mTimerLedEnabled:I

    .line 563
    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    if-eq v0, v2, :cond_1

    .line 564
    const-string v0, "CameraApp"

    const-string v1, "FaceTracking LED Setting is disabled"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v1, "emotionled"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LEDManager;

    check-cast v0, Lcom/lge/systemservice/core/LEDManager;

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    .line 570
    new-instance v0, Lcom/lge/systemservice/core/LGLedRecord;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LGLedRecord;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    .line 571
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 572
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    iput v2, v0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 573
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    goto :goto_0
.end method

.method private onFaceDetecedStartFocus([Landroid/graphics/Rect;III)V
    .locals 7
    .param p1, "detectedFaces"    # [Landroid/graphics/Rect;
    .param p2, "largestFaceIndex"    # I
    .param p3, "center_x"    # I
    .param p4, "center_y"    # I

    .prologue
    const/4 v3, -0x1

    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const/4 v1, 0x0

    .line 467
    .local v1, "startFocus":Z
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_6

    .line 468
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_3

    .line 469
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v3, p1, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 470
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 494
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 495
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFocus : center_x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", center_y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x1

    invoke-interface {v2, p3, p4, v3}, Lcom/lge/camera/ControllerFunction;->startFocusByTouchPress(IIZ)V

    .line 497
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v3, p1, p2

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_DISTANCE_TH:I

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_DISTANCE_TH:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lge/camera/controller/camera/FacePreviewController;->outSet(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    .end local v1    # "startFocus":Z
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "startFocus":Z
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 474
    iget v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    iget v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_TIME_TH:I

    if-ne v2, v3, :cond_5

    .line 475
    aget-object v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FacePreviewController;->getSumPosition(Landroid/graphics/Rect;)V

    .line 476
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    div-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 477
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    div-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 478
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 483
    :cond_4
    :goto_2
    iget v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    if-nez v2, :cond_2

    .line 485
    const/4 v1, 0x1

    .line 487
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 479
    :cond_5
    iget v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    iget v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_TIME_TH:I

    if-ge v2, v3, :cond_4

    .line 480
    aget-object v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/FacePreviewController;->getSumPosition(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 491
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method private setFaceDetecedRectColor([Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "detectedFaces"    # [Landroid/graphics/Rect;
    .param p2, "largestFaceIndex"    # I

    .prologue
    .line 512
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 513
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 514
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 515
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 512
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 517
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v3, -0xff0100

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 518
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 519
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-nez v2, :cond_3

    .line 520
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v3, -0xff0100

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_1

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v3, -0x100

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_1

    .line 525
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-nez v2, :cond_5

    if-ne p2, v1, :cond_5

    .line 527
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v3, -0x100

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_1

    .line 529
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setLEDPatternId(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    iput-object p1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    .line 604
    :cond_0
    return-void
.end method

.method private startLEDForFaceTracking()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 578
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    if-ne v0, v3, :cond_0

    .line 580
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    if-eqz v0, :cond_0

    .line 581
    const-string v0, "CameraApp"

    const-string v1, "Emotioinal LED is started"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    invoke-virtual {v0, v1, v3, v2}, Lcom/lge/systemservice/core/LEDManager;->startPattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    .line 586
    :cond_0
    return-void
.end method

.method private stopLEDForFaceTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 589
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceLedEnabled:I

    if-ne v0, v2, :cond_0

    .line 591
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "CameraApp"

    const-string v1, "Emotioinal LED is stopped"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/LEDManager;->stopPattern(Ljava/lang/String;I)I

    .line 597
    :cond_0
    return-void
.end method


# virtual methods
.method public getDetectedFaces()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFaceDetectedCount()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    return v0
.end method

.method public getSumPosition(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 207
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 208
    return-void
.end method

.method public hideView()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public initController()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    const v4, 0x7f09000a

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->getPixelFromDimens(I)I

    move-result v2

    .line 86
    .local v2, "previewWidth":I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "sizeOnScreenString":Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 89
    .local v1, "previewSizeOnScreen":[I
    aget v4, v1, v5

    if-le v4, v2, :cond_1

    .line 90
    iput v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLeftMargin:I

    .line 95
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d0176

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/CameraPreview;

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 97
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    new-instance v4, Lcom/lge/olaworks/library/FaceDetector;

    invoke-direct {v4, p0}, Lcom/lge/olaworks/library/FaceDetector;-><init>(Lcom/lge/olaworks/library/FaceDetector$Callback;)V

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 99
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    invoke-virtual {v4, v5}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    .line 108
    :cond_0
    const/high16 v4, 0x420c0000    # 35.0f

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->FACE_DISTANCE_TH:I

    .line 111
    iput-boolean v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mInit:Z

    .line 112
    return-void

    .line 92
    :cond_1
    const v4, 0x7f09000c

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->getPixelFromDimens(I)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLeftMargin:I

    goto :goto_0

    .line 101
    :cond_2
    new-array v4, v7, [Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 103
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v0

    .line 104
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public initFaceDetectInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 173
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 175
    new-array v3, v6, [Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 177
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v0

    .line 178
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v6, :cond_3

    .line 182
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "i":I
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 190
    :cond_3
    iput v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 191
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->resetFaceRectangles()V

    .line 195
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "sizeOnScreenString":Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 197
    .local v1, "previewSizeOnScreen":[I
    aget v3, v1, v5

    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewWidth:I

    .line 198
    aget v3, v1, v8

    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewHeight:I

    .line 199
    aget v3, v1, v5

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_x:F

    .line 200
    aget v3, v1, v8

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_y:F

    .line 201
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 79
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 80
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 81
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 82
    return-void
.end method

.method public onFaceDetected(I[Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "numDetectedFaces"    # I
    .param p2, "detectedFaces"    # [Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 226
    if-lez p1, :cond_e

    .line 227
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, " captureing or pausing..don\'t need to detect faces"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 232
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 235
    iput-object p2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 237
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 238
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/camera/FacePreviewController;->flipHorizontal([Landroid/graphics/Rect;I)V

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangles([Landroid/graphics/Rect;I)V

    .line 243
    const/4 v0, 0x0

    .local v0, "center_x":I
    const/4 v1, 0x0

    .line 244
    .local v1, "center_y":I
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, p2, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->getIndexLargestFace([Landroid/graphics/Rect;I)I

    move-result v3

    .line 246
    .local v3, "largestFaceIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    if-ge v2, v4, :cond_8

    .line 247
    if-ne v3, v2, :cond_3

    .line 248
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isBlockingFaceTrFocusing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "face blocking return:yellow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v5, -0x100

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 246
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-static {v4}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 254
    :cond_5
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not supported face focus return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v5, -0xff0100

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_2

    .line 257
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    if-nez v4, :cond_7

    .line 258
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v8, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    :cond_7
    aget-object v4, p2, v3

    iget v4, v4, Landroid/graphics/Rect;->right:I

    aget-object v5, p2, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 262
    aget-object v4, p2, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    aget-object v5, p2, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 263
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLeftMargin:I

    add-int/2addr v0, v4

    .line 265
    invoke-direct {p0, p2, v3}, Lcom/lge/camera/controller/camera/FacePreviewController;->setFaceDetecedRectColor([Landroid/graphics/Rect;I)V

    .line 266
    invoke-direct {p0, p2, v3, v0, v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->onFaceDetecedStartFocus([Landroid/graphics/Rect;III)V

    .line 268
    aget-object v4, p2, v3

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 272
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4}, Lcom/lge/camera/components/CameraPreview;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 273
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 276
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mTimerLedEnabled:I

    if-eq v4, v9, :cond_b

    .line 279
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c

    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    if-eqz v4, :cond_c

    .line 281
    const-string v4, "CameraBestShotGuide2.txt"

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->setLEDPatternId(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->startLEDForFaceTracking()V

    .line 292
    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 293
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    goto/16 :goto_0

    .line 284
    :cond_c
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_d

    .line 285
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopLEDForFaceTracking()V

    goto :goto_3

    .line 287
    :cond_d
    const-string v4, "CameraBestShotGuide.txt"

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->setLEDPatternId(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->startLEDForFaceTracking()V

    goto :goto_3

    .line 295
    .end local v0    # "center_x":I
    .end local v1    # "center_y":I
    .end local v2    # "i":I
    .end local v3    # "largestFaceIndex":I
    :cond_e
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 296
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopLEDForFaceTracking()V

    .line 297
    iput v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 298
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    goto/16 :goto_0
.end method

.method public onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V
    .locals 10
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 306
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, " captureing or pausing..don\'t need to detect faces"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    array-length v4, p1

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 313
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HAL FACE] mFaceDetectedCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 317
    array-length v4, p1

    if-lez v4, :cond_12

    .line 318
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iput v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    if-ge v2, v4, :cond_3

    .line 324
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x7d0

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_x:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 326
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewWidth:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x7d0

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_x:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 328
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x7d0

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_y:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 330
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviewHeight:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x7d0

    int-to-float v5, v5

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCenter_y:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 335
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/camera/FacePreviewController;->flipHorizontal([Landroid/graphics/Rect;I)V

    .line 338
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangles([Landroid/graphics/Rect;I)V

    .line 340
    const/4 v0, 0x0

    .local v0, "center_x":I
    const/4 v1, 0x0

    .line 341
    .local v1, "center_y":I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/camera/FacePreviewController;->getIndexLargestFace([Landroid/graphics/Rect;I)I

    move-result v3

    .line 343
    .local v3, "largestFaceIndex":I
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_6

    :cond_5
    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsReadyToInitilaizeFaceRect:Z

    if-nez v4, :cond_6

    .line 346
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsReadyToInitilaizeFaceRect:Z

    .line 349
    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    if-ge v2, v4, :cond_c

    .line 350
    if-ne v3, v2, :cond_7

    .line 351
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isBlockingFaceTrFocusing()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 352
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "face blocking return:yellow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v5, -0x100

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 349
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-static {v4}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 357
    :cond_9
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not supported face focus return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v5, -0xff0100

    invoke-virtual {v4, v2, v5}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_3

    .line 360
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    if-nez v4, :cond_b

    .line 361
    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsReadyToInitilaizeFaceRect:Z

    if-eqz v4, :cond_b

    .line 362
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    invoke-virtual {v4, v9, v9, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 363
    iput-boolean v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsReadyToInitilaizeFaceRect:Z

    .line 367
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 368
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 369
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mLeftMargin:I

    add-int/2addr v0, v4

    .line 371
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    invoke-direct {p0, v4, v3}, Lcom/lge/camera/controller/camera/FacePreviewController;->setFaceDetecedRectColor([Landroid/graphics/Rect;I)V

    .line 372
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    invoke-direct {p0, v4, v3, v0, v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->onFaceDetecedStartFocus([Landroid/graphics/Rect;III)V

    .line 374
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    aget-object v4, v4, v3

    iput-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    goto :goto_3

    .line 378
    :cond_c
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4}, Lcom/lge/camera/components/CameraPreview;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_d

    .line 379
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v4, v8}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 382
    :cond_d
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    iget v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    if-eq v4, v5, :cond_f

    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v4

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mTimerLedEnabled:I

    if-eq v4, v7, :cond_f

    .line 385
    :cond_e
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_10

    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    if-eqz v4, :cond_10

    .line 387
    const-string v4, "CameraBestShotGuide2.txt"

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->setLEDPatternId(Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->startLEDForFaceTracking()V

    .line 398
    :cond_f
    :goto_4
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 399
    iput-boolean v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    goto/16 :goto_0

    .line 390
    :cond_10
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_11

    .line 391
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopLEDForFaceTracking()V

    goto :goto_4

    .line 393
    :cond_11
    const-string v4, "CameraBestShotGuide.txt"

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/FacePreviewController;->setLEDPatternId(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->startLEDForFaceTracking()V

    goto :goto_4

    .line 401
    .end local v0    # "center_x":I
    .end local v1    # "center_y":I
    .end local v2    # "i":I
    .end local v3    # "largestFaceIndex":I
    :cond_12
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_13

    .line 402
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 405
    :cond_13
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    iget v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCheckNoneFaceCount:I

    .line 409
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopLEDForFaceTracking()V

    .line 410
    iput v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFocusState:I

    .line 411
    iput-boolean v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mIsFaceFocusSuccessed:Z

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onPause()V

    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->hideView()V

    .line 73
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mResetFace:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public outSet(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 2
    .param p1, "dst_r"    # Landroid/graphics/Rect;
    .param p2, "src_r"    # Landroid/graphics/Rect;
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    const/4 v1, 0x0

    .line 212
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 213
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 214
    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 215
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 217
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_0

    .line 218
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 220
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_1

    .line 221
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 223
    :cond_1
    return-void
.end method

.method public showView()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public startFaceDetection(Z)V
    .locals 1
    .param p1, "bHasUI"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 118
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initEmotionalLEDForFaceTracking()V

    .line 120
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->startFaceDetectionFromHal(Z)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->showView()V

    .line 128
    :cond_1
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->start()V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "CameraApp"

    const-string v1, "Face dectection stop!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useFaceDetectionFromHal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopFaceDetectionFromHal()V

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->stopLEDForFaceTracking()V

    .line 146
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 147
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->hideView()V

    .line 149
    :cond_1
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    const-string v1, "FaceBeauty"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    const-string v1, "AutoPanorama"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    goto :goto_0
.end method
