.class public Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "InitializeConfigRotatableDialog.java"


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
    .locals 7

    .prologue
    .line 33
    iget-object v5, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f030036

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v4

    .line 34
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f0d00bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 35
    .local v3, "titleText":Landroid/widget/TextView;
    const v5, 0x7f0d00c1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, "messageText":Landroid/widget/TextView;
    const v5, 0x7f0d00c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 37
    .local v1, "btnOk":Landroid/widget/Button;
    const v5, 0x7f0d01c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, "btnCancel":Landroid/widget/Button;
    const v5, 0x7f0a0039

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const v5, 0x7f0a0033

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 40
    const v5, 0x7f0a003b

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 41
    const v5, 0x7f0a003c

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 43
    invoke-super {p0, v4}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 45
    new-instance v5, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v5, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method
