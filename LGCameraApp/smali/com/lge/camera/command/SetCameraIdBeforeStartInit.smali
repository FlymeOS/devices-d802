.class public Lcom/lge/camera/command/SetCameraIdBeforeStartInit;
.super Lcom/lge/camera/command/Command;
.source "SetCameraIdBeforeStartInit.java"


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

    const-string v1, "SetCameraIdBeforeStartInit-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/lge/camera/command/SetCameraIdBeforeStartInit;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setCameraIdBeforeStartInit()V

    .line 25
    return-void
.end method
