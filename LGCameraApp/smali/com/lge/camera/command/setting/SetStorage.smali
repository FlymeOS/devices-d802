.class public Lcom/lge/camera/command/setting/SetStorage;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetStorage.java"


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

.method private updateIndicator()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetStorage;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isIndicatorControllerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetStorage$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetStorage$1;-><init>(Lcom/lge/camera/command/setting/SetStorage;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;)V
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetStorage;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 36
    move-object v7, p2

    check-cast v7, Landroid/os/Bundle;

    .line 37
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v0, "allSetting"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 39
    .local v6, "allSetting":Z
    const-string v0, "CameraApp"

    const-string v1, "set storage"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetStorage;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    const-string v0, "CameraApp"

    const-string v1, "return : getMediator() is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->storageToasthide(Z)V

    .line 47
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isExternalStorageRemoved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    .line 49
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 65
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetStorage;->updateIndicator()V

    .line 67
    if-nez v6, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 69
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->reload(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_storage"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "storage is internal storage"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    .line 62
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-interface {v0, v1, v5, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 59
    :cond_5
    const-string v0, "CameraApp"

    const-string v1, "storage is external storage"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetStorage;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->allSettingMenuSelectedChild(Ljava/lang/String;Z)V

    goto :goto_0
.end method
