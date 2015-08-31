.class public Lcom/lge/wapservice/utils/ReceiveDialog;
.super Landroid/app/Activity;
.source "ReceiveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private document:[B

.field private mAppid:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogId:I

.field private mPopupMsg:Ljava/lang/String;

.field private mUnreadMsgCnt:I

.field private mUpdateResult:Z

.field private mac:Ljava/lang/String;

.field private msguri:Ljava/lang/String;

.field private phoneId:I

.field private sec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mUnreadMsgCnt:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mPopupMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/wapservice/utils/ReceiveDialog;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/utils/ReceiveDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->document:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/wapservice/utils/ReceiveDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/utils/ReceiveDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->sec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/wapservice/utils/ReceiveDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/utils/ReceiveDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/wapservice/utils/ReceiveDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/utils/ReceiveDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->msguri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/wapservice/utils/ReceiveDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/wapservice/utils/ReceiveDialog;

    .prologue
    .line 26
    iget v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->phoneId:I

    return v0
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 190
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getApplicationContext()Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/lge/wapservice/utils/ReceiveDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 191
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 193
    invoke-static {}, Lcom/lge/wapservice/utils/LgeUtils;->isEmotionalLEDSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/LgeUtils;->stopEmotionalLEDService(Landroid/content/Context;I)V

    .line 196
    :cond_0
    return-void
.end method

.method private generatePopupMsg()Ljava/lang/String;
    .locals 8

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "popupMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f070075

    invoke-virtual {p0, v4}, Lcom/lge/wapservice/utils/ReceiveDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "strBuf":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mAppid:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mAppid:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "appList":[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_0

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 179
    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "appList":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const v4, 0x7f070076

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f070077

    invoke-virtual {p0, v7}, Lcom/lge/wapservice/utils/ReceiveDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/lge/wapservice/utils/ReceiveDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    return-object v2
.end method

.method private setIntentValue(I)V
    .locals 3
    .param p1, "mDialogId"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->document:[B

    .line 147
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->sec:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mac:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msguri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->msguri:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->phoneId:I

    .line 153
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mAppid:Ljava/lang/String;

    .line 154
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ReceiveDialog>  onCreate ID_NOTIFICATION_DIALOG document : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->document:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->sec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mac : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msguri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->msguri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAppid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mAppid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->clearNotification()V

    goto/16 :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "updateResult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mUpdateResult:Z

    .line 161
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unreadMsg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mUnreadMsgCnt:I

    .line 162
    const-string v0, "WapService"

    const-string v1, "<ReceiveDialog> onCreate ID_MOVE_TO_MSG_DIALOG"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static startMoveToMsgDialog(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateResult"    # Z

    .prologue
    const/4 v3, 0x1

    .line 199
    sget-object v2, Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;->PROV_CFG_RECEIVE_NOTI_POPUP:Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;

    invoke-static {v2}, Lcom/lge/wapservice/prov/ProvisioningOpCfgManager;->getIntValue(Lcom/lge/wapservice/prov/ProvisioningOpCfgItem;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 200
    invoke-static {p0}, Lcom/lge/wapservice/utils/DBManager;->GetUnreadOTAMessage(Landroid/content/Context;)I

    move-result v1

    .line 202
    .local v1, "unreadMsg":I
    if-lez v1, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lge/wapservice/utils/ReceiveDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "dialogid"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v2, "updateResult"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    const-string v2, "unreadMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "unreadMsg":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->finish()V

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialogid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialogId:I

    .line 53
    iget v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialogId:I

    invoke-direct {p0, v0}, Lcom/lge/wapservice/utils/ReceiveDialog;->setIntentValue(I)V

    .line 54
    iget v0, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialogId:I

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/utils/ReceiveDialog;->showDialog(I)V

    .line 56
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const v8, 0x7f070077

    const v7, 0x7f070072

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    iget v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialogId:I

    packed-switch v1, :pswitch_data_0

    .line 134
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 63
    :pswitch_0
    invoke-direct {p0}, Lcom/lge/wapservice/utils/ReceiveDialog;->generatePopupMsg()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "popupMsg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070079

    new-instance v3, Lcom/lge/wapservice/utils/ReceiveDialog$2;

    invoke-direct {v3, p0}, Lcom/lge/wapservice/utils/ReceiveDialog$2;-><init>(Lcom/lge/wapservice/utils/ReceiveDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070078

    new-instance v3, Lcom/lge/wapservice/utils/ReceiveDialog$1;

    invoke-direct {v3, p0}, Lcom/lge/wapservice/utils/ReceiveDialog$1;-><init>(Lcom/lge/wapservice/utils/ReceiveDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialog:Landroid/app/Dialog;

    .line 93
    iget-object v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    iget-object v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 97
    .end local v0    # "popupMsg":Ljava/lang/String;
    :pswitch_1
    iget-boolean v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mUpdateResult:Z

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07007a

    invoke-virtual {p0, v2}, Lcom/lge/wapservice/utils/ReceiveDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f07007e

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mUnreadMsgCnt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v8}, Lcom/lge/wapservice/utils/ReceiveDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/lge/wapservice/utils/ReceiveDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mPopupMsg:Ljava/lang/String;

    .line 103
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mPopupMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070079

    new-instance v3, Lcom/lge/wapservice/utils/ReceiveDialog$4;

    invoke-direct {v3, p0}, Lcom/lge/wapservice/utils/ReceiveDialog$4;-><init>(Lcom/lge/wapservice/utils/ReceiveDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070078

    new-instance v3, Lcom/lge/wapservice/utils/ReceiveDialog$3;

    invoke-direct {v3, p0}, Lcom/lge/wapservice/utils/ReceiveDialog$3;-><init>(Lcom/lge/wapservice/utils/ReceiveDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialog:Landroid/app/Dialog;

    .line 126
    iget-object v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    iget-object v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 101
    :cond_0
    const v1, 0x7f07007e

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mUnreadMsgCnt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/lge/wapservice/utils/ReceiveDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/lge/wapservice/utils/ReceiveDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/wapservice/utils/ReceiveDialog;->mPopupMsg:Ljava/lang/String;

    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
