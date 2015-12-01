.class public Lcom/lge/camera/controller/BeautyshotController;
.super Lcom/lge/camera/controller/BarController;
.source "BeautyshotController.java"


# static fields
.field public static final MAX_BEAUTYSHOT_STEP:I = 0x8


# instance fields
.field private mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

.field private mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/BarController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 32
    return-void
.end method


# virtual methods
.method public clearSettingBeautyshotBar()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/SettingBeautyshotBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BeautyshotController;->hideSettingBeautyShotControl(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method public getCursorMaxStep()I
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const/16 v0, 0x8

    .line 78
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->getCursorMaxStep()I

    move-result v0

    goto :goto_0
.end method

.method public hideSettingBeautyShotControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mInit:Z

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    const v0, 0x7f0d01d1

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->hideSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public initController()V
    .locals 10

    .prologue
    .line 36
    const-string v0, "CameraApp"

    const-string v1, "BeautyshotController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mInit:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00d8

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 39
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BeautyshotController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/BeautyshotBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    .line 40
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setNormalBarView(Lcom/lge/camera/components/BarView;)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    const-string v1, "key_beautyshot"

    const-string v2, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/BeautyshotBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/lge/camera/components/BeautyshotBar;->setBarValueInitialization(JJIIII)V

    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    const/4 v1, 0x2

    const v2, 0x7f0d001f

    const v3, 0x7f0d001d

    const v4, 0x7f0d0021

    const v5, 0x7f0d0020

    const v6, 0x7f0d001b

    const v7, 0x7f0d001a

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/BeautyshotBar;->setBarResources(IIIIIII)V

    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/BeautyshotBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BeautyshotBar;->setListener(Z)V

    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00d9

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 54
    const v0, 0x7f0d01d2

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BeautyshotController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SettingBeautyshotBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    .line 55
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setSettingBarView(Lcom/lge/camera/components/BarView;)V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    const-string v1, "key_beautyshot"

    const-string v2, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/SettingBeautyshotBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/lge/camera/components/SettingBeautyshotBar;->setBarValueInitialization(JJIIII)V

    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    const/4 v1, 0x6

    const v2, 0x7f0d01d8

    const v3, 0x7f0d01d6

    const v4, 0x7f0d01da

    const v5, 0x7f0d01d9

    const v6, 0x7f0d01d4

    const v7, 0x7f0d01d3

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/SettingBeautyshotBar;->setBarResources(IIIIIII)V

    .line 67
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SettingBeautyshotBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 68
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SettingBeautyshotBar;->setListener(Z)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mInit:Z

    .line 72
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mInit:Z

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/BeautyshotController;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x4

    .line 114
    .local v0, "value":I
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/BeautyshotBar;->resetValue(I)V

    .line 116
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/BeautyshotBar;->resetCursor(I)V

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/SettingBeautyshotBar;->resetValue(I)V

    .line 119
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mSettingBeautyshotBar:Lcom/lge/camera/components/SettingBeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/SettingBeautyshotBar;->resetCursor(I)V

    .line 120
    const-string v1, "key_beautyshot"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/BeautyshotController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    const-string v1, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/BeautyshotController;->doCommandNoneParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showSettingBeautyShotControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mInit:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    const v0, 0x7f0d01d1

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->showSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public updateAllBars(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lge/camera/controller/BeautyshotController;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Lcom/lge/camera/controller/BarController;->updateAllBars(I)V

    .line 105
    :cond_0
    return-void
.end method
