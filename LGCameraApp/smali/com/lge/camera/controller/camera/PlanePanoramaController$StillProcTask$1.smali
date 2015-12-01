.class Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;
.super Ljava/lang/Object;
.source "PlanePanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->sendImageToEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$200(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    iget-object v1, v1, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    const v2, 0x7f0a03aa

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toastLong(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    const/4 v1, 0x0

    # invokes: Lcom/lge/camera/controller/camera/PlanePanoramaController;->stopPanorama(Z)V
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$500(Lcom/lge/camera/controller/camera/PlanePanoramaController;Z)V

    .line 127
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask$1;->this$1:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 129
    :cond_0
    return-void
.end method
