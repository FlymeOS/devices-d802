.class public Lcom/lge/camera/command/StartPreview;
.super Lcom/lge/camera/command/Command;
.source "StartPreview.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 19
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "CameraApp"

    const-string v1, "Wait for lockscreen uncovered..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/StartPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.StartPreview"

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 41
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Lockscreen uncovered. Start preview."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/lge/camera/command/StartPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setLockScreenPreventPreview(Z)V

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/StartPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/StartPreview;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/StartPreview$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/StartPreview$1;-><init>(Lcom/lge/camera/command/StartPreview;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
