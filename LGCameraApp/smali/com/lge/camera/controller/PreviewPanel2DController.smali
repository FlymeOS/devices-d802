.class public Lcom/lge/camera/controller/PreviewPanel2DController;
.super Lcom/lge/camera/controller/PreviewPanelController;
.source "PreviewPanel2DController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 19
    return-void
.end method


# virtual methods
.method public initController()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel2DController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00cb

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 23
    invoke-super {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 24
    return-void
.end method
