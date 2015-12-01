.class Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;
.super Ljava/lang/Object;
.source "ContinuousShot.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/module/ContinuousShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/ContinuousShot;


# direct methods
.method private constructor <init>(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/module/ContinuousShot;Lcom/lge/camera/module/ContinuousShot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p2, "x1"    # Lcom/lge/camera/module/ContinuousShot$1;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;-><init>(Lcom/lge/camera/module/ContinuousShot;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 644
    const-string v1, "CameraApp"

    const-string v2, "receive a frame "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    if-eqz p1, :cond_3

    .line 646
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1800(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    if-eqz p1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 653
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$1300(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I
    invoke-static {v2}, Lcom/lge/camera/module/ContinuousShot;->access$1900(Lcom/lge/camera/module/ContinuousShot;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 654
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # operator++ for: Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I
    invoke-static {v1}, Lcom/lge/camera/module/ContinuousShot;->access$308(Lcom/lge/camera/module/ContinuousShot;)I

    .line 655
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### TIME_CHECK : oneShotPreviewCallbackTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J
    invoke-static {v3}, Lcom/lge/camera/module/ContinuousShot;->access$1100(Lcom/lge/camera/module/ContinuousShot;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "Cont. shot onPreviewFrame error: pausing(%b) error flag(%b)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v5, v5, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z
    invoke-static {v5}, Lcom/lge/camera/module/ContinuousShot;->access$000(Lcom/lge/camera/module/ContinuousShot;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "mQueueContinueShot:%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    # getter for: Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v4}, Lcom/lge/camera/module/ContinuousShot;->access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v1, "CameraApp"

    const-string v2, "Unknown error occured. stop conti. shot."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v1}, Lcom/lge/camera/module/ContinuousShot;->stopByUserAction()V

    .line 673
    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v1, v1, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    goto :goto_0

    .line 676
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "data of onPreviewFrame is null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
