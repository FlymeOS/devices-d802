.class Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;
.super Landroid/os/AsyncTask;
.source "AutoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/library/AutoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartSynthesisTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/olaworks/library/AutoPanorama;


# direct methods
.method private constructor <init>(Lcom/lge/olaworks/library/AutoPanorama;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/olaworks/library/AutoPanorama;Lcom/lge/olaworks/library/AutoPanorama$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/olaworks/library/AutoPanorama;
    .param p2, "x1"    # Lcom/lge/olaworks/library/AutoPanorama$1;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;-><init>(Lcom/lge/olaworks/library/AutoPanorama;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 390
    const-string v3, "CameraApp"

    const-string v4, "doInBackground"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "retVal":I
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>()V

    .line 394
    .local v0, "output":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    const/4 v2, 0x0

    .line 396
    .local v2, "rotDeg":I
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I
    invoke-static {v3}, Lcom/lge/olaworks/library/AutoPanorama;->access$300(Lcom/lge/olaworks/library/AutoPanorama;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 397
    const/16 v2, 0x5a

    .line 406
    :goto_0
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->isConfigureLandscape:Z
    invoke-static {v3}, Lcom/lge/olaworks/library/AutoPanorama;->access$500(Lcom/lge/olaworks/library/AutoPanorama;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    add-int/lit8 v3, v2, 0x5a

    rem-int/lit16 v2, v3, 0x168

    .line 410
    :cond_0
    invoke-static {v0, v2}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->processSynthesis(Lcom/lge/olaworks/datastruct/JOlaBitmap;I)I

    move-result v1

    .line 411
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processSynthesis ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-ltz v1, :cond_1

    .line 414
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # invokes: Lcom/lge/olaworks/library/AutoPanorama;->prepareOutput(Lcom/lge/olaworks/datastruct/JOlaBitmap;)I
    invoke-static {v3, v0}, Lcom/lge/olaworks/library/AutoPanorama;->access$600(Lcom/lge/olaworks/library/AutoPanorama;Lcom/lge/olaworks/datastruct/JOlaBitmap;)I

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mSynthesisCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/lge/olaworks/library/AutoPanorama;->access$200(Lcom/lge/olaworks/library/AutoPanorama;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 418
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    const/4 v4, 0x0

    # setter for: Lcom/lge/olaworks/library/AutoPanorama;->mSynthesisCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3, v4}, Lcom/lge/olaworks/library/AutoPanorama;->access$202(Lcom/lge/olaworks/library/AutoPanorama;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 398
    :cond_2
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I
    invoke-static {v3}, Lcom/lge/olaworks/library/AutoPanorama;->access$300(Lcom/lge/olaworks/library/AutoPanorama;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 399
    const/16 v2, 0xb4

    goto :goto_0

    .line 400
    :cond_3
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I
    invoke-static {v3}, Lcom/lge/olaworks/library/AutoPanorama;->access$300(Lcom/lge/olaworks/library/AutoPanorama;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 401
    const/16 v2, 0x10e

    goto :goto_0

    .line 403
    :cond_4
    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mOneShotOrientation:I
    invoke-static {v3}, Lcom/lge/olaworks/library/AutoPanorama;->access$400(Lcom/lge/olaworks/library/AutoPanorama;)I

    move-result v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 378
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 449
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 424
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 427
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSynthesis fail! - retVal  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v1, v1, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onSynthesisProgressUpdate(I)V

    .line 432
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->initialize()I

    .line 434
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mModeThumbnail:I
    invoke-static {v1}, Lcom/lge/olaworks/library/AutoPanorama;->access$700(Lcom/lge/olaworks/library/AutoPanorama;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 435
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v1, v1, Lcom/lge/olaworks/library/AutoPanorama;->mThumbInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    invoke-virtual {v1}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->clear()V

    .line 436
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v1, v1, Lcom/lge/olaworks/library/AutoPanorama;->mThumbInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I
    invoke-static {v2}, Lcom/lge/olaworks/library/AutoPanorama;->access$800(Lcom/lge/olaworks/library/AutoPanorama;)[I

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mThumbnailExpectedSize:[I
    invoke-static {v3}, Lcom/lge/olaworks/library/AutoPanorama;->access$800(Lcom/lge/olaworks/library/AutoPanorama;)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setThumbnailSize(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;II)I

    .line 439
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/olaworks/library/AutoPanorama;->access$000(Lcom/lge/olaworks/library/AutoPanorama;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/olaworks/library/AutoPanorama;->access$000(Lcom/lge/olaworks/library/AutoPanorama;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # getter for: Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lge/olaworks/library/AutoPanorama;->access$000(Lcom/lge/olaworks/library/AutoPanorama;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 443
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    # setter for: Lcom/lge/olaworks/library/AutoPanorama;->mSetFrameCount:I
    invoke-static {v1, v4}, Lcom/lge/olaworks/library/AutoPanorama;->access$902(Lcom/lge/olaworks/library/AutoPanorama;I)I

    .line 444
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 378
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 382
    const-string v0, "CameraApp"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/lge/olaworks/library/AutoPanorama;->mSynthesisCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/lge/olaworks/library/AutoPanorama;->access$202(Lcom/lge/olaworks/library/AutoPanorama;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 384
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama$StartSynthesisTask;->this$0:Lcom/lge/olaworks/library/AutoPanorama;

    iget-object v0, v0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onSynthesisProgressUpdate(I)V

    .line 385
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 386
    return-void
.end method
