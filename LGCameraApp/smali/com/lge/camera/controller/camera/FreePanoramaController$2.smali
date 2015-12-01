.class Lcom/lge/camera/controller/camera/FreePanoramaController$2;
.super Ljava/lang/Object;
.source "FreePanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;->createStopModuleThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 445
    const-string v1, "CameraApp"

    const-string v2, "mStopModuleThread START"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->isSaveOutputImageTaskFinished()Z
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$400(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCommandManager()Lcom/lge/camera/command/CommandManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    const-string v2, "com.lge.camera.command.ShowProgressDialog"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 452
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->stopModules()V
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$800(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    .line 461
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCommandManager()Lcom/lge/camera/command/CommandManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    const-string v2, "com.lge.camera.command.ShowProgressDialog"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    const-string v2, "com.lge.camera.command.DeleteProgressDialog"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 466
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->startMode()V
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1300(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    .line 467
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    const/4 v2, 0x0

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->doComplete(Z)V
    invoke-static {v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1400(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V

    .line 469
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "mStopModuleThread END"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
