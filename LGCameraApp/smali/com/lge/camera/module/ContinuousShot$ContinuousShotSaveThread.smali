.class Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;
.super Ljava/lang/Object;
.source "ContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/module/ContinuousShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousShotSaveThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/ContinuousShot;


# direct methods
.method private constructor <init>(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/module/ContinuousShot;Lcom/lge/camera/module/ContinuousShot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p2, "x1"    # Lcom/lge/camera/module/ContinuousShot$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;-><init>(Lcom/lge/camera/module/ContinuousShot;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 350
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v3, 0x0

    .line 355
    .local v3, "rawData":[B
    const/4 v8, 0x0

    .line 356
    .local v8, "data":[B
    const/4 v6, 0x0

    .line 357
    .local v6, "rotation":I
    const-wide/16 v10, 0x0

    .line 358
    .local v10, "now":J
    const-string v2, "CameraApp"

    const-string v4, "[ContinuousShotSaveThread]-start"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v4, v4, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 364
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$800(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 368
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_5

    .line 400
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # setter for: Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z
    invoke-static {v2, v14}, Lcom/lge/camera/module/ContinuousShot;->access$802(Lcom/lge/camera/module/ContinuousShot;Z)Z

    .line 401
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # invokes: Lcom/lge/camera/module/ContinuousShot;->notifySaveDone()V
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1700(Lcom/lge/camera/module/ContinuousShot;)V

    .line 403
    if-eqz v8, :cond_4

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 404
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # invokes: Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1200(Lcom/lge/camera/module/ContinuousShot;)V

    .line 416
    const-string v2, "CameraApp"

    const-string v4, "[ContinuousShotSaveThread]-end"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 373
    const-string v2, "CameraApp"

    const-string v4, "Quit save cont.shot thread"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # invokes: Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1200(Lcom/lge/camera/module/ContinuousShot;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 393
    :catch_0
    move-exception v9

    .line 394
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v4, "Exception occured in ContinuousShotSaveThread"

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 378
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1300(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 379
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .line 380
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v2, v2, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->previewWidth:I
    invoke-static {v4}, Lcom/lge/camera/module/ContinuousShot;->access$1400(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->previewHeight:I
    invoke-static {v5}, Lcom/lge/camera/module/ContinuousShot;->access$1500(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v5

    const/16 v7, 0x5f

    invoke-virtual/range {v2 .. v7}, Lcom/lge/camera/util/ImageHandler;->convertYuvToJpeg([BIIII)[B

    move-result-object v8

    .line 383
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "converting YUV to JPEG time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dqueue orientation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # invokes: Lcom/lge/camera/module/ContinuousShot;->saveContiShotImage2([BI)Z
    invoke-static {v2, v8, v6}, Lcom/lge/camera/module/ContinuousShot;->access$1600(Lcom/lge/camera/module/ContinuousShot;[BI)Z

    move-result v2

    if-nez v2, :cond_2

    .line 389
    const-string v2, "CameraApp"

    const-string v4, "Error occured while saving cont.shot."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;->this$0:Lcom/lge/camera/module/ContinuousShot;

    const/4 v4, 0x1

    # setter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v2, v4}, Lcom/lge/camera/module/ContinuousShot;->access$002(Lcom/lge/camera/module/ContinuousShot;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
