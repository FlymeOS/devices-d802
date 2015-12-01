.class public Lcom/lge/camera/controller/PreviewPanel3DController;
.super Lcom/lge/camera/controller/PreviewPanelController;
.source "PreviewPanel3DController.java"


# instance fields
.field private m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

.field private m3DSwitchButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    .line 114
    new-instance v0, Lcom/lge/camera/controller/PreviewPanel3DController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanel3DController$1;-><init>(Lcom/lge/camera/controller/PreviewPanel3DController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButtonListener:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method


# virtual methods
.method public enableCommand(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 64
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mInit:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0195

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 71
    :cond_1
    return-void
.end method

.method public initController()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00cc

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0195

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    .line 35
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanel3DController;->enableCommand(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanel3DController;->set3DSwitchImage()V

    .line 40
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/PreviewPanel3DController;->startRotation(IZ)V

    .line 42
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 43
    return-void
.end method

.method public initReleaseArea()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initReleaseArea()V

    .line 47
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 107
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanel3DController;->set3DSwitchVisible(Z)V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewPanelController;->onResume()V

    .line 112
    return-void
.end method

.method public set3DSwitchImage()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f020495

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f020496

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public set3DSwitchVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCommand()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanel3DController;->setSwitcherVisible(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanel3DController;->setMainButtonEnable()V

    .line 53
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanel3DController;->showSubButtonInit(Z)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->m3DSwitchButton:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 59
    :cond_1
    return-void
.end method

.method public startRotation(IZ)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 80
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0195

    invoke-interface {v0, v1, p1, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto :goto_0
.end method
