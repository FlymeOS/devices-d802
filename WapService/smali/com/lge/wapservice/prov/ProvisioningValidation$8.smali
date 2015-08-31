.class Lcom/lge/wapservice/prov/ProvisioningValidation$8;
.super Ljava/lang/Object;
.source "ProvisioningValidation.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 247
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$8;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 250
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 254
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$8;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mMinPinLength:I
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$800(Lcom/lge/wapservice/prov/ProvisioningValidation;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$8;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$300(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 259
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$8;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$300(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$8;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$300(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 262
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$8;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$300(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
