.class Lcom/lge/camera/controller/camera/FreePanoramaController$3;
.super Ljava/lang/Object;
.source "FreePanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;->doComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

.field final synthetic val$needRestart:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->val$needRestart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 776
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2800(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->val$needRestart:Z

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->restartPanorama()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2900(Lcom/lge/camera/controller/camera/FreePanoramaController;)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$3000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 782
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$3;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$3100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method
