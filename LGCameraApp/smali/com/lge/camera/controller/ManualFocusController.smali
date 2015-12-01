.class public Lcom/lge/camera/controller/ManualFocusController;
.super Lcom/lge/camera/controller/BarController;
.source "ManualFocusController.java"


# static fields
.field public static final MANUAL_FOCUS_DEFAULT_VALUE:I = 0x0

.field public static final MAX_MANUAL_FOCUS_STEP:I = 0x3c


# instance fields
.field private mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;


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
.method public getCursorMaxStep()I
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const/16 v0, 0x3c

    .line 61
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ManualFocusBar;->getCursorMaxStep()I

    move-result v0

    goto :goto_0
.end method

.method public getManualFocusValue()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ManualFocusBar;->getCurrentManualFocusValue()I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initController()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 36
    const-string v0, "CameraApp"

    const-string v1, "BrightnessController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mInit:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00da

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 39
    const v0, 0x7f0d00fa

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ManualFocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ManualFocusBar;

    iput-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    .line 40
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-super {p0, v0}, Lcom/lge/camera/controller/BarController;->setNormalBarView(Lcom/lge/camera/components/BarView;)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    const/4 v1, 0x0

    const-string v2, "com.lge.camera.command.setting.SetManualFocus"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/ManualFocusBar;->setBarSettingCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    const/16 v6, 0x3c

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual/range {v1 .. v9}, Lcom/lge/camera/components/ManualFocusBar;->setBarValueInitialization(JJIIII)V

    .line 44
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    const/16 v1, 0x8

    const v2, 0x7f0d0100

    const v3, 0x7f0d00fe

    const v4, 0x7f0d0102

    const v5, 0x7f0d0101

    const v6, 0x7f0d00fc

    const v7, 0x7f0d00fb

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/components/ManualFocusBar;->setBarResources(IIIIIII)V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/ManualFocusBar;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-virtual {v0, v9}, Lcom/lge/camera/components/ManualFocusBar;->setListener(Z)V

    .line 53
    iput-boolean v9, p0, Lcom/lge/camera/controller/ManualFocusController;->mInit:Z

    .line 55
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ManualFocusBar;->resetValue(I)V

    .line 76
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ManualFocusBar;->resetCursor(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mInit:Z

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ManualFocusBar;->resetDisplayTimeout()V

    goto :goto_0
.end method

.method public setManualFocusValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    const-string v1, "none"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/components/ManualFocusBar;->setBarSettingValue(Ljava/lang/String;I)V

    .line 84
    :cond_0
    return-void
.end method

.method public showControl(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/lge/camera/controller/ManualFocusController;->mInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/ManualFocusController;->mManualFocusBar:Lcom/lge/camera/components/ManualFocusBar;

    invoke-virtual {v1, p1}, Lcom/lge/camera/components/ManualFocusBar;->showControl(Z)V

    .line 101
    const v1, 0x7f0d00f8

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/ManualFocusController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "indexView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 103
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method
