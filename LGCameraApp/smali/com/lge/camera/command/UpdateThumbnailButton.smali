.class public Lcom/lge/camera/command/UpdateThumbnailButton;
.super Lcom/lge/camera/command/Command;
.source "UpdateThumbnailButton.java"


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
    .locals 2

    .prologue
    .line 23
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkUpdateThumbnail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const-string v0, "CameraApp"

    const-string v1, "UpdateThumbnailButton() return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/UpdateThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/UpdateThumbnailButton$1;-><init>(Lcom/lge/camera/command/UpdateThumbnailButton;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
