.class public Lcom/lge/camera/command/HidePIPResizeHandler;
.super Lcom/lge/camera/command/Command;
.source "HidePIPResizeHandler.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 18
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "CameraApp"

    const-string v1, "HideDualRecSubWindowHandler executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/lge/camera/command/HidePIPResizeHandler;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/lge/camera/command/HidePIPResizeHandler;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/lge/camera/command/HidePIPResizeHandler;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideSubWindowResizeHandler()V

    .line 27
    :cond_0
    return-void
.end method
