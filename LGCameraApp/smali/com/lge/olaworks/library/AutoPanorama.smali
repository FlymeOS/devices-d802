.class public Lcom/lge/olaworks/library/AutoPanorama;
.super Lcom/lge/olaworks/library/BaseEngine;
.source "AutoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/olaworks/library/AutoPanorama$1;,
        Lcom/lge/olaworks/library/AutoPanorama$Callback;,
        Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;,
        Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_PANNING_SPEED_THRESHOLD:I = 0x64

.field public static final ENGINE_TAG:Ljava/lang/String; = "AutoPanorama"

.field public static final MODE_DIRECITON_ALL:I = 0x0

.field public static final MODE_DIRECTION_HORIZONTAL_ONLY:I = 0x1

.field public static final MODE_IMAGE_JPEG:I = 0x1

.field public static final MODE_IMAGE_PREVIEW:I = 0x0

.field public static final MODE_THUMBANIL_DISABLE:I = 0x0

.field public static final MODE_THUMBANIL_ENABLE:I = 0x1

.field private static final NEED_TO_SETFRAME:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private isConfigureLandscape:Z

.field mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

.field mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

.field private mInitOrientation:I

.field private mLlogLevel:I

.field private mModeDirection:I

.field private mModeSetFrameImage:I

.field private mModeThumbnail:I

.field private mOneShotOrientation:I

.field private mPanningSpeedThreshold:I

.field private mSetFrameCount:I

.field private mSetFrameData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/olaworks/datastruct/JOlaBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSetFrameThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mStartSynthesisTask:Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;

.field private mSynthesisCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field mThumbInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

