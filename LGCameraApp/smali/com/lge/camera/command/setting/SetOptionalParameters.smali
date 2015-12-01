.class public Lcom/lge/camera/command/setting/SetOptionalParameters;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetOptionalParameters.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    return-void
.end method

.method private setAutoReviewSetting(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "autoReviewSettingValue":Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    :cond_0
    return-void
.end method

.method private setBrightnessSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 6
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    .line 158
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_brightness"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 159
    .local v0, "preference":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 160
    const-string v3, "6"

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_brightness"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "value":I
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 164
    .local v2, "valueForParameter":I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "brightness value to parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 168
    .end local v1    # "value":I
    .end local v2    # "valueForParameter":I
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_brightness"

    const/4 v5, 0x0

    invoke-interface {v3, v4, p2, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 169
    return-void
.end method

.method private setCameraModeSetting()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_swap"

    const-string v2, "back"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_swap"

    const-string v2, "front"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setColorEffectSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    .line 229
    const-string v1, "not found"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v1, "none"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    const-string v0, "none"

    .line 236
    .local v0, "settingValue":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_COLOREFFECT ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 239
    .end local v0    # "settingValue":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_coloreffect"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private setFlashSetting(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "menuEnable"    # Z
    .param p4, "changSettingValue"    # Z

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p3, v2}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 185
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetOptionalParameters$1;

    invoke-direct {v1, p0, p2}, Lcom/lge/camera/command/setting/SetOptionalParameters$1;-><init>(Lcom/lge/camera/command/setting/SetOptionalParameters;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method private setFocusSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 6
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "focusValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 246
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getIAFlashStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_FOCUS - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 257
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3, p2, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 258
    return-void
.end method

.method private setHDRSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "hdr-mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private setISOsetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    .line 211
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_iso"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v0, "auto"

    .line 213
    .local v0, "settingValue":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configValue ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "iso"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v0    # "settingValue":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_iso"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 217
    return-void
.end method

.method private setSceneModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    .line 194
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string v0, "auto"

    .line 196
    .local v0, "settingValue":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_SCENE_MODE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 200
    .end local v0    # "settingValue":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 202
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/setting/SetOptionalParameters$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetOptionalParameters$2;-><init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method private setShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 5
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    .line 128
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 129
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/BubblePopupController;->initializeNotiComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_time_machine"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_time_machine"

    invoke-interface {v1, v2, p2, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 150
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2, p2, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 151
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_refocus"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->deleteRefocusShotImages()Z

    .line 139
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setRefocusShotHasPictures(Z)V

    .line 140
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/BubblePopupController;->initializeNotiComplete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setStorageSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isExternalStorageRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    .line 263
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetOptionalParameters$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetOptionalParameters$3;-><init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 280
    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_storage"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    .line 271
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-interface {v0, v1, v4, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    goto :goto_1
.end method

.method private setTimerSetting()V
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_timer"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "timerSettingValue":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setTimerSetting(I)V

    .line 299
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/setting/SetOptionalParameters$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetOptionalParameters$4;-><init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    :cond_0
    return-void
.end method

.method private setVoiceShutterSetting()V
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "mVoiceShutterValue":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 290
    .end local v0    # "mVoiceShutterValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setWhiteBalanceSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    .line 220
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_whitebalance"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const-string v0, "auto"

    .line 222
    .local v0, "settingValue":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_WHITEBALANCE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 225
    .end local v0    # "settingValue":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_whitebalance"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 226
    return-void
.end method

.method private setZoomSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 2
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "menuEnable"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetZoom"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    const-string v4, "CameraApp"

    const-string v5, "SetOptionalParameters - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 40
    check-cast v0, Landroid/os/Bundle;

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "useSmartMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 42
    .local v2, "useSmartMode":Z
    const-string v4, "useHDR"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 44
    .local v1, "useHDR":Z
    if-eqz v2, :cond_0

    .line 46
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setShotModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 50
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setHDRSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 53
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 55
    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setBrightnessSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 58
    :cond_3
    if-eqz v2, :cond_4

    .line 60
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setZoomSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 63
    :cond_4
    if-eqz v1, :cond_5

    .line 65
    const-string v3, "off"

    .line 66
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v3, v6, v7}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setFlashSetting(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;ZZ)V

    .line 69
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 71
    :cond_6
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setSceneModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 74
    :cond_7
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 76
    :cond_8
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setISOsetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 79
    :cond_9
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 81
    :cond_a
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setWhiteBalanceSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 84
    :cond_b
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 86
    :cond_c
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setColorEffectSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 89
    :cond_d
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 91
    :cond_e
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setFocusSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 94
    :cond_f
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 95
    :cond_10
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setVoiceShutterSetting()V

    .line 98
    :cond_11
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 99
    :cond_12
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setStorageSetting()V

    .line 102
    :cond_13
    if-eqz v2, :cond_14

    .line 103
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setTimerSetting()V

    .line 106
    :cond_14
    if-eqz v2, :cond_15

    .line 107
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setAutoReviewSetting(Lcom/lge/hardware/LGCamera$LGParameters;)V

    .line 110
    :cond_15
    if-eqz v2, :cond_16

    .line 111
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setCameraModeSetting()V

    .line 113
    :cond_16
    return-void
.end method
