.class public Lcom/lge/camera/command/setting/SetBeautyshot;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetBeautyshot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 26
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetBeautyshot;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 7
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 35
    const-string v3, "CameraApp"

    const-string v4, "SetBeautyshot"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    move-object v0, p2

    .line 38
    check-cast v0, Landroid/os/Bundle;

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "mValue"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 40
    .local v2, "value":I
    if-nez v2, :cond_0

    .line 41
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_beautyshot"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 42
    .local v1, "preference":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 43
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_beautyshot"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 46
    .end local v1    # "preference":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    if-gez v2, :cond_1

    .line 47
    const/4 v2, 0x0

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_front_beauty"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    const-string v5, "shotmode_main_beauty"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 56
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setFaceBeutyShotParameter(I)V

    .line 61
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "value":I
    :cond_2
    :goto_0
    return-void

    .line 58
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "value":I
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/setting/SetBeautyshot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v2}, Lcom/lge/camera/ControllerFunction;->setFaceBeutyShotParameter(I)V

    goto :goto_0
.end method
