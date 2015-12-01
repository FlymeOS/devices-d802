.class public Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "StorageSelectionPopupRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 38
    return-void
.end method

.method private OnPositiveButtonClick()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    const-string v2, "external memory"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetStorage"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->OnPositiveButtonClick()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 7

    .prologue
    .line 41
    iget-object v5, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f030036

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v4

    .line 42
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f0d00bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 43
    .local v3, "titleText":Landroid/widget/TextView;
    const v5, 0x7f0d00c1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, "messageText":Landroid/widget/TextView;
    const v5, 0x7f0d00c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, "btnOk":Landroid/widget/Button;
    const v5, 0x7f0d01c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "btnCancel":Landroid/widget/Button;
    const v5, 0x7f0a011b

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 48
    const v5, 0x7f0a007d

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object v5, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0a002f

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v5, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0a003a

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v5, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v5, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const/4 v5, 0x0

    invoke-super {p0, v4, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;Z)V

    .line 73
    return-void
.end method
