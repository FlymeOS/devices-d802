.class Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->onComplete([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 654
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 656
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v1, v1, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 657
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback$1;->this$1:Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PanoramaController$AutoPanoramaCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$4700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 658
    return-void
.end method
