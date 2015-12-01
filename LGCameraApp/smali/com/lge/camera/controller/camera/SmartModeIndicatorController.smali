.class public Lcom/lge/camera/controller/camera/SmartModeIndicatorController;
.super Lcom/lge/camera/controller/Controller;
.source "SmartModeIndicatorController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 27
    return-void
.end method

.method private setIndicatorResources()V
    .locals 3

    .prologue
    .line 155
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d022e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 159
    .local v0, "iconView":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_2

    .line 160
    const v1, 0x7f02039b

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d022f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "iconView":Lcom/lge/camera/components/RotateImageView;
    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 163
    .restart local v0    # "iconView":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 164
    const v1, 0x7f02039a

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateSceneIndicator(I)V
    .locals 4
    .param p1, "sceneMode"    # I

    .prologue
    const v3, 0x7f020398

    .line 78
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d022d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 82
    .local v0, "iconView":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 86
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :pswitch_3
    const v1, 0x7f020396

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 97
    :pswitch_4
    const v1, 0x7f020395

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 100
    :pswitch_5
    const v1, 0x7f020394

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 103
    :pswitch_6
    const v1, 0x7f020393

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 106
    :pswitch_7
    const v1, 0x7f020397

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 109
    :pswitch_8
    const v1, 0x7f020399

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 112
    :pswitch_9
    const v1, 0x7f02039c

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 115
    :pswitch_a
    const v1, 0x7f020392

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method

.method private updateStabilizationByHightISOIndicator(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 138
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d022f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 143
    .local v0, "iconView":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 147
    if-eqz p1, :cond_2

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTriPODIndicator(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d022e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 127
    .local v0, "iconView":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 130
    if-eqz p1, :cond_2

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public initController()V
    .locals 5

    .prologue
    const v4, 0x7f0d022c

    const/4 v3, 0x0

    .line 30
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00cf

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 35
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    .line 37
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->setIndicatorResources()V

    .line 44
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v3, v3}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->setSmartModeIndicator(IZZ)V

    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->startRotation(IZ)V

    .line 49
    :cond_1
    return-void

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSmartModeIndicator(IZZ)V
    .locals 1
    .param p1, "sceneMode"    # I
    .param p2, "standUpdate"    # Z
    .param p3, "stabilizeUpdate"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->updateSceneIndicator(I)V

    .line 73
    invoke-direct {p0, p2}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->updateTriPODIndicator(Z)V

    .line 74
    invoke-direct {p0, p3}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->updateStabilizationByHightISOIndicator(Z)V

    goto :goto_0
.end method

.method public setVisibleOfSmartModeIndicator(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 52
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 56
    .local v0, "visible":I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d022c

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 55
    .end local v0    # "visible":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public startRotation(IZ)V
    .locals 3
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    const v2, 0x7f0d022c

    .line 169
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d022d

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 173
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d022e

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 174
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d022f

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    goto :goto_0
.end method

.method public updateSmartModeIndicator(IZZ)V
    .locals 6
    .param p1, "sceneMode"    # I
    .param p2, "standUpdate"    # Z
    .param p3, "stabilizeUpdate"    # Z

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0d022c

    const/16 v3, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mInit:Z

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2, v1, v3, v5}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->setSmartModeIndicator(IZZ)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/camera/SmartModeIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v5}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method
