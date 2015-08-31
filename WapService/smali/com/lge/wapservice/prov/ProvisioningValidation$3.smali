.class Lcom/lge/wapservice/prov/ProvisioningValidation$3;
.super Ljava/lang/Object;
.source "ProvisioningValidation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 133
    iput-object p1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$3;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$3;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->nRemainNum:I
    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$000(Lcom/lge/wapservice/prov/ProvisioningValidation;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$3;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mMsgUriString:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$200(Lcom/lge/wapservice/prov/ProvisioningValidation;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$3;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-virtual {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$3;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    # getter for: Lcom/lge/wapservice/prov/ProvisioningValidation;->mMsgUriString:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningValidation;->access$200(Lcom/lge/wapservice/prov/ProvisioningValidation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/wapservice/utils/DBManager;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$3;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-static {v0, v3}, Lcom/lge/wapservice/prov/ProvisioningValidation;->showInstallResult(Landroid/content/Context;Z)V

    .line 147
    iget-object v0, p0, Lcom/lge/wapservice/prov/ProvisioningValidation$3;->this$0:Lcom/lge/wapservice/prov/ProvisioningValidation;

    invoke-virtual {v0}, Lcom/lge/wapservice/prov/ProvisioningValidation;->finish()V

    .line 150
    :cond_1
    return v3
.end method
