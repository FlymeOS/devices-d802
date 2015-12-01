.class public Lcom/lge/camera/command/setting/SetDualCameraShot;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetDualCameraShot.java"


# instance fields
.field private mLGParameters:Lcom/lge/hardware/LGCamera$LGParameters;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mLGParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    .line 25
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetDualCameraShot;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 33
    const-string v0, "CameraApp"

    const-string v1, "SetDualCameraShot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "dual-recorder"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 35
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mLGParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    .line 37
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "DualCameraShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_dual_camera"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mLGParameters:Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/lge/camera/ControllerFunction;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/setting/SetDualCameraShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetDualCameraShot$1;-><init>(Lcom/lge/camera/command/setting/SetDualCameraShot;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method
