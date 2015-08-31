.class Lcom/lge/wapservice/prov/ProvisioningValidation$7;
.super Ljava/lang/Object;
.source "ProvisioningValidation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 216
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$7;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$7;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 220
    .local v0, "input":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$7;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$600(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$7;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # invokes: Lcom/lge/wapservice/prov/ProvisioningValidation;->pinEntered()Z
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$400(Lcom/lge/wapservice/prov/ProvisioningValidation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$7;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getSimID()I

    move-result v2

    # invokes: Lcom/lge/wapservice/prov/ProvisioningValidation;->storeProvision(I)V
    invoke-static {v1, v2}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$700(Lcom/lge/wapservice/prov/ProvisioningValidation;I)V

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$7;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/wapservice/prov/ProvisioningValidation;->showInstallResult(Landroid/content/Context;Z)V

    .line 235
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$7;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-virtual {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->finish()V

    .line 237
    :cond_1
    return-void

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$7;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # invokes: Lcom/lge/wapservice/prov/ProvisioningValidation;->storeProvision(I)V
    invoke-static {v1, v3}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$700(Lcom/lge/wapservice/prov/ProvisioningValidation;I)V

    goto :goto_0
.end method
