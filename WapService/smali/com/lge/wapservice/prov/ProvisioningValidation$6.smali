.class Lcom/lge/wapservice/prov/ProvisioningValidation$6;
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
    .line 201
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$6;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$6;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningNotification;->clearNotification(Landroid/content/Context;)V

    .line 205
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$6;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 207
    .local v0, "input":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$6;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mUserSuppliedPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$600(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$6;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-virtual {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->finish()V

    .line 212
    return-void
.end method
