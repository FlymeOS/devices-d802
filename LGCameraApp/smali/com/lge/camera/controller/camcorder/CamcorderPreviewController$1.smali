.class Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;
.super Ljava/lang/Object;
.source "CamcorderPreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->stopRecordingEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 947
    const-string v1, "CameraApp"

    const-string v4, "stopRecordingEffect in run()-start"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v1, :cond_0

    .line 949
    const-string v1, "CameraApp"

    const-string v4, "stopRecordingEffect in run()-end, effectsrecorder is null"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->getState()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 953
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    .line 955
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->stopRecording()V

    .line 956
    const-wide/16 v2, 0x0

    .line 958
    .local v2, "latchCount":J
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2

    .line 959
    const-string v1, "CameraApp"

    const-string v4, "START stopRecordingEffect await"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 961
    const-string v1, "CameraApp"

    const-string v4, "END stopRecordingEffect await"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->mEffectRecordingDoneLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 967
    :cond_2
    :goto_1
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRecordingEffect in run()-end, tryCnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController$1;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    # getter for: Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->tryCnt:I
    invoke-static {v5}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->access$000(Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Latch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
