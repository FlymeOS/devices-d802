.class public Lcom/lge/camera/command/setting/SetCameraColorEffect;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraColorEffect.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    return-void
.end method

.method private checkFocusMode(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_2

    .line 72
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 75
    .local v0, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 79
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "manual-focus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 81
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isIndicatorControllerInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetCameraColorEffect$1;-><init>(Lcom/lge/camera/command/setting/SetCameraColorEffect;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a018e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 92
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 95
    .end local v0    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 6
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 33
    const-string v2, "CameraApp"

    const-string v3, "SetCameraColorEffect"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "not found"

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_coloreffect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "CameraApp"

    const-string v3, "Color effect doesn\'t supported. Return."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "olaValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "newValue":Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_whitebalance"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_whitebalance"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0196

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 50
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a018b

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSceneMode(Lcom/lge/hardware/LGCamera$LGParameters;ZLjava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraColorEffect;->checkFocusMode(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 59
    :cond_2
    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 61
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color effect set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetCameraColorEffect;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setMenuEnableForSceneMode(I)V

    goto/16 :goto_0
.end method
