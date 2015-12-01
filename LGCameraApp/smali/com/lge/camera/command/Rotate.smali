.class public Lcom/lge/camera/command/Rotate;
.super Lcom/lge/camera/command/Command;
.source "Rotate.java"


# instance fields
.field private animation:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/Rotate;->animation:Z

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/Rotate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/command/Rotate;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/lge/camera/command/Rotate;->animation:Z

    return v0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/Rotate;->execute(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 33
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "animation"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/camera/command/Rotate;->animation:Z

    .line 35
    const-string v2, "degrees"

    iget-object v3, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, "degree":I
    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isControllerInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    const-string v2, "animation"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.Rotate"

    const-wide/16 v4, 0x1f4

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 42
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotate to degree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v2

    if-lt v2, v6, :cond_3

    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_3

    .line 51
    const-string v2, "CameraApp"

    const-string v3, "block rotation because plane panorama is taking."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-boolean v3, p0, Lcom/lge/camera/command/Rotate;->animation:Z

    invoke-interface {v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->rotateAllController(IZ)V

    .line 60
    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isChangeMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/command/Rotate$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/command/Rotate$1;-><init>(Lcom/lge/camera/command/Rotate;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
