.class public Lcom/lge/camera/command/HideModeMenu;
.super Lcom/lge/camera/command/Command;
.source "HideModeMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/HideModeMenu;->execute(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 33
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "immediately"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 35
    .local v1, "immediately":Z
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HideModeMenu is EXECUTE : immediately = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-eqz v1, :cond_0

    .line 38
    iget-object v2, p0, Lcom/lge/camera/command/HideModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->hideShotModeMenu(Z)V

    .line 39
    iget-object v2, p0, Lcom/lge/camera/command/HideModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/HideModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v5}, Lcom/lge/camera/ControllerFunction;->showControllerForHideSettingMenu(ZZ)V

    .line 45
    iget-object v2, p0, Lcom/lge/camera/command/HideModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x64

    invoke-interface {v2, v3, v5, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 46
    iget-object v2, p0, Lcom/lge/camera/command/HideModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 47
    return-void

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/HideModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->hideShotModeMenu(Z)V

    .line 42
    iget-object v2, p0, Lcom/lge/camera/command/HideModeMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0
.end method
