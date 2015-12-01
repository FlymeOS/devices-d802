.class Lcom/lge/camera/controller/camcorder/RecordingController$2;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecording(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 740
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    invoke-static {v0, v2, v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1102(Lcom/lge/camera/controller/camcorder/RecordingController;J)J

    .line 741
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1200(Lcom/lge/camera/controller/camcorder/RecordingController;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1100(Lcom/lge/camera/controller/camcorder/RecordingController;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecDurationTime(JJ)V

    .line 743
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopRecordingEffect()V

    .line 745
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->waitStopRecordingEffectThreadDone()V

    .line 753
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;Z)V

    .line 754
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/lge/camera/util/AudioUtil;->setVibrationMute(Landroid/content/Context;Z)V

    .line 756
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/camcorder/RecordingController$2$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$2$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController$2;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 763
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    const/4 v1, 0x1

    # setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2202(Lcom/lge/camera/controller/camcorder/RecordingController;Z)Z

    .line 764
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 765
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->setFlashOffByHighTemperature(Z)V

    .line 766
    return-void

    .line 748
    :cond_1
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 749
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getStopRecordingDuringCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto :goto_0
.end method