.field private mThumbnailExpectedSize:[I

.field private mWarningStatus:Z


# direct methods
.method public constructor <init>(IIILcom/lge/olaworks/library/AutoPanorama$Callback;)V
    .locals 3
    .param p1, "modeImage"    # I
    .param p2, "modeDirect"    # I
    .param p3, "modeThumb"    # I
    .param p4, "callback"    # Lcom/lge/olaworks/library/AutoPanorama$Callback;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 41
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    .line 42
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mPanningSpeedThreshold:I

    .line 52
    iput-boolean v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    .line 53
    iput v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    .line 55
    iput v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeSetFrameImage:I

    .line 56
    iput v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    .line 57
    iput v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeDirection:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameData:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameThreads:Ljava/util/ArrayList;

    .line 65
    iput-boolean v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->isConfigureLandscape:Z

    .line 66
    iput v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mLlogLevel:I

    .line 135
    iput p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeSetFrameImage:I

    .line 136
    iput p2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeDirection:I

    .line 137
    iput p3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    .line 138
    iput-object p4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/lge/olaworks/library/AutoPanorama;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/olaworks/library/AutoPanorama;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSynthesisCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/olaworks/library/AutoPanorama;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSynthesisCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/olaworks/library/AutoPanorama;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/olaworks/library/AutoPanorama;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mOneShotOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/olaworks/library/AutoPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->isConfigureLandscape:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lge/olaworks/library/AutoPanorama;Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;
    .param p1, "x1"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/olaworks/library/AutoPanorama;->prepareOutput(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lge/olaworks/library/AutoPanorama;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/olaworks/library/AutoPanorama;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/olaworks/library/AutoPanorama;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    return p1
.end method

.method private addFrameDataList(Lcom/lge/olaworks/datastruct/JOlaBitmap;)V
    .locals 7
    .param p1, "olaBitmap"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    .line 254
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    iget v2, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    iget v3, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageFormat:I

    iget v4, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    iget-object v5, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    iget-object v6, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    array-length v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII[BI)V

    .line 256
    .local v0, "temp":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method private cancel()I
    .locals 6

    .prologue
    .line 187
    const-string v3, "CameraApp"

    const-string v4, "cancel()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->cancel()I

    move-result v2

    .line 189
    .local v2, "ret":I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 200
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 201
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameThreads:Ljava/util/ArrayList;

    .line 203
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mStartSynthesisTask:Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mStartSynthesisTask:Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;

    invoke-virtual {v3}, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_2

    .line 206
    :try_start_1
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSynthesisCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSynthesisCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :cond_2
    :goto_2
    return v2

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method private makeThumbnail()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 282
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>()V

    .line 283
    .local v0, "olabitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    invoke-static {v0}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->makeThumbnail(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I

    move-result v1

    .line 284
    .local v1, "retVal":I
    if-gez v1, :cond_0

    .line 285
    const/4 v2, 0x0

    .line 292
    :goto_0
    return-object v2

    .line 288
    :cond_0
    iget v3, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    iget v4, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 290
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2}, Lcom/lge/olaworks/datastruct/JOlaBitmap;->getBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private prepareOutput(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    .locals 11
    .param p1, "output"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    const/4 v10, 0x0

    .line 111
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    const/16 v2, 0x11

    iget v3, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    iget v4, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 112
    .local v0, "data":Landroid/graphics/YuvImage;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v7, "ostream":Ljava/io/ByteArrayOutputStream;
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    rem-int/lit8 v9, v1, 0x10

    .line 114
    .local v9, "w":I
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    rem-int/lit8 v6, v1, 0x10

    .line 116
    .local v6, "h":I
    if-eqz v9, :cond_0

    .line 117
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    sub-int/2addr v1, v9

    iput v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    .line 119
    :cond_0
    if-eqz v6, :cond_1

    .line 120
    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    sub-int/2addr v1, v6

    iput v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    .line 123
    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    iget v1, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->width:I

    iget v2, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->height:I

    invoke-direct {v8, v10, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    .local v8, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    const/16 v1, 0x5f

    invoke-virtual {v0, v8, v1, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onComplete([B)V

    .line 131
    return v10
.end method


# virtual methods
.method public create()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->create()I

    move-result v0

    .line 163
    .local v0, "retVal":I
    if-gez v0, :cond_1

    move v1, v0

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->initialize()I

    move-result v0

    .line 168
    if-gez v0, :cond_2

    move v1, v0

    .line 169
    goto :goto_0

    .line 172
    :cond_2
    iget v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeDirection:I

    invoke-static {v1, v2}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    .line 173
    iget v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    invoke-static {v5, v2}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    .line 175
    iget v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    if-ne v2, v5, :cond_3

    .line 176
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    invoke-virtual {v2}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->clear()V

    .line 177
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setThumbnailSize(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;II)I

    move-result v0

    .line 179
    :cond_3
    if-gtz v0, :cond_0

    move v1, v0

    .line 180
    goto :goto_0
.end method

.method public destroy()I
    .locals 2

    .prologue
    .line 218
    const-string v0, "CameraApp"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/lge/olaworks/library/AutoPanorama;->cancel()I

    .line 220
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->destroy()I

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public getModeDirection()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeDirection:I

    return v0
.end method

.method public getModeThumbnail()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "AutoPanorama"

    return-object v0
.end method

.method public getThumbnailExpectedSize()[I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I

    return-object v0
.end method

.method public getThumbnailInfo()Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    return-object v0
.end method

.method public needRenderMode()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public processImage(Landroid/graphics/Bitmap;I)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 350
    const-string v0, "CameraApp"

    const-string v1, "Auto Panorama not support function processImage"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    .locals 6
    .param p1, "olaBitmap"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 298
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-virtual {v2}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->clear()V

    .line 299
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-static {p1, v2}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->processFrame(Lcom/lge/olaworks/datastruct/JOlaBitmap;Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)I

    move-result v0

    .line 301
    .local v0, "retVal":I
    if-gez v0, :cond_0

    .line 346
    .end local v0    # "retVal":I
    :goto_0
    return v0

    .line 305
    .restart local v0    # "retVal":I
    :cond_0
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onProcessFrame(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)V

    .line 308
    if-ne v0, v4, :cond_2

    .line 309
    iget v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeSetFrameImage:I

    if-nez v2, :cond_6

    .line 310
    iget v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    if-ne v2, v4, :cond_1

    .line 311
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    if-ne v2, v5, :cond_1

    .line 312
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-interface {v2}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onSetStartSyncForceDelay()V

    .line 315
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/olaworks/library/AutoPanorama;->setFrameProcess(Lcom/lge/olaworks/datastruct/JOlaBitmap;)V

    .line 321
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->displacement:I

    iget v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mPanningSpeedThreshold:I

    if-le v2, v3, :cond_7

    .line 322
    iget-boolean v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    if-nez v2, :cond_3

    .line 323
    iput-boolean v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    .line 324
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    iget-boolean v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onPanningSpeedWarning(Z)V

    .line 333
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->status:I

    if-ne v2, v5, :cond_5

    .line 334
    if-eq v0, v4, :cond_4

    .line 335
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-interface {v2}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onAlarmStartSync()V

    .line 337
    :cond_4
    if-eq v0, v4, :cond_8

    .line 338
    invoke-virtual {p0}, Lcom/lge/olaworks/library/AutoPanorama;->runStartSynthesisTask()V

    :cond_5
    :goto_3
    move v0, v1

    .line 346
    goto :goto_0

    .line 317
    :cond_6
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    iget v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onTakePicture(I)V

    goto :goto_1

    .line 327
    :cond_7
    iget-boolean v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    if-eqz v2, :cond_3

    .line 328
    iput-boolean v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    .line 329
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    iget-boolean v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onPanningSpeedWarning(Z)V

    goto :goto_2

    .line 340
    :cond_8
    iget v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeSetFrameImage:I

    if-ne v2, v4, :cond_5

    .line 341
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-interface {v2}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onSetStartSyncForceDelay()V

    goto :goto_3
.end method

.method public runStartSynthesisTask()V
    .locals 2

    .prologue
    .line 371
    new-instance v0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;-><init>(Lcom/lge/olaworks/library/AutoPanorama;Lcom/lge/olaworks/library/AutoPanorama$1;)V

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mStartSynthesisTask:Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;

    .line 372
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mStartSynthesisTask:Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 373
    return-void
.end method

.method public setConfigureLandscape(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->isConfigureLandscape:Z

    .line 70
    return-void
.end method

.method public setFrameProcess(Lcom/lge/olaworks/datastruct/JOlaBitmap;)V
    .locals 7
    .param p1, "olaBitmap"    # Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .prologue
    const/4 v3, 0x1

    .line 260
    invoke-direct {p0, p1}, Lcom/lge/olaworks/library/AutoPanorama;->addFrameDataList(Lcom/lge/olaworks/datastruct/JOlaBitmap;)V

    .line 261
    iget v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    if-nez v4, :cond_0

    .line 262
    iget v4, p1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    iput v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I

    .line 265
    :cond_0
    iget v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    .line 266
    iget v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    move v0, v3

    .line 267
    .local v0, "drawGuideBox":Z
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSetFrameCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    if-ne v4, v3, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/lge/olaworks/library/AutoPanorama;->makeThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 270
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 271
    iget-object v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-interface {v4, v2, v0}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onGetThumbnailImage(Landroid/graphics/Bitmap;Z)V

    .line 275
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;

    iget v5, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I

    invoke-direct {v4, p0, v5}, Lcom/lge/olaworks/library/AutoPanorama$SetFrameRunnable;-><init>(Lcom/lge/olaworks/library/AutoPanorama;I)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 276
    .local v1, "setFrameThread":Ljava/lang/Thread;
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 277
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 278
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    return-void

    .line 266
    .end local v0    # "drawGuideBox":Z
    .end local v1    # "setFrameThread":Ljava/lang/Thread;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setModeDirection(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeDirection:I

    .line 95
    return-void
.end method

.method public setModeThumbnail(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I

    .line 87
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mOneShotOrientation:I

    .line 74
    return-void
.end method

.method public setThumbnailExpectedSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 106
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 107
    return-void
.end method

.method public stopProcess()I
    .locals 3

    .prologue
    .line 355
    const-string v1, "CameraApp"

    const-string v2, "stopProcess()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "retVal":I
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->stopProcess()I

    move-result v0

    .line 360
    if-gez v0, :cond_0

    .line 361
    const-string v1, "CameraApp"

    const-string v2, "auto panorama stop process fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onComplete([B)V

    .line 367
    .end local v0    # "retVal":I
    :goto_0
    return v0

    .line 365
    .restart local v0    # "retVal":I
    :cond_0
    invoke-virtual {p0}, Lcom/lge/olaworks/library/AutoPanorama;->runStartSynthesisTask()V

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method
