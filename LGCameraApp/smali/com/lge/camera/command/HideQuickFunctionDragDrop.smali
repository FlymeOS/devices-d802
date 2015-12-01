.class public Lcom/lge/camera/command/HideQuickFunctionDragDrop;
.super Lcom/lge/camera/command/Command;
.source "HideQuickFunctionDragDrop.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 29
    return-void
.end method

.method private showAllControl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1, v1}, Lcom/lge/camera/ControllerFunction;->showControllerForHideSettingMenu(ZZ)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 33
    const-string v5, "CameraApp"

    const-string v6, "HideQuickFunctionDragDrop executed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getQfIndexList()Ljava/util/ArrayList;

    move-result-object v4

    .line 37
    .local v4, "qfIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 38
    .local v3, "pref":Lcom/lge/camera/setting/ListPreference;
    const/4 v0, 0x0

    .line 39
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 40
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1}, Lcom/lge/camera/ControllerFunction;->getQuickFunctionDragControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v2

    .line 44
    .local v2, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v2, :cond_0

    .line 45
    iget-boolean v0, v2, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 46
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v1, v0}, Lcom/lge/camera/ControllerFunction;->setQFLMenuEnabled(IZ)V

    .line 39
    .end local v2    # "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->saveQFLIndex()V

    .line 55
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 56
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 57
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7, v7}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 58
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8, v7}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 59
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v6, 0x2

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 61
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 62
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 67
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 71
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 72
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 73
    invoke-direct {p0}, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->showAllControl()V

    .line 74
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 77
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->hideQuickFunctionDragController(Z)V

    .line 78
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 79
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8, v7}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 80
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 82
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v6, 0x64

    invoke-interface {v5, v6, v7, v8}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 84
    return-void

    .line 64
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/command/HideQuickFunctionDragDrop;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    goto :goto_2
.end method
