.class public Lcom/lge/camera/controller/BrightnessControllerExpand;
.super Lcom/lge/camera/controller/BarController;
.source "BrightnessControllerExpand.java"


# instance fields
.field private mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

.field mSettingBrigtnessBarLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/BarController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 35
    return-void
.end method


# virtual methods
.method public initController()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "CameraApp"

    const-string v1, "BrightnessController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mInit:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mInit:Z

    .line 43
    :cond_0
    return-void
.end method

.method public initSettingBrightnessBar()Landroid/widget/RelativeLayout;
    .locals 11

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 50
    .local v10, "vi":Landroid/view/LayoutInflater;
    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrigtnessBarLayout:Landroid/widget/RelativeLayout;

    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrigtnessBarLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d01dd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SettingBrightnessBarExpand;

    iput-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    .line 55
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setSettingBarView(Lcom/lge/camera/components/BarView;)V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    const-string v1, "key_brightness"

    const-string v2, "com.lge.camera.command.setting.SetBrightness"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    sget v6, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setBarValueInitialization(JJIIII)V

    .line 58
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    const/16 v1, 0x9

    const v2, 0x7f0d01d8

    const v3, 0x7f0d01d6

    const v4, 0x7f0d01da

    const v5, 0x7f0d01d9

    const v6, 0x7f0d01d4

    const v7, 0x7f0d01d3

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setBarResources(IIIIIII)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setListener(Z)V

    .line 68
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrigtnessBarLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrigtnessBarLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrigtnessBarLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lge/camera/controller/BrightnessControllerExpand$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/BrightnessControllerExpand$1;-><init>(Lcom/lge/camera/controller/BrightnessControllerExpand;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrigtnessBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_brightness"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 89
    .local v0, "preference":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 90
    const-string v2, "key_brightness"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/BrightnessControllerExpand;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, "value":I
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->resetValue(I)V

    .line 94
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mSettingBrightnessBar:Lcom/lge/camera/components/SettingBrightnessBarExpand;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SettingBrightnessBarExpand;->resetCursor(I)V

    .line 97
    .end local v1    # "value":I
    :cond_0
    return-void
.end method

.method public showSettingBrightnessControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lge/camera/controller/BrightnessControllerExpand;->mInit:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    const v0, 0x7f0d01dc

    invoke-super {p0, v0, p1}, Lcom/lge/camera/controller/BarController;->showSettingBarControl(IZ)V

    goto :goto_0
.end method

.method public updateAllBars(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 100
    return-void
.end method
