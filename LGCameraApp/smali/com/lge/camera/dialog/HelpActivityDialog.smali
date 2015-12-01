.class public Lcom/lge/camera/dialog/HelpActivityDialog;
.super Ljava/lang/Object;
.source "HelpActivityDialog.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mCameraId:I

.field private mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

.field private mImgResource:I

.field private mMessage:Ljava/lang/String;

.field protected mOrientation:I

.field private mTitle:Ljava/lang/String;

.field private selectedPopupId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mOrientation:I

    .line 32
    iput-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mTitle:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mMessage:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mImgResource:I

    .line 35
    iput v2, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mCameraId:I

    .line 36
    iput v1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->selectedPopupId:I

    .line 37
    iput-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    .line 40
    iput-object p1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-static {}, Lcom/lge/camera/util/DialogCreater;->makeHelpDialog()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cameraId"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/HelpActivityDialog;-><init>(Landroid/app/Activity;)V

    .line 46
    iput p2, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mCameraId:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/HelpActivityDialog;)Lcom/lge/camera/dialog/CustomAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/dialog/HelpActivityDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    return-object v0
.end method


# virtual methods
.method public create(II)V
    .locals 10
    .param p1, "whichPopup"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    invoke-static {p1}, Lcom/lge/camera/util/DialogCreater;->getHelpPopupID(I)I

    move-result v7

    iget v8, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mCameraId:I

    invoke-static {v7, v8}, Lcom/lge/camera/util/DialogCreater;->getHelpItemResources(II)[I

    move-result-object v0

    .line 53
    .local v0, "helpResources":[I
    if-eqz p2, :cond_0

    if-ne p2, v9, :cond_5

    :cond_0
    move v1, v6

    .line 54
    .local v1, "imgLevel":I
    :goto_0
    iget-object v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    aget v8, v0, v5

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mTitle:Ljava/lang/String;

    .line 55
    iget-object v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    aget v8, v0, v6

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mMessage:Ljava/lang/String;

    .line 56
    aget v7, v0, v9

    iput v7, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mImgResource:I

    .line 57
    iput p1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->selectedPopupId:I

    .line 59
    invoke-static {p1}, Lcom/lge/camera/util/DialogCreater;->getHelpPopupID(I)I

    move-result v7

    const/16 v8, 0x6a

    if-ne v7, v8, :cond_6

    move v3, v6

    .line 62
    .local v3, "isVoiceShutterGuideViewNeeded":Z
    :goto_1
    new-instance v5, Lcom/lge/camera/dialog/CustomAlertDialog;

    iget-object v6, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, p2}, Lcom/lge/camera/dialog/CustomAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    .line 64
    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v5}, Lcom/lge/camera/dialog/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x480000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 70
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    iget-object v6, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/camera/dialog/CustomAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    iget-object v6, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/camera/dialog/CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    iget v6, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mImgResource:I

    invoke-virtual {v5, v6, v1}, Lcom/lge/camera/dialog/CustomAlertDialog;->setMessageImage(II)V

    .line 73
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v5, v3}, Lcom/lge/camera/dialog/CustomAlertDialog;->setVoiceShutterVisibility(Z)V

    .line 74
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v5}, Lcom/lge/camera/dialog/CustomAlertDialog;->show()V

    .line 76
    if-eqz p2, :cond_2

    if-ne p2, v9, :cond_3

    .line 77
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    const v6, 0x7f0d00b9

    invoke-virtual {v5, v6}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 78
    .local v2, "innerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v5}, Lcom/lge/camera/dialog/CustomAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/lge/camera/util/DialogCreater;->getHorizontalHelpDialogWidth(Landroid/content/Context;Z)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 81
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .end local v2    # "innerLayout":Landroid/widget/LinearLayout;
    .end local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    if-eqz v3, :cond_4

    .line 85
    iget-object v5, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    new-instance v6, Lcom/lge/camera/dialog/HelpActivityDialog$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/HelpActivityDialog$1;-><init>(Lcom/lge/camera/dialog/HelpActivityDialog;)V

    invoke-virtual {v5, v6}, Lcom/lge/camera/dialog/CustomAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 102
    :cond_4
    return-void

    .end local v1    # "imgLevel":I
    .end local v3    # "isVoiceShutterGuideViewNeeded":Z
    :cond_5
    move v1, v5

    .line 53
    goto/16 :goto_0

    .restart local v1    # "imgLevel":I
    :cond_6
    move v3, v5

    .line 59
    goto :goto_1
.end method

.method public dismissHelpDialog()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->dismiss()V

    .line 113
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->isShowing()Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshDialog(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/dialog/HelpActivityDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/lge/camera/dialog/HelpActivityDialog;->dismissHelpDialog()V

    .line 126
    iget v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->selectedPopupId:I

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/dialog/HelpActivityDialog;->create(II)V

    .line 128
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unbind()V

    .line 134
    iput-object v1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mDialog:Lcom/lge/camera/dialog/CustomAlertDialog;

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/dialog/HelpActivityDialog;->mActivity:Landroid/app/Activity;

    .line 137
    return-void
.end method
