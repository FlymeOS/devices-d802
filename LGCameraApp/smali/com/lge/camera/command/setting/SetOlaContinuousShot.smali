.class public Lcom/lge/camera/command/setting/SetOlaContinuousShot;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetOlaContinuousShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 24
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    const-string v0, "CameraApp"

    const-string v1, "SetOlaContinuousShot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    instance-of v0, v0, Lcom/lge/camera/module/ContinuousShot;

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "dual-recorder"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "ContinuousShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/lge/camera/ControllerFunction;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 39
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOlaContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
