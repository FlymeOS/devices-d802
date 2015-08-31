.class Lcom/lge/wapservice/prov/ProvisioningValidation$5;
.super Ljava/lang/Object;
.source "ProvisioningValidation.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 174
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$5;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "bView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 177
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$5;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mVisibleUserPin:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$500(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 179
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$5;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$600(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 180
    .local v0, "currentPos":I
    if-eqz p2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$5;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$600(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x92

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$5;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$600(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 189
    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$5;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$600(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method
