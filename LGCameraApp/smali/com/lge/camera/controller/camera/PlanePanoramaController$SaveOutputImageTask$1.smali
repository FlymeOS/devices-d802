.class Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;
.super Ljava/lang/Object;
.source "PlanePanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2800(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/PlanePanoramaController;->resetToPreviewState()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 283
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3200(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method
