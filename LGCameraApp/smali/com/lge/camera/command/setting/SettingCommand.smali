.class public abstract Lcom/lge/camera/command/setting/SettingCommand;
.super Lcom/lge/camera/command/Command;
.source "SettingCommand.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 20
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 24
    iget-object v3, p0, Lcom/lge/camera/command/setting/SettingCommand;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v1

    .line 26
    .local v1, "lgCamera":Lcom/lge/hardware/LGCamera;
    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera;->getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v2

    .line 28
    .local v2, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 30
    :try_start_0
    invoke-virtual {v2}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    .line 38
    .end local v2    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :goto_1
    return-void

    .line 31
    .restart local v2    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setParameters failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "Camera ref is null. Setting command return."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 0
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 86
    return-void
.end method

.method protected execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 0
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 89
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/lge/hardware/LGCamera$LGParameters;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/lge/hardware/LGCamera$LGParameters;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 47
    :goto_0
    return-void

    .line 45
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "arg is not Parameter !!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/lge/hardware/LGCamera$LGParameters;

    if-eqz v3, :cond_0

    .line 52
    check-cast p1, Lcom/lge/hardware/LGCamera$LGParameters;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 54
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/setting/SettingCommand;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v1

    .line 56
    .local v1, "lgCamera":Lcom/lge/hardware/LGCamera;
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera;->getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v2

    .line 58
    .local v2, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-virtual {p0, v2, p2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 61
    :try_start_0
    invoke-virtual {v2}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setParameters failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_1
    const-string v3, "CameraApp"

    const-string v4, "Camera ref is null. Setting command return."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeNoneParameter()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    .line 77
    return-void
.end method

.method public executeNoneParameter(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    .line 83
    return-void
.end method

.method protected onExecuteAlone()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
