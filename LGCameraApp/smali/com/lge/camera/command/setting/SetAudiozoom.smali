.class public Lcom/lge/camera/command/setting/SetAudiozoom;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetAudiozoom.java"


# instance fields
.field private mIsSubMenuCliecked:Z

.field private newValue:Ljava/lang/String;

.field private showHelp:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mIsSubMenuCliecked:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelp:Z

    .line 31
    return-void
.end method

.method private showHelpPopup()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->onDismissRotateDialog()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "audiozoom"

    const/16 v2, 0x72

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    .line 85
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

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetAudiozoom;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
    .locals 3
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 39
    const-string v1, "CameraApp"

    const-string v2, "SetAudiozoom"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 40
    check-cast v0, Landroid/os/Bundle;

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "subMenuClicked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mIsSubMenuCliecked:Z

    .line 43
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "SetAudiozoom "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAudiozoomvalue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setAudiozoomvalue(Ljava/lang/String;)V

    .line 57
    :cond_3
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelp:Z

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mIsSubMenuCliecked:Z

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 71
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 73
    :cond_2
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelp:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelpPopup()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelp:Z

    goto :goto_0
.end method
