.class public Lcom/lge/camera/dialog/MassStorageRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "MassStorageRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 29
    return-void
.end method


# virtual methods
.method public create()V
    .locals 8

    .prologue
    .line 33
    iget-object v6, p0, Lcom/lge/camera/dialog/MassStorageRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f030036

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v5

    .line 34
    .local v5, "v":Landroid/view/View;
    if-nez v5, :cond_0

    .line 70
    :goto_0
    return-void

    .line 37
    :cond_0
    const v6, 0x7f0d00bb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    .local v4, "titleText":Landroid/widget/TextView;
    const v6, 0x7f0d00c1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 39
    .local v2, "messageText":Landroid/widget/TextView;
    const v6, 0x7f0d00c4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 40
    .local v1, "btnOk":Landroid/widget/Button;
    const v6, 0x7f0d01c4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, "btnCancel":Landroid/widget/Button;
    const v6, 0x7f0a004d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const v6, 0x7f0a004e

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v6, 0x7f0a002f

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 47
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 49
    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    invoke-super {p0, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 55
    new-instance v6, Lcom/lge/camera/dialog/MassStorageRotatableDialog$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/MassStorageRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/MassStorageRotatableDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/lge/camera/dialog/RotateDialog;->onDismiss()V

    .line 75
    iget-object v0, p0, Lcom/lge/camera/dialog/MassStorageRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    return-void
.end method
