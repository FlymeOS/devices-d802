.class public Lcom/lge/camera/command/StopRecording;
.super Lcom/lge/camera/command/Command;
.source "StopRecording.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/StopRecording;->execute(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 9
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 32
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "isBackKeyRecStop"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    .local v1, "isBackKeyRecStop":Z
    const-string v4, "isFromMountedAction"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 34
    .local v2, "isFromMountedAction":Z
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopRecording isBackKeyRecStop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isFromMountedAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-eqz v1, :cond_2

    .line 38
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v8}, Lcom/lge/camera/ControllerFunction;->setBackKeyRecStop(Z)V

    .line 43
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 44
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 45
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->keepScreenOnAwhile()V

    .line 47
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->clearQuickFunctionSubMenu()V

    .line 49
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v2}, Lcom/lge/camera/ControllerFunction;->stopRecording(Z)V

    .line 54
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v8}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 55
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v3, "isOpen":Landroid/os/Bundle;
    const-string v4, "menu_open"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.ShowLiveEffectSubMenuDrawer"

    const-wide/16 v6, 0x3e8

    invoke-interface {v4, v5, v3, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 63
    .end local v3    # "isOpen":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 40
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/command/StopRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setBackKeyRecStop(Z)V

    goto :goto_0
.end method
