.class public Lcom/lge/camera/command/setting/SetVolumeKey;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVolumeKey.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVolumeKey;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVolumeKey;->checkMediator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVolumeKey;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_volume"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "value":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "## SetVolumeKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetVolumeKey;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v2, 0xf

    const-string v3, "key_volume"

    invoke-interface {v1, v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "CameraApp"

    const-string v1, "SetVolumeKey"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVolumeKey;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 43
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVolumeKey;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 44
    return-void
.end method
