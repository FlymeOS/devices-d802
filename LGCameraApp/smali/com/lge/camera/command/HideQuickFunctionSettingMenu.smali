.class public Lcom/lge/camera/command/HideQuickFunctionSettingMenu;
.super Lcom/lge/camera/command/Command;
.source "HideQuickFunctionSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    return-void
.end method

.method private showAllControl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1, v1}, Lcom/lge/camera/ControllerFunction;->showControllerForHideSettingMenu(ZZ)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->execute(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 34
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "immediately"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 37
    .local v1, "immediately":Z
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HideQuickFunctionSettingMenu is EXECUTE : immediately = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->quickFunctionAllMenuSelected(Z)V

    .line 40
    if-eqz v1, :cond_0

    .line 41
    iget-object v2, p0, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeQuickFunctionSettingView()V

    .line 47
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->showAllControl()V

    .line 48
    iget-object v2, p0, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 49
    iget-object v2, p0, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 50
    return-void

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d01ae

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-interface {v3, v2, v5}, Lcom/lge/camera/ControllerFunction;->qflSettingAnimation(Landroid/view/View;Z)V

    .line 45
    iget-object v2, p0, Lcom/lge/camera/command/HideQuickFunctionSettingMenu;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    goto :goto_0
.end method
