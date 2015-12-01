.class Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "FreePanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLatchCount:I

.field private mSaveImage:Z

.field final synthetic this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FreePanoramaController;Landroid/content/Context;Z)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "SaveImage"    # Z

    .prologue
    const/4 v3, 0x1

    .line 685
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 682
    iput v3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->mLatchCount:I

    .line 686
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveOutputImageTask init START SaveImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iput-boolean p3, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->mSaveImage:Z

    .line 688
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {p1, v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$702(Lcom/lge/camera/controller/camera/FreePanoramaController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 689
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask init END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method private doFinish()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->isStopModuleThreadFinished()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2400(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 752
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->startMode()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1300(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    .line 694
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask doInBackground START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask mMorphoImageStitcher.end() START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1500(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->end()I

    move-result v1

    const-string v2, "mMorphoImageStitcher.end error ret:"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 698
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask mMorphoImageStitcher.end() END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->mSaveImage:Z

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->saveResultImage()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    const-string v0, "CameraApp"

    const-string v1, "success saving"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->isStopModuleThreadFinished()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->doComplete(Z)V
    invoke-static {v0, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1400(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V

    .line 724
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mSaveOutputImageLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 725
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask doInBackground END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x0

    return-object v0

    .line 707
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "fail saving"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask$1;-><init>(Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 718
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2200(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.ResetFreePanorama"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 681
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 743
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask onCancelled"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->doFinish()V

    .line 745
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 737
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask onPostExecute"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->doFinish()V

    .line 739
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 681
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 731
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask onPreExecute"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 733
    return-void
.end method
