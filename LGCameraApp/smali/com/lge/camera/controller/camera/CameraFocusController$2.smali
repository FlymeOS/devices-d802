.class Lcom/lge/camera/controller/camera/CameraFocusController$2;
.super Ljava/lang/Object;
.source "CameraFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/CameraFocusController;->callbackOnAutoFocusMove(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/CameraFocusController;Z)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->val$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    # invokes: Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$700(Lcom/lge/camera/controller/camera/CameraFocusController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    # getter for: Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$800(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 885
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    # getter for: Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$900(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkPreviewPanelController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    # getter for: Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1000(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->snapshotOnContinuousFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->val$start:Z

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    # getter for: Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1100(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    const-string v0, "CameraApp"

    const-string v1, "snapshotOnContinuousFocus mDoSnapRunnable!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    # getter for: Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1300(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController$2;->this$0:Lcom/lge/camera/controller/camera/CameraFocusController;

    # getter for: Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->access$1200(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSnapshotRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 893
    :cond_0
    return-void
.end method
