.class public Lcom/lge/camera/command/ResetFreePanorama;
.super Lcom/lge/camera/command/Command;
.source "ResetFreePanorama.java"


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

    const-string v1, "ResetFreePanorama executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/lge/camera/command/ResetFreePanorama;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/ResetFreePanorama$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/ResetFreePanorama$1;-><init>(Lcom/lge/camera/command/ResetFreePanorama;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method
