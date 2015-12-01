.class public Lcom/lge/camera/command/setting/RestoreOptionalParameters;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "RestoreOptionalParameters.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 32
    return-void
.end method

.method private checkPreferencePresents(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v3, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    .line 213
    .local v1, "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v1, :cond_0

    .line 214
    const-string v3, "CameraApp"

    const-string v4, "prefGroup null error"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return v2

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 218
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 219
    const-string v3, "CameraApp"

    const-string v4, "listPref null error"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->checkPreferencePresents(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const-string v0, "not found"

    .line 238
    :goto_0
    return-object v0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string listPref value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreBrightness(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 6
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 105
    const-string v3, "key_brightness"

    invoke-direct {p0, v3}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "stringValue":Ljava/lang/String;
    const-string v3, "not found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const-string v3, "CameraApp"

    const-string v4, "Need to check string whether it is convertable or not."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "value":I
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 114
    .local v2, "valueForParameter":I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_BRIGHTNESS value to parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 117
    const-string v3, "key_brightness"

    invoke-direct {p0, v3, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreColorEffect(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 178
    const-string v1, "key_camera_coloreffect"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_COLOREFFECT value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 187
    const-string v1, "key_camera_coloreffect"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreFlash(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 6
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 121
    const-string v2, "key_flash"

    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "stringValue":Ljava/lang/String;
    const-string v2, "not found"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "CameraApp"

    const-string v3, "Need to check string whether it is convertable or not."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_FLASH value to parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0041

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 132
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 133
    iget-object v2, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v5, v3}, Lcom/lge/camera/ControllerFunction;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 134
    const-string v2, "key_flash"

    invoke-direct {p0, v2, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreFocus(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 191
    const-string v1, "key_focus"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateFocusIndicator()V

    .line 198
    const-string v1, "key_focus"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreHDR(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private restoreISO(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 152
    const-string v1, "key_iso"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_ISO value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "iso"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "key_iso"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreSceneMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 138
    const-string v1, "key_scene_mode"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_SCENE_MODE value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->updateSceneIndicator(ZLjava/lang/String;)V

    .line 148
    const-string v1, "key_scene_mode"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreShotMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "key_camera_shot_mode"

    invoke-direct {p0, v0, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 96
    const-string v0, "key_time_machine"

    invoke-direct {p0, v0, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 98
    :cond_0
    return-void
.end method

.method private restoreTimerSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 202
    const-string v1, "key_camera_timer"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreWhiteBalance(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 165
    const-string v1, "key_camera_whitebalance"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_WHITEBALANCE value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 174
    const-string v1, "key_camera_whitebalance"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setMenuControlEnable(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "menuEnable"    # Z

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->checkPreferencePresents(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 6
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "useSmartMode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 42
    .local v2, "useSmartMode":Z
    const-string v3, "useHDR"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 44
    .local v1, "useHDR":Z
    if-eqz v2, :cond_0

    .line 45
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreShotMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 50
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreHDR(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 53
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 55
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreBrightness(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 58
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 60
    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreFlash(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 63
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 65
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreSceneMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 68
    :cond_7
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 70
    :cond_8
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreISO(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 73
    :cond_9
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 75
    :cond_a
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreWhiteBalance(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 78
    :cond_b
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 80
    :cond_c
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreColorEffect(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 83
    :cond_d
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 85
    :cond_e
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreFocus(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 88
    :cond_f
    if-eqz v2, :cond_10

    .line 89
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreTimerSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 91
    :cond_10
    return-void
.end method
