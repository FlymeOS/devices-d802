.class Lcom/lge/camera/command/setting/SetSmartCameraMode$1;
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

.field final synthetic val$isShotMode:Z

.field final synthetic val$lgParams:Lcom/lge/hardware/LGCamera$LGParameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSmartCameraMode;Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iput-object p2, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->val$lgParams:Lcom/lge/hardware/LGCamera$LGParameters;

    iput-boolean p3, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->val$isShotMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 96
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "useSmartMode":Landroid/os/Bundle;
    const-string v1, "useSmartMode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    # getter for: Lcom/lge/camera/command/setting/SetSmartCameraMode;->mSmartModeValueOn:Z
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSmartCameraMode;->access$000(Lcom/lge/camera/command/setting/SetSmartCameraMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetOptionalParameters"

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->val$lgParams:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-interface {v1, v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    :goto_0
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->val$isShotMode:Z

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->val$lgParams:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-interface {v1, v2, v4}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 112
    .end local v0    # "useSmartMode":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 104
    .restart local v0    # "useSmartMode":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetSmartCameraMode;

    iget-object v1, v1, Lcom/lge/camera/command/setting/SetSmartCameraMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.RestoreOptionalParameters"

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetSmartCameraMode$1;->val$lgParams:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-interface {v1, v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
