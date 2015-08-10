.class public final Lcom/android/nfc/utils/LNfcPopupDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "LNfcPopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_NFC_POPUP:Ljava/lang/String; = "com.lge.nfc.action.NFC_POPUP"

.field private static final DBG:Z

.field public static final EXTRA_NFC_POPUP_CHECKBOX:Ljava/lang/String; = "com.lge.nfc.extra.popup_checkbox"

.field public static final EXTRA_NFC_POPUP_INFORMATION:Ljava/lang/String; = "com.lge.nfc.extra.POPUP_INFORMATION"

.field public static final EXTRA_NFC_POPUP_INNERINTENT:Ljava/lang/String; = "com.lge.nfc.extra.popup_innerIntent"

.field private static final TAG:Ljava/lang/String; = "LNfcPopupDialog"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mIsCheck:Z

.field private mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 40
    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/utils/LNfcPopupDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupDialog;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/nfc/utils/LNfcPopupDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/utils/LNfcPopupDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    return p1
.end method

.method private createNotifyDialog(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positiveButtonToken"    # I
    .param p4, "isTitleIcon"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 144
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    if-eqz p4, :cond_0

    .line 145
    sget v1, Lcom/lge/R$drawable;->ic_dialog_alert_holo:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 148
    :cond_0
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 149
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->createView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 150
    invoke-virtual {p0, p3}, Lcom/android/nfc/utils/LNfcPopupDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 151
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 152
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->setupAlert()V

    .line 153
    return-void
.end method

.method private createSelectionDialog(Ljava/lang/String;Ljava/lang/String;ZIIZ)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "checkboxEnable"    # Z
    .param p4, "positiveButtonToken"    # I
    .param p5, "negativeButtonToken"    # I
    .param p6, "isTitleIcon"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 129
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    if-eqz p6, :cond_0

    .line 130
    sget v1, Lcom/lge/R$drawable;->ic_dialog_alert_holo:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 133
    :cond_0
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 134
    invoke-direct {p0, p2, p3}, Lcom/android/nfc/utils/LNfcPopupDialog;->createView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 135
    invoke-virtual {p0, p4}, Lcom/android/nfc/utils/LNfcPopupDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 136
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    invoke-virtual {p0, p5}, Lcom/android/nfc/utils/LNfcPopupDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 138
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->setupAlert()V

    .line 140
    return-void
.end method

.method private createView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "checkboxEnable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f030003

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 90
    :cond_0
    const-string v3, "LNfcPopupDialog"

    const-string v5, "view or message is null"

    invoke-static {v3, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 124
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 93
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    const v3, 0x7f090005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .local v1, "messageView":Landroid/widget/TextView;
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 95
    if-eqz v1, :cond_2

    .line 96
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_3

    .line 102
    sget-boolean v3, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v5, "LNfcPopupDialog"

    const-string v6, "mCheckBox is null"

    invoke-static {v3, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 103
    goto :goto_0

    .line 98
    :cond_2
    sget-boolean v3, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v5, "LNfcPopupDialog"

    const-string v6, "messageView is null"

    invoke-static {v3, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_3
    if-eqz p2, :cond_4

    .line 107
    iget-object v3, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/nfc/utils/LNfcPopupDialog$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/utils/LNfcPopupDialog$1;-><init>(Lcom/android/nfc/utils/LNfcPopupDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 120
    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v0, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 121
    .local v0, "layout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v3, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 193
    packed-switch p2, :pswitch_data_0

    .line 224
    sget-boolean v1, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v2, "LNfcPopupDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 195
    :pswitch_0
    sget-boolean v1, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v2, "LNfcPopupDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : NEGATIVE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lge.nfc.extra.popup_checkbox"

    iget-boolean v2, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->IsNegativeButtonIntentActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 205
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    iput-object v5, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 206
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    goto :goto_0

    .line 202
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 210
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    sget-boolean v1, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v2, "LNfcPopupDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : POSITIVE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonIntent()Landroid/content/Intent;

    move-result-object v0

    .line 213
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.lge.nfc.extra.popup_checkbox"

    iget-boolean v2, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->IsPositiveButtonIntentActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_2
    iput-object v5, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 221
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    goto/16 :goto_0

    .line 217
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v1}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcPopupDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 193
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v3, "LNfcPopupDialog"

    const-string v4, "onCreate"

    invoke-static {v0, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 50
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_0

    const-string v0, "com.lge.nfc.action.NFC_POPUP"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    :cond_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v3, "LNfcPopupDialog"

    const-string v4, "Error: this activity may be started only with intent com.lge.nfc.action.NFC_POPUP"

    invoke-static {v0, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    const-string v0, "com.lge.nfc.extra.POPUP_INFORMATION"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 59
    .local v7, "infor":Lcom/android/nfc/utils/LNfcPopupInformation;
    if-eqz v7, :cond_1

    .line 63
    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "message":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    .line 67
    :cond_3
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v3, "LNfcPopupDialog"

    const-string v4, "Error : title or message is null"

    invoke-static {v0, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->finish()V

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 73
    .local v9, "window":Landroid/view/Window;
    const/high16 v0, 0x200000

    invoke-virtual {v9, v0}, Landroid/view/Window;->addFlags(I)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    .line 76
    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->getSelectPopup()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 77
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v3, "LNfcPopupDialog"

    const-string v4, "NFC_OPTION_SELECTION"

    invoke-static {v0, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object v7, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 79
    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->getDefaultCheckbox()Z

    move-result v3

    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonToken()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonToken()I

    move-result v5

    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->isTitleIconEnable()Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/utils/LNfcPopupDialog;->createSelectionDialog(Ljava/lang/String;Ljava/lang/String;ZIIZ)V

    goto :goto_0

    .line 81
    :cond_5
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupDialog;->DBG:Z

    const-string v3, "LNfcPopupDialog"

    const-string v4, "NFC_OPTION_SELECTION is false"

    invoke-static {v0, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object v7, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 83
    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->getPositiveButtonToken()I

    move-result v0

    invoke-virtual {v7}, Lcom/android/nfc/utils/LNfcPopupInformation;->isTitleIconEnable()Z

    move-result v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/nfc/utils/LNfcPopupDialog;->createNotifyDialog(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 158
    return-void
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 162
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    if-nez v4, :cond_0

    .line 163
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 190
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getCancelButtonIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 168
    .local v1, "isCancelIntentUsed":Z
    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getCancelButtonIntent()Landroid/content/Intent;

    move-result-object v2

    .line 171
    .local v2, "sendIntent":Landroid/content/Intent;
    :goto_2
    if-nez v2, :cond_3

    .line 172
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    goto :goto_0

    .line 167
    .end local v1    # "isCancelIntentUsed":Z
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    .restart local v1    # "isCancelIntentUsed":Z
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_2

    .line 176
    .restart local v2    # "sendIntent":Landroid/content/Intent;
    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getCancelButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 178
    .local v3, "userId":Landroid/os/UserHandle;
    :goto_3
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->IsCancelButtonIntentActivity()Z

    move-result v0

    .line 180
    .local v0, "isActivity":Z
    :goto_4
    const-string v4, "com.lge.nfc.extra.popup_checkbox"

    iget-boolean v5, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mIsCheck:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    if-eqz v0, :cond_6

    .line 183
    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/utils/LNfcPopupDialog;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 188
    :goto_5
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    .line 189
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    goto :goto_0

    .line 176
    .end local v0    # "isActivity":Z
    .end local v3    # "userId":Landroid/os/UserHandle;
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->getNegativeButtonIntentUser()Landroid/os/UserHandle;

    move-result-object v3

    goto :goto_3

    .line 178
    .restart local v3    # "userId":Landroid/os/UserHandle;
    :cond_5
    iget-object v4, p0, Lcom/android/nfc/utils/LNfcPopupDialog;->mSavePopupInfor:Lcom/android/nfc/utils/LNfcPopupInformation;

    invoke-virtual {v4}, Lcom/android/nfc/utils/LNfcPopupInformation;->IsNegativeButtonIntentActivity()Z

    move-result v0

    goto :goto_4

    .line 185
    .restart local v0    # "isActivity":Z
    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/utils/LNfcPopupDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5
.end method
