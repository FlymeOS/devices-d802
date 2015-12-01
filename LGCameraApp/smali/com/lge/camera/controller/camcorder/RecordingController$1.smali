.class Lcom/lge/camera/controller/camcorder/RecordingController$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 566
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 572
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 577
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 578
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 579
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->showDefaultQuickButton(Z)V

    .line 582
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 587
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable()V

    .line 589
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 590
    return-void

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    # getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    goto :goto_0
.end method
