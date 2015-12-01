.class Lcom/lge/camera/controller/camcorder/RecordingController$4;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->doAfterRecordingProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

.field final synthetic val$savedUriForThread:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    iput-object p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->val$savedUriForThread:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    .line 850
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # invokes: Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$2900(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 852
    :try_start_0
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->val$savedUriForThread:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 856
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    const-string v9, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 857
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->setBackKeyRecStop(Z)V

    .line 858
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3500(Lcom/lge/camera/controller/camcorder/RecordingController;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 859
    const-string v6, "CameraApp"

    const-string v7, "do not show quick post view (2sec, 5sec)"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 878
    :catch_0
    move-exception v1

    .line 879
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "get Video Thumbnail error : "

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 862
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    const-string v9, "key_video_auto_review"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "autoReview":Ljava/lang/String;
    const-string v8, "on_delay_2sec"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-wide/16 v4, 0x7d0

    .line 864
    .local v4, "duration":J
    :goto_1
    const-string v8, "on_delay_5sec"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/16 v2, 0x1388

    .line 866
    .local v2, "autoReviewDuration":J
    :goto_2
    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 867
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$3700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 868
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$4100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v6

    new-instance v7, Lcom/lge/camera/controller/camcorder/RecordingController$4$1;

    invoke-direct {v7, p0, v2, v3}, Lcom/lge/camera/controller/camcorder/RecordingController$4$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController$4;J)V

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v2    # "autoReviewDuration":J
    .end local v4    # "duration":J
    :cond_3
    move-wide v4, v6

    .line 863
    goto :goto_1

    .restart local v4    # "duration":J
    :cond_4
    move-wide v2, v4

    .line 864
    goto :goto_2
.end method
