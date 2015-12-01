.class Lcom/lge/camera/module/ClearShot$1;
.super Ljava/lang/Object;
.source "ClearShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/ClearShot;->deviceTakePicture(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/ClearShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/ClearShot;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 91
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v1, v1, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/lge/camera/module/ClearShot;->mCheckShotTimeInterval:J
    invoke-static {v1, v2, v3}, Lcom/lge/camera/module/ClearShot;->access$002(Lcom/lge/camera/module/ClearShot;J)J

    .line 95
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v1, v1, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v1, v1, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    # getter for: Lcom/lge/camera/module/ClearShot;->mClearCount:I
    invoke-static {v1}, Lcom/lge/camera/module/ClearShot;->access$100(Lcom/lge/camera/module/ClearShot;)I

    move-result v1

    if-nez v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v2, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v2, v2, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v2

    # setter for: Lcom/lge/camera/module/ClearShot;->iDegree:I
    invoke-static {v1, v2}, Lcom/lge/camera/module/ClearShot;->access$202(Lcom/lge/camera/module/ClearShot;I)I

    .line 104
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    invoke-virtual {v1}, Lcom/lge/camera/module/ClearShot;->playSound()V

    .line 105
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v1, v1, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v3, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v3, v3, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/ControllerFunction;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/lge/camera/listeners/JpegPictureCallback;

    iget-object v6, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    invoke-direct {v5, v6}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClearShot-takePicture  failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    const v2, 0x7f0a0323

    invoke-virtual {v1, v2}, Lcom/lge/camera/module/ClearShot;->handleTakePictureError(I)V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    # getter for: Lcom/lge/camera/module/ClearShot;->iDegree:I
    invoke-static {v1}, Lcom/lge/camera/module/ClearShot;->access$200(Lcom/lge/camera/module/ClearShot;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    iget-object v2, v2, Lcom/lge/camera/module/ClearShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 102
    iget-object v1, p0, Lcom/lge/camera/module/ClearShot$1;->this$0:Lcom/lge/camera/module/ClearShot;

    const/4 v2, 0x1

    # setter for: Lcom/lge/camera/module/ClearShot;->isCaptureFailed:Z
    invoke-static {v1, v2}, Lcom/lge/camera/module/ClearShot;->access$302(Lcom/lge/camera/module/ClearShot;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
