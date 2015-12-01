.class public Lcom/lge/camera/command/setting/SetCameraShutterSound;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraShutterSound.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraShutterSound;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "off"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->changeShutterSound(I)V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "index":I
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->changeShutterSound(I)V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shutter_sound"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->allSettingMenuSelectedChild(Ljava/lang/String;Z)V

    .line 41
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shutter_sound"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;-><init>(Lcom/lge/camera/command/setting/SetCameraShutterSound;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
