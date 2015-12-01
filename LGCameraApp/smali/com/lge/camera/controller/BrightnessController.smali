.class public Lcom/lge/camera/controller/BrightnessController;
.super Lcom/lge/camera/controller/BarController;
.source "BrightnessController.java"


# instance fields
.field private mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

.field private mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/BarController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 33
    return-void
.end method


# virtual methods
.method public clearSettingBrightnessBar()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/SettingBrightnessBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BrightnessController;->hideSettingBrightnessControl(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public getCursorMaxStep()I
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lge/camera/controller/BrightnessController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    if-nez v0, :cond_1

    .line 77
    :cond_0
    sget v0, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    .line 79
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->getCursorMaxStep()I

    move-result v0

    goto :goto_0
.end method

.method public hideSettingBrightnessControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lge/camera/controller/BrightnessController;->mInit:Z

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    const v0, 0x7f0d01dc

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->hideSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public initController()V
    .locals 10

    .prologue
    .line 37
    const-string v0, "CameraApp"

    const-string v1, "BrightnessController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/lge/camera/controller/BrightnessController;->mInit:Z

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00d6

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 40
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BrightnessController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/BrightnessBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setNormalBarView(Lcom/lge/camera/components/BarView;)V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    const-string v1, "key_brightness"

    const-string v2, "com.lge.camera.command.setting.SetBrightness"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/BrightnessBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    sget v6, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/lge/camera/components/BrightnessBar;->setBarValueInitialization(JJIIII)V

    .line 44
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    const/4 v1, 0x1

    const v2, 0x7f0d002e

    const v3, 0x7f0d002c

    const v4, 0x7f0d0030

    const v5, 0x7f0d002f

    const v6, 0x7f0d002a

    const v7, 0x7f0d0029

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/BrightnessBar;->setBarResources(IIIIIII)V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/BrightnessBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BrightnessBar;->setListener(Z)V

    .line 54
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00d7

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 55
    const v0, 0x7f0d01dd

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BrightnessController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SettingBrightnessBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setSettingBarView(Lcom/lge/camera/components/BarView;)V

    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    const-string v1, "key_brightness"

    const-string v2, "com.lge.camera.command.setting.SetBrightness"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/SettingBrightnessBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    sget v6, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/lge/camera/components/SettingBrightnessBar;->setBarValueInitialization(JJIIII)V

    .line 61
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    const/4 v1, 0x5

    const v2, 0x7f0d01d8

    const v3, 0x7f0d01d6

    const v4, 0x7f0d01da

    const v5, 0x7f0d01d9

    const v6, 0x7f0d01d4

    const v7, 0x7f0d01d3

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/SettingBrightnessBar;->setBarResources(IIIIIII)V

    .line 68
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SettingBrightnessBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 69
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SettingBrightnessBar;->setListener(Z)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/BrightnessController;->mInit:Z

    .line 73
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 116
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_brightness"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 117
    .local v0, "preference":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 118
    const-string v2, "key_brightness"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/BrightnessController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 120
    .local v1, "value":I
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/BrightnessBar;->resetValue(I)V

    .line 122
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/BrightnessBar;->resetCursor(I)V

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SettingBrightnessBar;->resetValue(I)V

    .line 126
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SettingBrightnessBar;->resetCursor(I)V

    .line 129
    .end local v1    # "value":I
    :cond_1
    return-void
.end method

.method public showControl(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 97
    iget-boolean v1, p0, Lcom/lge/camera/controller/BrightnessController;->mInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v1, p1}, Lcom/lge/camera/components/BrightnessBar;->showControl(Z)V

    .line 102
    const v1, 0x7f0d0026

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/BrightnessController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "indexView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 104
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public showSettingBrightnessControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lge/camera/controller/BrightnessController;->mInit:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    const v0, 0x7f0d01dc

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->showSettingBarControl(IZ)V

    goto :goto_0
.end method
