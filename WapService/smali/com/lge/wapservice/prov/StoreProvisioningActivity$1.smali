.class Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;
.super Ljava/lang/Object;
.source "StoreProvisioningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wapservice/prov/StoreProvisioningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;


# direct methods
.method constructor <init>(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    sget-object v0, Lcom/lge/wapservice/prov/ProvisioningDocParse;->mProvisioningDocument:Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    invoke-virtual {v0}, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isDocumentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    iget-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    # getter for: Lcom/lge/wapservice/prov/StoreProvisioningActivity;->secString:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->access$000(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    # getter for: Lcom/lge/wapservice/prov/StoreProvisioningActivity;->macString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->access$100(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    # getter for: Lcom/lge/wapservice/prov/StoreProvisioningActivity;->wbxmlDocument:[B
    invoke-static {v3}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->access$200(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lge/wapservice/prov/ProvisioningValidation;->provisionValidation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    invoke-static {v0}, Lcom/lge/wapservice/prov/ProvisioningNotification;->clearNotification(Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$1;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    invoke-virtual {v0}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->finish()V

    .line 67
    return-void

    .line 63
    :cond_0
    const-string v0, "WapService"

    const-string v1, "<WbxmlWapProvisioningDocParser> isDocumentValid return false"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
