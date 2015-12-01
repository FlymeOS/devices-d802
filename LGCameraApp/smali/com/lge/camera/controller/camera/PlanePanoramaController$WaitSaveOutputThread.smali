.class Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;
.super Ljava/lang/Thread;
.source "PlanePanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/PlanePanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitSaveOutputThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaController;Lcom/lge/camera/controller/camera/PlanePanoramaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;
    .param p2, "x1"    # Lcom/lge/camera/controller/camera/PlanePanoramaController$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$800(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->cancel(Z)Z

    .line 157
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    const/4 v1, 0x0

    # setter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$802(Lcom/lge/camera/controller/camera/PlanePanoramaController;Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;)Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    .line 159
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 160
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 164
    const-string v1, "CameraApp"

    const-string v2, "WaitSaveOutputTask START"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 166
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WaitSaveOutputTask await START ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WaitSaveOutputTask await END ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "WaitSaveOutputTask END"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 178
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
