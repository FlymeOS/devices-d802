.class Lcom/lge/wapservice/prov/ProvisioningValidation$4;
.super Ljava/lang/Object;
.source "ProvisioningValidation.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 158
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$4;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 160
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$4;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mOk:Landroid/widget/Button;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$300(Lcom/lge/wapservice/prov/ProvisioningValidation;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$4;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # invokes: Lcom/lge/wapservice/prov/ProvisioningValidation;->pinEntered()Z
    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$400(Lcom/lge/wapservice/prov/ProvisioningValidation;)Z

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method
