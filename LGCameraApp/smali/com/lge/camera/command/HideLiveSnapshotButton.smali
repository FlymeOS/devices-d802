.class public Lcom/lge/camera/command/HideLiveSnapshotButton;
.super Lcom/lge/camera/command/Command;
.source "HideLiveSnapshotButton.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "CameraApp"

    const-string v1, "HideLiveSnapshotButton executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/HideLiveSnapshotButton;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/HideLiveSnapshotButton;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/lge/camera/command/HideLiveSnapshotButton;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hidePreviewPanelLiveSnapshotButton()V

    .line 31
    :cond_0
    return-void
.end method
