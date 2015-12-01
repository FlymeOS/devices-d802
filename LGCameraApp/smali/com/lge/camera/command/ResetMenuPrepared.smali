.class public Lcom/lge/camera/command/ResetMenuPrepared;
.super Lcom/lge/camera/command/Command;
.source "ResetMenuPrepared.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 20
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenuPrepared;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenuPrepared;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenuPrepared;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->effectRecorderStopPreview()V

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenuPrepared;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->effectCameraStopPreview()V

    goto :goto_0
.end method
