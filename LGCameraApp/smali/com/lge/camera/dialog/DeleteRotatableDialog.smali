.class public Lcom/lge/camera/dialog/DeleteRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "DeleteRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 27
    return-void
.end method


# virtual methods
.method public create()V
    .locals 8

    .prologue
    .line 31
    iget-object v6, p0, Lcom/lge/camera/dialog/DeleteRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f030036

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v5

    .line 32
    .local v5, "v":Landroid/view/View;
    const v6, 0x7f0d00bb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 33
    .local v4, "titleText":Landroid/widget/TextView;
    const v6, 0x7f0d00c1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 34
    .local v2, "messageText":Landroid/widget/TextView;
    const v6, 0x7f0d00c4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 35
    .local v1, "btnOk":Landroid/widget/Button;
    const v6, 0x7f0d01c4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    .local v0, "btnCancel":Landroid/widget/Button;
    const v6, 0x7f0a0181

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 38
    iget-object v6, p0, Lcom/lge/camera/dialog/DeleteRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v6

    if-nez v6, :cond_0

    const v3, 0x7f0a02e1

    .line 42
    .local v3, "stringId":I
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const v6, 0x7f0a003b

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 44
    const v6, 0x7f0a003c

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 46
    invoke-super {p0, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 48
    new-instance v6, Lcom/lge/camera/dialog/DeleteRotatableDialog$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/DeleteRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/DeleteRotatableDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v6, Lcom/lge/camera/dialog/DeleteRotatableDialog$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/DeleteRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/DeleteRotatableDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void

    .line 38
    .end local v3    # "stringId":I
    :cond_0
    const v3, 0x7f0a02e2

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/lge/camera/dialog/RotateDialog;->onDismiss()V

    .line 66
    iget-object v0, p0, Lcom/lge/camera/dialog/DeleteRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->closeGalleryQuickView(Z)V

    .line 67
    return-void
.end method

.method public onDismiss(Z)V
    .locals 1
    .param p1, "clickOk"    # Z

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/lge/camera/dialog/DeleteRotatableDialog;->onDismiss()V

    .line 71
    iget-object v0, p0, Lcom/lge/camera/dialog/DeleteRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->closeGalleryQuickView(Z)V

    .line 72
    return-void
.end method
