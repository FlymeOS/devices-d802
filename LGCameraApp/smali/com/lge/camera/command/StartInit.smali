.class public Lcom/lge/camera/command/StartInit;
.super Lcom/lge/camera/command/Command;
.source "StartInit.java"


# instance fields
.field private mCheckCount:I

.field private mFirstInitController:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 24
    iput-boolean v0, p0, Lcom/lge/camera/command/StartInit;->mFirstInitController:Z

    .line 25
    iput v0, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    .line 29
    return-void
.end method

.method private doInit()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 73
    iput v3, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    .line 74
    iput-boolean v3, p0, Lcom/lge/camera/command/StartInit;->mFirstInitController:Z

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->initControllers()V

    .line 77
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFromMountedAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isStopRecordingByMountedAction()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportRecordingModePopUp()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isStopRecordingByMountedAction()Z

    move-result v0

    if-nez v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 83
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 84
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SelectVideoLength"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showBeautyShotBarForNewUx(Z)V

    .line 94
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 104
    :cond_1
    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showManualFocusController(Z)V

    .line 107
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 111
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useTurnOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/StartInit$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/StartInit$1;-><init>(Lcom/lge/camera/command/StartInit;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showQuickMenuEnteringGuide(Z)V

    .line 121
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ClearScreen"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ClearScreen"

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 125
    :cond_4
    return-void

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 87
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 89
    iget-object v0, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 33
    const-string v1, "CameraApp"

    const-string v2, "initialize UI-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-boolean v1, p0, Lcom/lge/camera/command/StartInit;->mFirstInitController:Z

    if-nez v1, :cond_0

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/command/StartInit;->mFirstInitController:Z

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->UnblockAlarmInRecording(Landroid/app/Activity;)V

    .line 41
    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    invoke-direct {p0}, Lcom/lge/camera/command/StartInit;->doInit()V

    .line 69
    :cond_1
    :goto_0
    const-string v1, "CameraApp"

    const-string v2, "initialize UI-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1
    return-void

    .line 47
    :cond_2
    iget v1, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_3

    .line 48
    const-string v1, "CameraApp"

    const-string v2, "Preview fail"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/lge/camera/command/StartInit;->doInit()V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isErrorOccuredAndFinish()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.StartInit"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/lge/camera/command/StartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.StartInit"

    const-wide/16 v4, 0x64

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 62
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize UI-restart checkCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget v1, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/camera/command/StartInit;->mCheckCount:I

    goto :goto_1
.end method
