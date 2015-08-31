.class Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;
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
    .line 69
    iput-object p1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    invoke-static {v1}, Lcom/lge/wapservice/prov/ProvisioningNotification;->clearNotification(Landroid/content/Context;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "db_params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "MSG_TYPE"

    const-string v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "BODY"

    iget-object v2, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    # getter for: Lcom/lge/wapservice/prov/StoreProvisioningActivity;->msgString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->access$300(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "SEC"

    iget-object v2, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    # getter for: Lcom/lge/wapservice/prov/StoreProvisioningActivity;->secString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->access$000(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "MAC"

    iget-object v2, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    # getter for: Lcom/lge/wapservice/prov/StoreProvisioningActivity;->macString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->access$100(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "DOC"

    iget-object v2, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    # getter for: Lcom/lge/wapservice/prov/StoreProvisioningActivity;->wbxmlDocument:[B
    invoke-static {v2}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->access$200(Lcom/lge/wapservice/prov/StoreProvisioningActivity;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/lge/wapservice/utils/LgeUtils;->hexConvert([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    invoke-virtual {v1}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Lcom/lge/wapservice/utils/DBManager;->insert(Landroid/content/Context;ILandroid/net/Uri;Ljava/util/HashMap;)Landroid/net/Uri;

    .line 87
    iget-object v1, p0, Lcom/lge/wapservice/prov/StoreProvisioningActivity$2;->this$0:Lcom/lge/wapservice/prov/StoreProvisioningActivity;

    invoke-virtual {v1}, Lcom/lge/wapservice/prov/StoreProvisioningActivity;->finish()V

    .line 89
    return-void
.end method
