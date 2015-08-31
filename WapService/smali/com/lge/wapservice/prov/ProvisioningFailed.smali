.class public Lcom/lge/wapservice/prov/ProvisioningFailed;
.super Landroid/app/Activity;
.source "ProvisioningFailed.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static startProvisioningFailedDialog(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Dialogid"    # I

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/wapservice/prov/ProvisioningFailed;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dialogid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningFailed;->finish()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/lge/wapservice/prov/ProvisioningFailed;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialogid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/prov/ProvisioningFailed;->mDialogId:I

    .line 43
    iget v0, p0, Lcom/lge/wapservice/prov/ProvisioningFailed;->mDialogId:I

    invoke-virtual {p0, v0}, Lcom/lge/wapservice/prov/ProvisioningFailed;->showDialog(I)V

    .line 44
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 69
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070001

    new-instance v2, Lcom/lge/wapservice/prov/ProvisioningFailed$1;

    invoke-direct {v2, p0}, Lcom/lge/wapservice/prov/ProvisioningFailed$1;-><init>(Lcom/lge/wapservice/prov/ProvisioningFailed;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningFailed;->mDialog:Landroid/app/Dialog;

    .line 63
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningFailed;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningFailed;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
