.class Lcom/lge/camera/controller/camera/TimerController$3;
.super Ljava/util/TimerTask;
.source "TimerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/TimerController;->startTimerShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/TimerController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/TimerController;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timer task (count down) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I
    invoke-static {v2}, Lcom/lge/camera/controller/camera/TimerController;->access$200(Lcom/lge/camera/controller/camera/TimerController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$300(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "CameraApp"

    const-string v1, "return : camera is pausing.. "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I
    invoke-static {v2}, Lcom/lge/camera/controller/camera/TimerController;->access$200(Lcom/lge/camera/controller/camera/TimerController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V

    .line 215
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$200(Lcom/lge/camera/controller/camera/TimerController;)I

    move-result v0

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$400(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I
    invoke-static {v1}, Lcom/lge/camera/controller/camera/TimerController;->access$200(Lcom/lge/camera/controller/camera/TimerController;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playTimerSound(I)V

    .line 217
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # operator-- for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$210(Lcom/lge/camera/controller/camera/TimerController;)I

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$500(Lcom/lge/camera/controller/camera/TimerController;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$500(Lcom/lge/camera/controller/camera/TimerController;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 221
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$500(Lcom/lge/camera/controller/camera/TimerController;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 222
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    const/4 v1, 0x0

    # setter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/TimerController;->access$502(Lcom/lge/camera/controller/camera/TimerController;Ljava/util/Timer;)Ljava/util/Timer;

    .line 223
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # invokes: Lcom/lge/camera/controller/camera/TimerController;->stopLEDForTimer()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/TimerController;->access$600(Lcom/lge/camera/controller/camera/TimerController;)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController$3;->this$0:Lcom/lge/camera/controller/camera/TimerController;

    # getter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I
    invoke-static {v1}, Lcom/lge/camera/controller/camera/TimerController;->access$700(Lcom/lge/camera/controller/camera/TimerController;)I

    move-result v1

    # setter for: Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/TimerController;->access$202(Lcom/lge/camera/controller/camera/TimerController;I)I

    goto :goto_0
.end method
