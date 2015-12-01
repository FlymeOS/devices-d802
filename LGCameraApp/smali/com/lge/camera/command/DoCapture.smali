.class public Lcom/lge/camera/command/DoCapture;
.super Lcom/lge/camera/command/Command;
.source "DoCapture.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 24
    return-void
.end method

.method private doTakePictureInDoCapture()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "0"

    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_timer"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getTimerCaptureDelay()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isGestureShotActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    :cond_1
    const-string v0, "0"

    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_timer"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isGestureShotActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopGestureEngine()V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startTimerShot()V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startGestureEngine()V

    .line 86
    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.TakePicture"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setTimerShotCountdown(Z)V

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    const-string v1, "CameraApp"

    const-string v2, "DoCapture-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v0

    .line 31
    .local v0, "focusState":I
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "CameraApp"

    const-string v2, "doCapture return : NOT STORAGE_AVAILABLE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 34
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->startGestureEngine()V

    .line 71
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    .line 41
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_8

    .line 42
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DoCapture focusState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const-string v1, "manual"

    iget-object v2, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/command/DoCapture;->doTakePictureInDoCapture()V

    .line 70
    :cond_2
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "DoCapture-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    if-eq v0, v4, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 52
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setFocusState(I)V

    goto :goto_1

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 62
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/command/DoCapture;->doTakePictureInDoCapture()V

    goto :goto_1

    .line 64
    :cond_7
    if-nez v0, :cond_2

    .line 65
    iget-object v1, p0, Lcom/lge/camera/command/DoCapture;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    goto :goto_1

    .line 68
    :cond_8
    invoke-direct {p0}, Lcom/lge/camera/command/DoCapture;->doTakePictureInDoCapture()V

    goto :goto_1
.end method
