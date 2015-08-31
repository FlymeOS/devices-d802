.class Lcom/lge/wapservice/prov/ProvisioningValidation$1;
.super Ljava/lang/Object;
.source "ProvisioningValidation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/prov/ProvisioningValidation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/prov/ProvisioningValidation;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$000(Lcom/lge/wapservice/prov/ProvisioningValidation;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$1;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # invokes: Lcom/lge/wapservice/prov/ProvisioningValidation;->showVirturalKeyboard()V
    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$100(Lcom/lge/wapservice/prov/ProvisioningValidation;)V

    .line 107
    return-void
.end method
