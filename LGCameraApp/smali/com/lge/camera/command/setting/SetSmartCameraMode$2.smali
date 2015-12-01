.class Lcom/lge/camera/command/setting/SetSmartCameraMode$2;
.super Ljava/lang/Object;
.source "SetSmartCameraMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSmartCameraMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

.field final synthetic val$allSetting:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSmartCameraMode;Z)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->val$allSetting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    # invokes: Lcom/lge/camera/command/setting/SetSmartCameraMode;->checkMediator()Z
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$100(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    # getter for: Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$000(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMode(Z)V

    .line 123
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    # getter for: Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$000(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z

    move-result v2

    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$2;->val$allSetting:Z

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    :goto_0
    # invokes: Lcom/lge/camera/command/setting/SetSmartCameraMode;->setSmartMode(ZI)V
    invoke-static {v1, v2, v0}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$200(Lcom/lge/camera/command/setting/SetSmartCameraMode;ZI)V

    .line 126
    :cond_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
