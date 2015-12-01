.class public Lcom/lge/camera/dialog/StoragePopupRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "StoragePopupRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 42
    return-void
.end method

.method private OnPositiveButtonClick()V
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "mVoiceShutterValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 89
    .end local v0    # "mVoiceShutterValue":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStorageMessageId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 90
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_storage"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_storage"

    const-string v3, "external memory"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetStorage"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_storage"

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/StoragePopupRotatableDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/dialog/StoragePopupRotatableDialog;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->OnPositiveButtonClick()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 45
    iget-object v8, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f030036

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v7

    .line 46
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f0d00bb

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 47
    .local v6, "titleText":Landroid/widget/TextView;
    const v8, 0x7f0d00c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "messageText":Landroid/widget/TextView;
    const v8, 0x7f0d00c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 49
    .local v1, "btnOk":Landroid/widget/Button;
    const v8, 0x7f0d01c4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, "btnCancel":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x1

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 54
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    const v8, 0x7f0a0057

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v8, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getStoragePopupMessage()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    .line 62
    .local v5, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v5, v10, v10}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 65
    .end local v5    # "scrollView":Landroid/widget/ScrollView;
    :cond_0
    iget-object v8, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v9, 0x7f0a002f

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v8, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;

    invoke-direct {v8, p0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/StoragePopupRotatableDialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-super {p0, v7}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 77
    return-void
.end method
