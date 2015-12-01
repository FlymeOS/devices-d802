.class public Lcom/lge/camera/command/setting/SetCameraGeoTag;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraGeoTag.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 28
    return-void
.end method

.method private reSetting(Z)V
    .locals 3
    .param p1, "locationOn"    # Z

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOpenLBSSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$3;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setOpenLBSSetting(Z)V

    .line 140
    :cond_0
    :goto_1
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$4;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 124
    :cond_2
    if-nez p1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_tag_location"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_tag_location"

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 11
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 36
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 37
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "allSetting"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, "allSetting":Z
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gps"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 44
    .local v3, "locationOnGps":Z
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 47
    .local v4, "locationOnNetwork":Z
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    move v2, v8

    .line 48
    .local v2, "locationOn":Z
    :goto_0
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v2}, Lcom/lge/camera/ControllerFunction;->setLocationOn(Z)V

    .line 50
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_tag_location"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "onOff":Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getLocationOn()Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "on"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 53
    if-nez v0, :cond_3

    .line 54
    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->reSetting(Z)V

    .line 56
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->beSupportEulaPopup()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 57
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "EULA_POPUP"

    invoke-virtual {v8, v9, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 60
    .local v6, "pref":Landroid/content/SharedPreferences;
    if-eqz v6, :cond_2

    const-string v8, "EULA_DO_NOT_SHOW"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 62
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v8, 0x17

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    .line 99
    .end local v6    # "pref":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .end local v2    # "locationOn":Z
    .end local v5    # "onOff":Ljava/lang/String;
    :cond_1
    move v2, v7

    .line 47
    goto :goto_0

    .line 66
    .restart local v2    # "locationOn":Z
    .restart local v5    # "onOff":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v8, 0xa

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    goto :goto_1

    .line 71
    :cond_3
    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->reSetting(Z)V

    .line 74
    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_tag_location"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    const-string v9, "off"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 77
    iget-object v8, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8, v7}, Lcom/lge/camera/ControllerFunction;->setRecordLocation(Z)V

    .line 82
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->stopReceivingLocationUpdates()V

    .line 84
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/command/setting/SetCameraGeoTag$1;

    invoke-direct {v8, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$1;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;

    invoke-direct {v8, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 79
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setRecordLocation(Z)V

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_tag_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->allSettingMenuSelectedChild(Ljava/lang/String;Z)V

    .line 144
    return-void
.end method
