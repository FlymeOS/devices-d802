.class public Lcom/lge/camera/dialog/EulaPopupRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "EulaPopupRotatableDialog.java"


# instance fields
.field private mDoNotShowAgain:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/dialog/EulaPopupRotatableDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    return p1
.end method


# virtual methods
.method public create()V
    .locals 8

    .prologue
    .line 41
    iget-object v6, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f030037

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v5

    .line 42
    .local v5, "v":Landroid/view/View;
    const v6, 0x7f0d00bb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 43
    .local v4, "titleText":Landroid/widget/TextView;
    const v6, 0x7f0d00c1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, "messageText":Landroid/widget/TextView;
    const v6, 0x7f0d00c4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, "btnOk":Landroid/widget/Button;
    const v6, 0x7f0d01c4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, "btnCancel":Landroid/widget/Button;
    const v6, 0x7f0d0068

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 48
    .local v2, "checkboxText":Landroid/widget/CheckBox;
    const v6, 0x7f0a0234

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 49
    const v6, 0x7f0a0236

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 51
    const v6, 0x7f0a0235

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 52
    const v6, 0x7f0a002f

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 53
    const v6, 0x7f0a003a

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 54
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 56
    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    invoke-super {p0, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 74
    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$4;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$4;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
