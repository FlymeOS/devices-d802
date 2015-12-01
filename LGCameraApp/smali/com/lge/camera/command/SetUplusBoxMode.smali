.class public Lcom/lge/camera/command/SetUplusBoxMode;
.super Lcom/lge/camera/command/Command;
.source "SetUplusBoxMode.java"


# instance fields
.field private mUPlusBoxValueOn:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mUPlusBoxValueOn:Z

    .line 28
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/SetUplusBoxMode;->execute(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 36
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "subMenuClicked"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    .local v1, "subMenuClicked":Z
    invoke-virtual {p0}, Lcom/lge/camera/command/SetUplusBoxMode;->checkMediator()Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_uplus_box"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "value":Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## SetUplusBoxMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isUPlusBox()Z

    move-result v3

    if-nez v3, :cond_2

    .line 46
    iput-boolean v6, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mUPlusBoxValueOn:Z

    .line 47
    const-string v3, "CameraApp"

    const-string v4, "SetUplusBoxMode : model is not supported."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/command/SetUplusBoxMode;->checkMediator()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    iget-object v3, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 53
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 57
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mUPlusBoxValueOn:Z

    .line 68
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_uplus_box"

    invoke-interface {v3, v4, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/command/SetUplusBoxMode$1;

    invoke-direct {v4, p0}, Lcom/lge/camera/command/SetUplusBoxMode$1;-><init>(Lcom/lge/camera/command/SetUplusBoxMode;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    :cond_4
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/command/SetUplusBoxMode;->onExecuteAlone()V

    goto :goto_0

    .line 63
    :cond_5
    iput-boolean v6, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mUPlusBoxValueOn:Z

    goto :goto_1
.end method

.method protected onExecuteAlone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    const-string v1, "CameraApp"

    const-string v2, "SetUplusBoxMode - Show Toast Message : SetUplusBoxMode is = "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isUPlusBox()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mUPlusBoxValueOn:Z

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "uplus_box"

    const/16 v3, 0x71

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 98
    .local v0, "retVal":Z
    if-nez v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0134

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(Ljava/lang/String;)V

    .line 102
    .end local v0    # "retVal":Z
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 103
    iget-object v1, p0, Lcom/lge/camera/command/SetUplusBoxMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_0
.end method
