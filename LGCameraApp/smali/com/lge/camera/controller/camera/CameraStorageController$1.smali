.class Lcom/lge/camera/controller/camera/CameraStorageController$1;
.super Ljava/lang/Object;
.source "CameraStorageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/CameraStorageController;Z)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->val$showToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$000(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$100(Lcom/lge/camera/controller/camera/CameraStorageController;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$200(Lcom/lge/camera/controller/camera/CameraStorageController;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$300(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 74
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$700(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateRemainIndicator()V

    .line 76
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->val$showToast:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$800(Lcom/lge/camera/controller/camera/CameraStorageController;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I
    invoke-static {v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$900(Lcom/lge/camera/controller/camera/CameraStorageController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->showStorageHint(I)V

    .line 79
    :cond_3
    return-void

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$400(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$500(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController$1;->this$0:Lcom/lge/camera/controller/camera/CameraStorageController;

    # getter for: Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->access$600(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "StorageControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_0
.end method
