.class public Lcom/lge/camera/command/setting/SetFlashMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetFlashMode.java"


# instance fields
.field private mIsSubMenuCliecked:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mIsSubMenuCliecked:Z

    .line 30
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetFlashMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 10
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 38
    const-string v5, "CameraApp"

    const-string v6, "SetFlashMode"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 39
    check-cast v0, Landroid/os/Bundle;

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "subMenuClicked"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mIsSubMenuCliecked:Z

    .line 42
    const-string v5, "fromQuickButton"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 43
    .local v3, "fromQuickButton":Z
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_flash"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "originFlashMode":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFlashEnableForShotMode()Z

    move-result v1

    .line 45
    .local v1, "enable":Z
    if-eqz v1, :cond_2

    move-object v2, v4

    .line 46
    .local v2, "flashMode":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_flash"

    invoke-interface {v5, v6, v1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 48
    const-string v5, "CameraApp"

    const-string v6, "Set flash mode to [%s]"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/lge/camera/util/Common;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "not found"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedVideoFlashAuto()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v6, 0xf

    const-string v7, "key_flash"

    invoke-interface {v5, v6, v7, v4}, Lcom/lge/camera/ControllerFunction;->setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    if-ne v5, v9, :cond_7

    .line 59
    if-eqz v3, :cond_6

    .line 60
    const-string v5, "on"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 61
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "torch"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 80
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v6, Lcom/lge/camera/command/setting/SetFlashMode$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/command/setting/SetFlashMode$1;-><init>(Lcom/lge/camera/command/setting/SetFlashMode;)V

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    iget-object v5, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetSuperZoom"

    invoke-interface {v5, v6, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void

    .line 45
    .end local v2    # "flashMode":Ljava/lang/String;
    :cond_2
    const-string v2, "off"

    goto :goto_0

    .line 62
    .restart local v2    # "flashMode":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedVideoFlashAuto()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "auto"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 64
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/lge/camera/util/Common;->isLowLuminance(Landroid/hardware/Camera$Parameters;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "torch"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_6
    const-string v5, "torch"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 76
    :cond_7
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mIsSubMenuCliecked:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 93
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetFlashMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 95
    :cond_0
    return-void
.end method
